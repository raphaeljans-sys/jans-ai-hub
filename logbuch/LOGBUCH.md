# JANS AI Hub — Logbuch

Append-only Journal der Kontroll-Schicht. Neueste Eintraege zuoberst. Nie von Hand kuerzen;
der Agent `logbuch` schreibt, der Radar ergaenzt taeglich.

---

## 2026-07-29

**Hub-Chef-Lauf (08:39, planmaessig) — MIT Befund, Briefing versendet.** Signale gegenverifiziert
nach dem Radar-Briefing von 07:07: Fristen-Register + Logbuch (7-Tage-Horizont), Konversations-
Destillat 29.07., `mail-vorfilter.sh 26` ueber alle Apple-Mail-Konten (Exchange, mail@, iCloud,
raphaeljans@outlook.com; Posteingang + Gesendete Elemente), die relevanten Threads danach im
Original samt **Anhaengen** geoeffnet, bexio `--verzug` + `--abgleich`, M365-Kalender 8 Tage,
Sync- und Remote-Task-Queues (beide leer), Entwurfsordner. Kein neuer Mail-Eingang seit gestern
17:12; das Briefing traegt nur, was der Radar nicht hatte.
**Befund 1 — das ueberarbeitete Roethlisberger-Angebot ist geprueft, und die Beanstandung faellt
zu Gunsten des Unternehmers aus.** Der Radar meldete nur «Positionsliste zur Pruefung
eingegangen». Der Anhang (`Therapiekueche KISPI ueberarbeitet 28.07.2026 O.A2628001.pdf`) wurde
geoeffnet und nachgerechnet: Position 1.2 loest sich vollstaendig auf in Moebel CHF 9'296.65,
Tekton-Abdeckung CHF 5'940.00, Armatur/Becken CHF 1'157.35, Geraete inkl. Holzdoppel
CHF 19'216.00 und Einbauplanung/Montage CHF 1'340.00 = CHF 36'950.00. Der beanstandete Sprung
kommt aus der **Schreinerarbeit**, nicht aus den Geraeten: Rational iCombi Pro XS 6-2/3 inkl.
Kondensationshaube CHF 13'164.00 gegen RJs Annahme CHF 17'300.00, Kuehlkorpus Elit CHF 5'712.00
gegen CHF 6'500.00 — zusammen rund CHF 4'900 **unter** der eigenen Einschaetzung. Die
Hochschraenke sind wie verlangt als Option ausgewiesen (9 Stk. à CHF 990.00) und nicht im Total.
Nach 3 % Rabatt betraegt das Zwischentotal **CHF 71'263.95 exkl. MwSt** gegen ein Rahmenbudget
von CHF 70'000.00 — **Differenz CHF 1'263.95**, und Lanz erwartet naechste Woche bessere
Lieferantenkonditionen.
**Befund 2 — die offene Frage des Radars ist geschlossen:** die Huwiler-Retour traegt genau zwei
Anhaenge, `re-00100.pdf` und das Stundenblatt Mai/Juni. Eine zweite Rechnung liegt **nicht** bei;
«bei beiden Rechnungen pruefen» stammt aus der Ankreuz-Vorlage. Neu auszustellen ist allein
RE-00100.
**Befund 3 — die eBaugesucheZH-Session ist abgelaufen** (`--liste` bricht mit HTTP 401 ab). Die
zwei Portal-Aktionen vom 28.07. bleiben ohne interaktiven `--login` (Mobile ID) unzuordenbar.
**Befund 4 (Betrieb):** `diagnose-fix-bare` heute 04:14 mit «OAuth session expired and could not
be refreshed» abgebrochen (rc=1); eine Vollgas-Fruehwarnung ist heute nicht gemailt worden.
**Aktionen:** **A5** — ein Mail-Entwurf an S. Lanz + T. Inniger (Cc Spahic/Spoerri/Wuersch) mit
der geprueften Herleitung, der Budgetdifferenz und der Bestaetigung der Frist 03.08. liegt als
Draft im Postfach, NICHT versendet; QS `rechtschreibung` gelb und `layout` gelb (Befunde
eingearbeitet), twin-chef Fidelity 76 → 88 nach einer Veredelungsrunde. Dabei eine Korrektur am
Twin-Vorschlag: der Chef wollte die Zusammensetzung der Position 1.2 bei Lanz **erfragen** — der
Beleg beantwortet sie bereits vollstaendig, die Frage waere unsorgfaeltig gewesen und wurde durch
die verifizierte Herleitung ersetzt. **A4** — Fristen-Register und dieser Eintrag.
**Guards / bewusst unterlassen:** **A1** nicht qualifiziert (RE-00087 auf Mahnstufe 2 = per
Whitelist immer nur Entwurf; RE-00098/99 in laufender Frist bis 03.08.; RE-00100 retourniert,
kein Verzug; RE-00101 faellig erst 31.07.). **A2** nicht noetig. Keine Zahlung, keine Buchung,
keine Loeschung, kein Versand ausser dem Briefing. Kein `git` ueber SMB (nativer Committer).
Ausserdem im Briefing geliefert: der vom Methoden-Layer bestellte **Priorisierungsvorschlag zur
4-Agenten-Blaupause** (Indexer zuerst, QA-Trace zweitens, Baueingabe-Check anlassgebunden,
Brandschutz-Matrix als Erweiterung von `brandschutz` statt als eigener Skill) — Bauentscheid
bleibt bei Raphael.

**Logbuch-Radar 06:55 (planmaessig, mit Befund) — der Radar laeuft nach dem Mount-Ausfall
vom Vortag wieder.** Quellen: Register + Journal, Konversations-Destillat 29.07.,
`mail-vorfilter.sh 26` ueber alle Apple-Mail-Konten, die relevanten Threads danach im
Original samt Anhaengen, bexio `--verzug`, M365-Kalender, Sync- und Remote-Queues (leer).
**Erledigt seit gestern:** der Verfahrensweg der Auflage II.1.b) im Bauentscheid 1171/26 ist
geklaert (L. Furrer, AFB, 28.07. 12:13: keine Abaenderungsplaene, nicht ueber eBaugesuche,
es genuegt die Bestaetigung der Feuerpolizei) und die vier Dokumente sind zugestellt —
Download von M. Gantenbein am 29.07. 06:51 quittiert. Der Termin Koordination LBW/Innere
Verglasung mit O. Stadelmann ist verstrichen und archiviert.
**Neu und wichtig:** **RE-00100 (CHF 13'120, faellig 30.07.) wurde von der Kreditorenstelle
Huwiler Services AG am 28.07. 16:47 retourniert und geloescht** — formell mangelhaft, keine
Zahlung vor Eingang einer korrigierten PDF an `260kredi@huwiler.ch`. Am Beleg geprueft:
MWST mit 0.00 % ausgewiesen, keine MWST-Nummer, Empfaenger Nova statt der Eigentuemerschaft
Swiss Central City Real Estate Fund (Pfaeffikon), Absenderadresse Saumstrasse 21 statt
Grubenstrasse 37, Leistungszeitraum nur im Stundenblatt. Die Zeile «ab 04.08.
A1-Zahlungserinnerung» ist damit gegenstandslos. Weiter: Positionsliste Los 273.35
Kuechenbau von S. Lanz zur Pruefung eingegangen (28.07. 16:02, bessere Konditionen erst
naechste Woche); Besprechung KV/Baubeschrieb mit R. Steinmann fix am **13.08. 10:00**,
Feldeggstrasse 26; Koordinationssitzung Gruner/Jans/KISPI am 06.08. 13:00 neu im Register;
zwei unklare eBaugesuche-Aktionen vom 28.07. als «zu pruefen» aufgenommen.
**Unveraendert offen:** RE-00087 (CHF 15'000, 104 Tage, Mahnstufe 2, Entscheid Raphael),
RE-00098/99 (CHF 17'280, Frist 03.08.), UBS-Kapitaleinzahlungskonto seit 27.06. unbeantwortet
(Termin 31.07. 10:00), Frist KISPI Tuerbuch/Sicherheitskonzept 31.07. 17:00.
**Token-Tempo Vortag (28.07.):** MacBook Pro 312.13 Mio Tokens (USD 306.49),
Mac Mini 94.32 Mio (USD 39.47), zusammen 406.45 Mio (USD 345.96 API-Aequivalent).
Keine Mail an Dritte, kein Kalendereintrag, keine Buchung.

**Methoden-Layer: Entscheide Raphael + neuer Skill-Kandidat (Session MacBook, 29.07.).**
Nach der Vollanalyse von OneDrive `03 Prompteingaben` (Methoden-Register + Lern-Loop
`methoden-radar`, Commit `eca112a4`) hat Raphael entschieden: (1) Drei-Marken-/Website-
Strategie VERWORFEN, beide DOCX geloescht (SharePoint-Papierkorb); (2) **4-Agenten-
Blaupause Projektordner/Baueingabe als Skill-Kandidat AUFGENOMMEN** (Indexer/manifest.csv,
Baueingabe-Vollstaendigkeitscheck nach Referenzprozess Zuerich, Brandschutz-Nachweis-
Matrix, QA-Trace-Matrix — Destillat in `wissen/claude-code/wiki/methoden-register.md`);
(3) Ordner `Prompts` geloescht. **Offene Pendenz fuer hub-chef:** Umsetzungsvorschlag
fuer den Skill-Kandidaten zur Priorisierung vorlegen (Vorstufe zu `auflagebereinigung`,
Beruehrung mit `brandschutz`/`planungsgrundlagen`); Bauzeitpunkt entscheidet Raphael.

## 2026-07-28

**Hub-Chef-Lauf (08:39, planmaessig) — MIT Befund, Briefing versendet.** Signale vollstaendig
eingesammelt: Fristen-Register + Logbuch (7-Tage-Horizont), Konversations-Destillat 28.07.,
`mail-vorfilter.sh 26` ueber alle Apple-Mail-Konten (Exchange, mail@, iCloud,
raphaeljans@outlook.com; Posteingang + Gesendete Elemente), die relevanten Threads danach im
Original samt Bodies geoeffnet, bexio `--verzug` und `--abgleich`, Kalender 8 Tage,
Sync-/Remote-Task-Queues (beide leer), Entwurfsordner.
**Ausgangslage: der `logbuch-radar` ist heute ausgefallen** — Start 06:51, `/Volumes/daten`
nicht gefunden, Remount ueber `ensure-nas-mounted.sh` nach drei Schritten abgebrochen; NAS um
06:56 wieder verfuegbar, die Registry hat den naechsten Termin bereits auf morgen weitergestellt,
also kein automatischer Nachholversuch. Der Vollgas-Fruehwarner hat den Betriebs-/Token-Teil um
07:02 separat gemailt (dort auch der Ertragsnachweis des neuen Destillat-Loops: sechs belegte
`bauprodukte`-Artikel zwischen 04:38 und 06:32). Weil damit heute kein operatives Morgen-Lagebild
existiert, traegt dieses Briefing ausnahmsweise die volle Operative statt nur die Delta-Meldung.
**Befund 1 — der A5-Entwurf vom 27.07. ist wirksam geworden:** RJ hat die Freigabe-Mail zu
Tuerbuch und Sicherheitskonzept ueber die Vertretungen am 27.07. **22:06 selbst versendet**
(An A. Spahic + D. Pfaeffli, Cc Kuebler/Ziegel/Hiltmann), inhaltlich die Entwurfsfassung mit
gewahrter SPOC-Governance. Der Draft von 21:54 liegt seither als Dublette im Entwurfsordner;
nicht geloescht (Loeschen ist verboten).
**Befund 2 — Verfuegbarkeitsfenster TeKoSi geschlossen:** L. Hiltmann meldet 27.07. 22:18, er sei
nur am 28.07. im Buero, danach drei Tage abwesend und erst ab Mo 03.08. wieder fuer einen
Teams-Termin verfuegbar. Der in der Freigabe-Mail angebotene Praesentationstermin liegt damit
**ausserhalb** der eigenen Frist 31.07. 17:00. RJ hat 22:20 entschieden, die Praesentation diese
Woche nicht anzubieten — kein Handlungsbedarf, als Risiko gefuehrt.
**Befund 3 — Registerluecke geschlossen:** die beiden bald faelligen Debitoren RE-00100 (Nova,
CHF 13'120, 30.07.) und RE-00101 (Tschopp, CHF 6'000, 31.07.) standen bisher nur in
Nachtragstexten, nicht als eigene Aktiv-Zeilen.
**Aktionen:** nur **A4** — Nachtrag im Fristen-Register, zwei neue Aktiv-Zeilen (RE-00100,
RE-00101), Statusnachtrag an der Zeile 31.07. 17:00, dieser Logbuch-Eintrag.
**Guards / bewusst unterlassen:** **A1** nicht qualifiziert (RE-00087 CHF 15'000 steht nach
103 Tagen auf Mahnstufe 2 — Stufe 2+ ist per Whitelist immer nur Entwurf, Entscheid Raphael;
RE-00098/99 tragen bereits die Zahlungserinnerung mit laufender Frist bis 03.08.). **A2** nicht
noetig (28.07. 11:30 und 31.07. 10:00 stehen im Kalender). **A5 bewusst unterlassen** — zu den
Prinzippläenen Los 274.01 liegen bereits drei unversendete Fassungen (18.07., 21.07., 24.07.),
eine vierte waere Rauschen; und eine Nachfrage bei M. Gantenbein zur Zeitachse des neuen
Bauentscheids waere einen Tag nach dessen ausdruecklicher Bitte um Geduld unpassend.
Keine Zahlung, keine Buchung, keine Loeschung, kein Versand ausser dem Briefing. Kein `git`
ueber SMB (nativer Committer).

**Nachtschicht Mac Mini (~07:30) — Destillat-Lauf 4: Artikel BKP 281 Bodenbeläge.**
Prio 1/2 leer/gesaettigt, Trainings-Loops laufen auf eigenem Takt (kein manueller
Zweit-Start, Rule 260727) — daher naechste P1-Position im `bauprodukte`-Inventar
destilliert: die zwei Terrazzo/Kunststein-Sitzungsnotizen (Kerez-Buero, 26.02.2002)
zu `wiki/terrazzo-kunststein-bodenbelaege.md` (BKP 281.1/281.5, Aufbauvarianten,
Rezeptur, Preisvergleich). Gegen die Quellen zurueckgeprueft, Register (INDEX/
QUESTIONS/CHANGELOG/Inventar) nachgefuehrt, Report unter
`wissen/bauprodukte/outputs/2026-07-28_destillat-lauf4-281-bodenbelaege.md`. Kein
Fan-out, kein Versand. ~$2.30 von $5 Budget.

**Nachtschicht Mac Mini (~01:30-02:00) — Korpus-Spec `bauprodukte` geschrieben.** Nach
Doppelarbeit-Check (dispatch-Log, CHANGELOGs mehrerer KBs) zeigte sich: die Mac-Mini-eigenen
Loops (planungsgrundlagen, energie, synobsis) sind aktuell/gesaettigt, kein Fristen-Punkt neu
faellig. Naechster sinnvoller Schritt war der neue Korpus `bauprodukte` (Skill
`wissens-destillat`, Korpus 1 der Queue): die Spec fehlte noch, ohne die kein Destillat-Lauf
starten darf. `specs/bauprodukte-spec.md` geschrieben (Ziel/Abgrenzung/Artikelschnitt/
Bewertungskriterien/Goldstandard `wissen/normen/wiki/en-520-gipsplattentypen.md`/Verifier),
dabei eine Fehlklassierung vorgebeugt: die erste inventarisierte Sektion "0 nach BKP Nr" ist
laut Stichprobe CRB-/SIA-451-Kostenschulung, kein Bauprodukte-Material — als Ausnahme in der
Spec vermerkt. Bewusst kein Destillat-Lauf selbst gestartet (das ist der naechste Schritt,
Budgetdisziplin). CHANGELOG der KB nachgefuehrt. Kein Versand/keine Buchung/keine Publikation.

## 2026-07-27

**Nachtschicht Mac Mini (~23:30-23:50) — EG-GSchG-Nachzug baurecht abgeschlossen.** Die vom
vorherigen Lauf (22:30-22:40) offen gelassenen letzten 3 von 17 Fundorten (`buecher/INDEX.md`,
`wiki/INDEX.md`, `training/curriculum.md` — reiner Verweistext, kein materieller Fehler) mit
Aufhebungsvermerk (EG GSchG per 1.6.2026 aufgehoben → §§ 61/62 WsG) nachgezogen. Erledigt-
Kriterium via grep verifiziert. CHANGELOG + `training/PROGRAMM.md` (Fortschritts-Tracker auf
ABGESCHLOSSEN) nachgefuehrt. Kein Versand/keine Buchung/keine Publikation.

**Hub-Chef-Lauf (~21:35, verspaetet nachgeholt) — MIT Befund, Briefing versendet.** Der
geplante 08:35-Lauf hat heute nicht stattgefunden. Signale vollstaendig eingesammelt
(Fristen-Register + Logbuch 7-Tage-Horizont, `mail-vorfilter.sh 26` ueber alle Apple-Mail-Konten
inkl. Posteingang/Gesendete, die relevanten Threads samt Bodies im Original geoeffnet, bexio
`--verzug` + `--abgleich`, Kalender 8 Tage, Sync-/Remote-Queues, Entwurfsordner).
**Kollision mit dem Radar sauber aufgeloest:** waehrend der Sammlung ist um 21:45 der
Radar-Nachhol-Lauf (Fenster 65 h) dazwischengekommen und hat gebrieft. Der von mir zuvor
festgestellte Zwei-Tages-Ausfall des Radars ist damit aufgeholt; die Ursache ist geklaert
(erschoepftes Wochenlimit, nicht NAS-Mount). Mein Briefing wurde daraufhin auf die zwei
Positionen zusammengestrichen, die der Radar NICHT abdeckt — keine Doppelmeldung.
**Befund 1 (nur hier): KISPI BE 1171/26, Verfahrensweg fuer Auflage II.1.b geaendert.**
M. Gantenbein (SRZ Brandschutzexperte, 27.07. 08:16, neue Adresse `markus.gantenbein2@zuerich.ch`)
haelt fest, dass Auflagen und Baufreigabe der Feuerpolizei **nicht separat bei der Fachstelle**,
sondern **innerhalb des Baubewilligungsverfahrens** abgehandelt und **mittels neuem Bauentscheid**
eroeffnet werden, «sofern die neuen Brandschutzplaene mit eingereicht wurden». Das steht quer zur
AfB-Auskunft vom 24.07. (Hottinger: fuer die weiteren Auflagen direkt an die zustaendige
Fachstelle). RJ hat die Bedingung gleichentags selbst geschlossen: 17:10 den **unterzeichneten**
Brandschutzplan und Bericht nachgereicht (zusaetzlich Upload im eBaugesuche-Stammprojekt).
Status II.1.b: eingereicht und unterzeichnet, Ball bei SRZ; die Baufreigabe kommt neu ueber einen
neuen Bauentscheid, die Terminfolge ist dadurch offen. Der Radar hat davon nur «bittet um Geduld»
gemeldet.
**Befund 2 (nur hier): vier fertige Entwuerfe liegen unversendet im Exchange-Postfach** —
drei Fassungen der Prinzippläene-Rueckmeldung Los 274.01 an L. Bajrami (18.07. 09:03,
21.07. 13:40/13:41, 24.07. 09:03) und der Nachfass Therapiekueche an T. Inniger (24.07. 09:04).
Letzte belegte Mail an Bajrami: 17.07. 15:21. Die Vorbestellung ist auf 03.08. terminiert,
Bajrami ist bis 11.08. abwesend. Der Entwurfsordner ist ein blinder Fleck des Radars.
**Aktionen:** A5 — ein neuer Mail-Entwurf erstellt (Freigabe Tuerbuch/Sicherheitskonzept ueber
die Vertretungen; An A. Spahic + D. Pfaeffli, Cc Kuebler/Ziegel/Hiltmann; SPOC-Governance
gewahrt, kein Direktzugriff auf T. Haldemann), QS `rechtschreibung` gelb und `layout` gelb
(Befunde eingearbeitet), twin-chef Fidelity 78 mit eingebauter Ueberarbeitung; liegt als Draft
im Postfach, NICHT versendet. A4 — Fristen-Register und dieser Eintrag nachgefuehrt.
**Guards:** A1 nicht qualifiziert (RE-00087 auf Mahnstufe 2 = nur Entwurf; RE-00098/99 bereits
auf Stufe 1, Frist laeuft bis 03.08.); A2 nicht noetig (Termin 28.07. 11:30 steht bereits im
Kalender). Keine Buchung, keine Zahlung, kein Versand ausser dem Briefing. Kein `git` ueber SMB.

**Logbuch-Radar (Nachhol-Lauf 21:45, Fenster 65 h).** Der Morgenlauf 04:55 und der Lauf vom
26.07. sind am erschoepften Wochenlimit gescheitert; dieser Lauf deckt darum 25.07. frueh bis
27.07. abend ab. **Erledigt:** Geschirrspueler Saumstrasse 21 ist beschafft (MERX AG,
Bestellung 16611, Rechnung 74623 vom 27.07., Vorkasse bezahlt, ELECTROLUX GA55LISW +
Tuerfront + Montage) — die Submission reap/NETTOSHOP ist damit gegenstandslos; Roethlisberger-
Nachfass ist raus (RJ 27.07. 12:44, Budgetrahmen CHF 70'000 exkl. MwSt, Hochschraenke streichen,
Geraetepreise gesondert, neue Frist 03.08.); die drei bereits vom Hub-Chef korrigierten
Altzeilen (Ziegel-Korrekturfassung, TeKoSi-Termin, Jegen «definitive Offerte») sind ins Archiv
verschoben. **Neu offen:** Rueckmeldung der KISPI-Fachstellen zu Tuerbuch + Sicherheitskonzept
bis **31.07. 17:00** (RJ-Frist an Spahic/Kuebler; Schaefer bis 03.08. abwesend, Kuebler OOO —
Fristrisiko); Montagetermin Geschirrspueler an Vermieter Salzmann melden; Dropbox-Kreditkarte
laeuft Ende Monat ab. **Verfahrensstand KISPI 1171/26:** Feuerpolizei/SRZ bittet um Geduld und
um Zustellung an `markus.gantenbein2@zuerich.ch`; UGZ-Zustaendigkeit liegt bei Hr. Hansen
(Ferien), Stellvertreter **Shyam Zala**, Eingaben ueber EVEN, Lueftungsnachweis nach EN-105 —
RJ hat 16:07 um Freischaltung von II.1.c) gebeten; **AFB-Zustaendigkeit fuer das Gebiet Weinegg
neu Team 5, Ansprechperson Linus Furrer statt A. Hottinger** (Projekt-Stammdatum). **Termine
neu:** 28.07. 11:30 Koordination LBW/Innere Verglasung Brandschutz (Stadelmann/Estermann,
Auflagen Ziff. 17–20) und 31.07. 10:00 «UBS Termin bestaetigt: Finanzierungen» (Privatkalender,
ohne Agenda; Gelegenheit fuer das seit 27.06. unbeantwortete AG-Kapitaleinzahlungskonto).
Debitoren unveraendert: RE-00087 CHF 15'000 (102 Tage, Mahnung 2), RE-00098/99 CHF 17'280
(7 Tage, Stufe 1, Frist 03.08.); RE-00100 Nova CHF 13'120 faellig 30.07., RE-00101 Tschopp
CHF 6'000 faellig 31.07. Der Wochenlimit-Ausfall (26.07. 00:53 bis 27.07. 12:00, ~1'988 von
2'186 MacBook- und ~3'942 von 4'093 Mini-Sessions abgebrochen) wurde vom Vollgas-Fruehwarner
um 21:45 separat gemeldet — hier nur als Lagezeile, kein Doppelalarm; beide Runner laufen
weiter, Wiederdrosselung ist Raphaels Entscheid. Sync-/Remote-Queues leer, outlook.com ohne
Neueingang. Token 26.07.: MacBook 99.35 Mio. (~60 USD) + Mac Mini 75.67 Mio. (~33 USD).
Briefing an rj@ versendet.

**Nachtschicht-Zyklus Mac Mini (20:30-Lauf): sechs Identitaets-Fragen in `wissen/architekten-synobsis`
recherchiert.** Vorlauf-Check ohne offene Sync-/Remote-Tasks, Synobsis-Scan weiter gesaettigt
(853/853), Trainings-Loops frisch (letzte Laeufe alle < 1h alt). Stattdessen einen kleinen,
budgetdisziplinierten Recherche-Block aus `wiki/QUESTIONS.md` (Sektion 1/2, ungeklaerte
Buero-/Personennamen) abgearbeitet: AASZ (Kuerzel bleibt ungeklaert, dokumentierter
Negativ-Befund), Herter_Hermann_Meilard_Robert (bestaetigt: Hermann Herter + Robert Maillart,
mehrfache Zusammenarbeit), Sergison_Bates_Dublin (kein Dublin-Buero belegt), Studio_Mumbai_Betoi
(bleibt ungeklaert, dokumentiert), Don_Fabio (realer Architekt identifiziert, Buero Zuerich
statt vermutetem Tessin), Sofaloung_Pinar_Goeunuel (bestaetigt: Vorgaengerfirma blgp architekten
AG). Alle Funde mit Quelle in QUESTIONS.md ergaenzt, CHANGELOG nachgefuehrt, keine
Ordnerumbenennung (braucht Freigabe). Budget rund 1.55 USD von 5 USD.

**Nachtschicht-Zyklus Mac Mini (19:30-Lauf): Vollgas-Runner-Doppellauf-Bug behoben
(betrifft normen/twin/spec/wettbewerbs-dna).** Vorlauf-Check (keine offenen Sync-/Remote-Tasks,
Synobsis weiter gesaettigt) fuehrte zum noch offenen Betriebsbefund in
`wissen/wettbewerbs-dna/wiki/QUESTIONS.md`: Rule 260725 sichert zu, dass sechs hochgetaktete
Lern-Loops ueber `EXCLUDE_RE` im Endlos-Runner (`scripts/vollgas-runner.sh`) ausgeschlossen
bleiben — tatsaechlich fehlten vier davon (`twin`, `spec-training`, `wettbewerbs-dna`,
`normen-training-nacht`; nur `wissens-chef` griff). Das hatte am 25.07. einen echten
Doppellauf mit `index.lock`-Konflikt verursacht (analoger, bereits im 18:30-Vorlauf durch
Run 20 behobener Fall bei `grobkosten-training`). `EXCLUDE_RE` ergaenzt und gegen alle sechs
Loop-Namen sowie die regulaeren Vollgas-Tasks (energie/planungsgrundlagen/grobkosten/
baurecht-buch/synobsis) verifiziert — keine Kollateral-Exklusion. Dokumentiert in
`wissen/wettbewerbs-dna/wiki/QUESTIONS.md` (Geklaert) + `CHANGELOG.md`. Kein Git ueber SMB
ausgefuehrt (NAS-Selfcommit uebernimmt).

**Nachtschicht-Zyklus Mac Mini (18:30-Lauf): QUESTIONS-Punkt `wissen/firmengruendung-ch` geschlossen.**
Vorlauf-Check (Synobsis Stufe 2 gesaettigt seit 03.07. 853/853, Fristen-Radar tagesaktuell,
Trainings-CHANGELOGs aller KBs 25.-27.07., wissenscheck aeltestes Audit `baurecht` 22.07.)
ergab keine groessere faellige Aufgabe im Nachtschicht-Budget; stattdessen den kleinsten
offenen, klar recherchierbaren Punkt aus einer QUESTIONS.md genommen: Schwellenwerte
ordentliche Revision Art. 727 OR direkt am Fedlex-Volltext (Filestore-Methode) verifiziert,
[[revision-und-opting-out]] mit den konkreten Zahlen ergaenzt, needs-verification-Flag
entfernt, CHANGELOG/QUESTIONS nachgefuehrt.

**Woechentlicher Abo-Auslastungs-Check (Mac Mini) — KEINE MESSUNG MOEGLICH, Ampel ROT
(Messfehler, nicht Verbrauch); der seit 20.07. offene `/login` ist weiterhin nicht erfolgt.**
`node connectors/claude-usage.mjs` bricht beim Token-Refresh ab: HTTP 400,
`invalid_grant: Refresh token not found or invalid`, Usage-Endpunkt danach 401. Damit liegen
**weder ein Wochen-Prozentwert noch eine Extra-Usage-Zahl** vor — die letzte belastbare Messung
bleibt die vom 19.07. (Woche alle Modelle 31 %, Extra Usage 0.00 USD, Ampel gruen). Der Befund
ist **kein neuer Fehler**, sondern der unveraendert offene Punkt aus dem Register (Eintrag
20.07.): der Rotations-Bug im Connector ist seit 20.07. behoben (`persistiereRotation()`
schreibt den rotierten Refresh-Token in die Keychain zurueck), greifen kann der Fix aber erst
ab der naechsten gueltigen Credential. **Neuer Beleg dafuer, dass der Re-Login aussteht:**
der Keychain-Eintrag «Claude Code-credentials» (Account `raphaeljans`) traegt als
Aenderungsdatum unveraendert **12.07.2026 22:01 UTC** — seit 15 Tagen kein Schreibzugriff, also
weder Re-Login noch erfolgreiche Rotations-Persistierung. **Offene JANS-Aktion (unveraendert,
seit 7 Tagen): einmalig im interaktiven Terminal `claude` starten und `/login` ausfuehren**
(Browser-Flow, headless nicht moeglich), danach einen Kontrolllauf
`node connectors/claude-usage.mjs` beobachten. Solange das aussteht, ist die Abo-Auslastung
blind — gerade unter dem am 25.07. wieder aufgehobenen Drosselzustand (Vollgas-Runner beidseitig
aktiv) ist das die relevante Luecke, weil ein Anlaufen der Extra Usage nicht bemerkt wuerde.
Bewusst **nur ein** Connector-Lauf (Lehre aus dem 429-Vorfall vom 20.07.: keine Zweitlaeufe zur
Belegbeschaffung). Read-only gearbeitet, keine Abo- oder Kontoaenderung.

---

## 2026-07-26

**Nachtschicht Mac Mini: pendenten NAS-Commit-Sync-Task abgearbeitet + `nas-commit-now.sh`
vom Mac Mini aus reparatur-faehig gemacht.** Pruefung von `sync-tasks/mac-mini/` fand einen
pendenten Task («NAS-COMMIT angefragt», Station Macbookpro, 00:23:53, Message
`twin-fidelity-review: 2026-07-26`, Pfade `wissen/twin rules/jans-dna.md`) — Relikt des
alten Single-Committer-Mechanismus (`nas-git-commit.sh`), der laut Rule 260726 durch
`nas-commit-now.sh` ersetzt ist. Ausfuehrung von `nas-commit-now.sh` scheiterte zunaechst mit
«Host key verification failed»: `~/.ssh/known_hosts` auf dem Mac Mini kannte den Synology-
Hostkey nur unter der LAN-IP `192.168.1.10`, nicht unter dem Tailscale-Hostnamen
`diskstation918.tail8265aa.ts.net`, den `nas-commit-now.sh` per ssh anspricht — mit
`BatchMode=yes` blockiert das jede TOFU-Anfrage. Fingerprint-Abgleich bestaetigte denselben
Schluessel (SHA256:hbOv7EP9We/JD+69Hkrqk5aEqfDILEQimZANxJbwAO8) unter beiden Namen; Key per
`ssh-keyscan` ergaenzt (kein neues Vertrauen, nur bereits verifizierter Schluessel unter
zusaetzlichem Namen). Danach `nas-commit-now.sh` erfolgreich: nativer Commit+Push auf der
Synology ausgeloest, `main...github/main` ohne Divergenz verifiziert (ssh-Check auf der
Synology). Sync-Task nach `sync-tasks/done/` verschoben. Damit ist `nas-commit-now.sh` neu
auch vom Mac Mini aus direkt nutzbar (zuvor nur MacBook Pro getestet, siehe Eintrag unten).
**Zweiter Fund direkt danach:** ein eigener Logbuch-Nachtrag blieb trotz «erfolgreicher»
`nas-commit-now`-Meldung zunaechst uncommittet — Ursache ein **verwaister `.git/index.lock`**
auf der Synology (0 Byte, 00:31 Uhr, kein Prozess dahinter laut `ps aux`), den der Stale-Guard
in `nas-selfcommit.sh` erst ab 3600 s automatisch entfernt (Log zeigte 4 Skips in Folge:
00:32/00:33/00:33). Nach `ps aux`-Verifikation (kein `git`-Prozess) Lock manuell entfernt,
`nas-commit-now.sh` griff danach sofort (Commit `cce339b0`, sauberer Diff zu `github/main`).
Der 3600-s-Schwellwert ist fuer «Lock ohne lebenden Prozess» zu hoch angesetzt — moegliche
Folgeverbesserung: `nas-selfcommit.sh` koennte den Lock schon bei kurzer Standzeit entfernen,
sobald `ps` keinen zugehoerigen `git`-Prozess mehr zeigt (nicht heute Nacht umgesetzt, nur
manuell aufgeloest — fuer einen dedizierten Lauf vormerken).

**Schwesterproblem geloest: kein `git` mehr ueber SMB aufs NAS-Repo (~00:15).** Auf Raphaels
Zuruf «mach es genau so wie Du findest ist die beste Loesung» das tieferliegende Thema hinter
den Mount-Haengern angegangen. Ist-Analyse: `git-auto-sync.sh` laeuft auf dem lokalen SSD-Klon
(gesund, kein SMB), `nas-selfcommit.sh` nativ auf der Synology (ext4, commit+fetch+rebase+push,
alle 15 Min, ueber Nacht bewiesen robust). Der EINZIGE Haenger-Verursacher war, dass Claude UND
die vollgas-Loops zusaetzlich `git commit/push` direkt gegen das NAS-`.git` ueber den SMB-Mount
laufen liessen — uninterruptibel haengend, index.lock fuer alle blockierend. Fix (nichts Neues
gebaut, die native Strecke konsequent genutzt): (1) `nas-selfcommit.sh` nimmt neu ein optionales
Message-Arg; (2) neuer Helper `scripts/nas-commit-now.sh "<Message>"` loest den nativen Committer
per ssh sofort aus (commit+push, danach SSD-Klon-Pull) — getestet, Commit 65ffe40d trug die
uebergebene Message, rc 0; (3) `vollgas-runner` Loop-Prompt ruft neu `nas-commit-now` statt selbst
zu committen; (4) kodifiziert in Rules `sync-kanonische-quelle` (Schritt 3 + NIE-Liste umgeschrieben)
und `git-auto-push` (NAS-Repo-Ausnahme vorangestellt) + auto-verbesserung 260726; die pathspec-
Mitigation (Rule 260724) ist damit ueberholt. Alle Skripte `bash -n`-geprueft. Offen/Folgeschritt:
einzelne Scheduled-Task-SKILL.md (`~/.claude/scheduled-tasks/*/`) tragen teils noch «committen und
pushen» — bei Gelegenheit auf nas-commit-now migrieren (Rules gehen im Konflikt vor). Dieser
Logbuch-Eintrag wurde bereits ueber den neuen Weg (nas-commit-now) gesichert.

## 2026-07-25

**NAS-Mount gehaertet (mobile Station) — auf Auftrag Raphael «viel robuster aufsetzen»
(~13:30).** Befund aus `nas-auto-mount.log`: der SMB-Mount `/Volumes/daten` stallte alle
15-20 Min (07:24/07:40/07:57/08:13/08:33/08:53/09:16 …), IMMER ueber Tailscale. Diagnose:
Netzpfad gesund (Tailscale 9 ms, 0 % Verlust, direkte WireGuard-Verbindung) — Ursache ist
NICHT das Netz, sondern der macOS-SMB-Client (idle-disconnect / stale-Sitzung ueber VPN). Der
bestehende 3-Min-Waechter heilte nur, verhinderte nicht, und jede Heilung riss headless-Laeufe
ab (belegt: immobewertung Run 43, spec-training abgebrochen). Entscheid Raphael: nur Mount
haerten, Loops bleiben auf dem MacBook (kein Mini-Umzug). Umgesetzt (3 Schichten, kein sudo):
(1) VERHINDERN — `~/Library/Preferences/nsmb.conf` (notify_off/mc_on=no/signing_required=no,
greift am naechsten Remount) + neuer 60-s-Keepalive `scripts/nas-keepalive.sh` + LaunchAgent
`com.jans.nas-keepalive` (haelt SMB-Sitzung via Sentinel `.nas-sentinel` warm, stoesst bei
Stall sofort den Remount an → max. 60 s Latenz statt 180 s); (2) HEILEN — `nas-auto-mount.sh`
neu mit gemeinsamer mkdir-Lock (kein Doppel-Remount durch Keepalive+Intervall+Netzwechsel);
(3) UEBERLEBEN — neuer blockierender Guard `scripts/ensure-nas-mounted.sh` (rc-0/rc-1-Contract),
vor JEDEM `vollgas-runner`-Lauf verdrahtet: NAS nicht bereit → Task bricht sauber ab statt
mitten im Schreiben. Getestet: Guard-Erfolg rc 0 in 0 s, Guard-Abbruch rc 1 nach Budget,
Keepalive rc 0 (Sitzung warm, keine Stalls seit Aktivierung), Lock haelt bei 2x-parallel.
Commit 035cb9c1 (NAS→GitHub→SSD gepullt), Doku `docs/referenz/nas-mount-haerten.md`.
Erfolgskennzahl zu beobachten: «Mount haengt»-Rate im Waechter-Log muss deutlich sinken.
Nebenbefund: die git-ueber-SMB-Commits kollidierten erneut mehrfach (fremder vollgas-radar-
Commit hing uninterruptible auf der Index-Lock) — bestaetigt Rule 260724; mein Commit ging
erst nach Freigabe der Lock durch, mit Timeout-Wrapper.

**Hub-Chef-Lauf regulaer nachgeholt (~12:40, NAS wieder gemountet) — ohne neuen Befund, keine
zweite Mail.** Nach dem Abbruch am Vormittag (NAS nicht gemountet, Vermerk unten) auf Zuruf
Raphaels («kannst du weiter machen») vollstaendig durchgefuehrt: Signale eingesammelt
(mail-vorfilter 26h alle Konten, bexio `--verzug` + `--abgleich`, Konversations-Destillat
25.07., Fristen-Register 7-Tage-Horizont, Whitelist). Ergebnis: **nichts materiell Neues seit
dem Logbuch-Radar-Briefing 07:23** — alle Positionen dort bereits gemeldet (KISPI-Debitoren
CHF 32'280: RE-00087 15'000/100 Tg/Mahnung 2, RE-00098+99 17'280/Stufe 1/Frist 03.08.;
faellig 30.07. RE-00100 Nova 13'120, 31.07. RE-00101 Tschopp 6'000; KISPI-Auflagebereinigung
II.1.a eingereicht, II.1.b Feuerpolizei + II.1.c UGZ bei Fachstellen [beide Kontakte OOO];
Jegen Los 274.01 7 Entscheide offen/Vorbestellung 03.08.; Roethlisberger-Entscheid 31.07.;
AG-Gruendung UBS 29 Tg ohne Antwort; SwissSign Schritt 2/3 offen). Einziger neuer Input seit
07:23: privater Salzmann-Thread Geschirrspueler Saumstrasse 21 (Nachfrage Montagetermin 09:49)
— Raphael bearbeitet live selbst (eigene Antwort 10:58), kein Hub-Befund. **Whitelist:** keine
A1-Mahnaktion qualifiziert (RE-00087 auf Stufe 2 = nur Entwurf; RE-00098/99 bereits auf Stufe 1,
Frist laeuft bis 03.08.), keine A2-Kalendereintraege (keine neu bestaetigten Termine, Kalender
7 Tage leer). Keine autonome Aktion ausser diesem A4-Vermerk. Gemaess Contract-Nicht-Ziel
(keine Doppelmeldung) + Task-Regel: **keine zweite Briefing-Mail versendet.**

**Hub-Chef-Lauf ohne Befund (~08:40, geplanter Lauf).** NAS `/Volumes/daten` war beim Start
NICHT gemountet (NAS-Waechter-Warnung). Skill-Definition, mail-vorfilter.sh, Connectoren und
das kanonische Logbuch liegen alle auf dem NAS und waren unerreichbar. Gemaess Task-Vorbedingung
abgebrochen und nur lokal geloggt. Keine neuen Signale gesammelt, keine Aktion (Whitelist nicht
pruefbar), kein Briefing versendet. Der Logbuch-Radar hat heute 07:00 bereits gescannt und an
rj@ gemailt (Eintrag unten) — daher keine Doppelmeldung. Bei naechstem Lauf mit gemountetem NAS
regulaer nachholen.

**Logbuch-Radar (~07:00, Samstag).** NAS zweimal per Tailscale nachgemountet (mobile Station,
Mount fiel zwischenzeitlich weg). ERLEDIGT seit gestern: KISPI Auflagebereinigung 1171/26 —
RJ hat 24.07. 17:30 den 33.1 Abaenderungsplan (Auflage II.1.a) ueber eBaugesuche + Mail an AFB
eingereicht, nachdem AFB (Hottinger, 11:13) den Weg vorgab (II.1.a Abaenderungsplaene;
II.1.b Feuerpolizei + II.1.c UGZ direkt an Fachstelle); TeKoSi-Besprechung Los 231.10
durchgefuehrt (Hiltmann Termin 10:00 angenommen, Auftrag 22.07. erteilt); TeKoSi-Gastzugriff
kontrolliert (bereits eingerichtet). OFFEN/beobachten: Debitoren KISPI CHF 32'280
(RE-00087 100 Tage/Mahnung 2; RE-00098/99 5 Tage/Stufe 1, Frist 03.08.); AG-Gruendung UBS 29
Tage ohne Antwort (Einzahlung Mitte August gefaehrdet, Anruf Jeckelmann empfohlen); Prinzippläne
Jegen Los 274.01 (7 Entscheide offen, Vorbestellung 03.08.); Geschirrspueler Saumstrasse 21
(nur reap-Offerte, NETTOSHOP-Frist abgelaufen); SwissSign Schritt 2/3 offen. KOMMT: 30.07.
RE-00100 Nova; 31.07. RE-00101 Tschopp + Roethlisberger Bestellentscheid; 03.08. Bajrami-
Vorbestellung. Kalender 7 Tage leer (naechste Koordinationssitzung ~06.08.). Token gestern
(24.07.): 267.04 Mio. (~187 USD Aequiv.: MacBook 110.69 Mio./125 USD + Mini 156.35 Mio./62 USD).
Briefing an rj@ versendet.

**Nachtschicht Mac Mini (~02:30, Wissens-Health-Check grobkosten Re-Audit, Dispatch-Run
20260725-023006).** Standard-Prioritaeten 1–4 heute Nacht bereits erschoepft (Sync-/Remote-
Queues leer, Synobsis Lauf 13 bereits 02:18 gelaufen, planungsgrundlagen Training Run 59
bereits gelaufen). Prioritaet 5 versucht: kunde-bopp-Frage «Baar Zugerstrasse 49, TDD-Ausgang»
erneut probiert (auch im Vordergrund, nicht nur Background-Agent) — weiterhin `EDEADLK`/
Resource-deadlock beim Lesen der OneDrive-Cloud-Platzhalter, Blocker bestaetigt unveraendert
bestehend (kein neuer Fix noetig, Bash und Read-Tool gleichermassen betroffen). Stattdessen
Prioritaet 6: Re-Audit `wissen/grobkosten` (aeltestes Audit-Datum 21.07. neben kunde-bopp,
letzter Fix-Lauf 24.07. nie verifiziert). Ergebnis: der 24.07.-Nachziehlauf hat die drei
Kern-Findings (QUESTIONS.md, raw/_INGESTED.md, Frontmatter+Umlaute in kennwerte.md) sauber
behoben (B-Audit jetzt gruen), war aber eng auf `kennwerte.md` begrenzt — `raw/README.md`
und `outputs/README.md` bleiben in ae/oe/ue-Umschrift, zwei CHANGELOG-Kopfzeilen weiterhin
im Altformat (beides kosmetisch, F-Audit gelb mit 2 statt vormals 3 Findings). Report
`wissen/grobkosten/outputs/2026-07-25_health-check.md`, CHANGELOG nachgefuehrt. Reine
Audit-Phase (Phase 1, unbeaufsichtigt), keine Wiki-Datei inhaltlich veraendert. Kein
Versand/Publikation/Buchung.

**Nachtschicht Mac Mini (~01:30, Wissens-Health-Check firmengruendung-ch, Dispatch-Run
20260725-013006).** Standard-Prioritaeten 1–4 heute Nacht bereits erschoepft: Sync-/
Remote-Queues leer, Synobsis Stufe 2 vollstaendig, energie+planungsgrundlagen-Training
schon im 00:30-Lauf bedient, Normen-Loop (SIA/VKF UND DIN/VSS/RAL) komplett abgeschlossen
(Run 19). QUESTIONS.md-Kandidaten in energie/planungsgrundlagen alle entweder
"Entscheid Raphael noetig" (E103 Pflegeplatz-Kennwert, D9 MFH-Fall) oder bereits
ausgereizte Negativbefunde (E84 Solarpflicht-Beratungsstand, Fernwaerme-290-kW-
Nachverdichtung mit bekanntem Overpass-API-Blocker) — keine dieser drei Aufgaben
autonom sinnvoll fortsetzbar. Stattdessen Prioritaet 6: Wissens-Health-Check auf
`firmengruendung-ch` (aeltestes Audit-Datum 21.07., seither um 4 neue Artikel gewachsen,
von keinem anderen Lauf heute Nacht angefasst). 7-Audits-Katalog: A0 Gruen (01.07.-
Firmenname-Blocker seit 21.07. erledigt), B Gelb (neu: `steuern-bei-gruendung`-Orphan
analog zum 21.07.-Fund `steuern-ag-inhaber`; `gmbh-gruendungsablauf` ohne Rueckverweis
von seinem erklaerten Pendant `ag-gruendungsablauf`), C Gelb (HR-Gebuehren-Richtwerte
weiterhin unbelegt), D Gruen, E Gelb (Aktienrecht-Revision 2023 jetzt 35 Tage offen),
F Gelb (neu, klein: `holding-struktur.md` Frontmatter "Luecke" statt "Lücke"),
G Gruen (QUESTIONS.md sauber gefuehrt,
Backlog stabil bei 2 Punkten). Report `wissen/firmengruendung-ch/outputs/
2026-07-25_health-check.md`, CHANGELOG nachgefuehrt. Reine Audit-Phase (Phase 1,
unbeaufsichtigt), keine Wiki-Datei inhaltlich veraendert. Kein Versand/Publikation/
Buchung. Fixes sind Phase-2-Kandidaten fuer eine interaktive Session.

**Nachtschicht Mac Mini (~00:30, Wissens-Health-Check energie, Dispatch-Run
20260725-003006).** Kollisionspruefung: parallel lief auf demselben Host ein zweiter
Dispatch-Prozess (planungsgrundlagen-Intensivlauf, PID 91524, eigenes 25-USD-Budget) —
andere Aufgabe, andere Dateien, daher kein Rueckzug noetig, aber bewusst nicht
committet (Kollisionsschutz 260724). Sync-/Remote-Queues leer. Aeltester Health-Check
im Hub war wettbewerbs-dna (21.07. 01:37, MacBook-Pro-exklusive Domaene, uebersprungen),
naechst-aeltester energie (21.07. 02:39, Mac-Mini-Domaene) — Prioritaet 6 gewaehlt.
7-Audits-Katalog auf alle 24 Wiki-Artikel: A0 Widersprueche, B5 (neu: 82 kaputte
`sources:`-Dateireferenzen in 11 Artikeln — Kollateralschaden des Umlaut-Fixes vom
21.07., Destillat-Dateinamen faelschlich mit echten Umlauten referenziert, obwohl die
Dateien ASCII heissen; Wiki-`[[Backlinks]]` selbst unberuehrt), C0, E2 (2. Flag fuer
foerderung-energie-zh ohne aktuellen KRNr-Stand), F4 (neu: schallschutz-sia181.md
durchgehend in ae/oe/ue-Ersatzschreibung, vom 21.07.-Fix uebersehen), G3 (zwei
Promotion-Kandidaten seit drei Laeufen unveraendert auf emerging). Report
`wissen/energie/outputs/2026-07-25_health-check.md`, CHANGELOG nachgefuehrt. Reine
Audit-Phase (Phase 1, unbeaufsichtigt), keine Wiki-Datei inhaltlich veraendert. Kein
Versand/Publikation/Buchung. Korrekturen sind Phase-2-Kandidaten fuer eine interaktive
Session (insbesondere die 82 kaputten sources-Referenzen und schallschutz-sia181.md).

- 2026-07-25 21:30 (Nachtschicht Mac Mini): Richtigstellung eines zweimal (19:30, 20:30)
  als "Scheduling-Problem"/"doppelte Prozesse" geflaggten Befunds. Per Prozessbaum-Check
  (`pgrep -P`, `ps -o pid,ppid`) verifiziert: die vermeintlichen Duplikate sind KEINE
  Kollision, sondern legitime Eltern-Kind-Prozesse derselben Lauf-Kette — `vollgas-runner.sh`
  PID 86736 (Vollgas-Fenster seit 12:45) ist Kind von PID 68866 (seit 18:52), der Lock
  `/tmp/jans-vollgas-runner.lock/pid` zeigt korrekt auf den Eltern-PID 68866; ebenso ist
  `dispatch-run.sh` PID 88142 Kind von PID 88132 (mein eigener Lauf), keine zweite
  Dispatch-Instanz. Kein Scheduling-Bug, keine Budget-Verdoppelung durch Doppelstart — das
  war eine Fehllesung von `ps aux | grep` ohne Eltern-Kind-Zuordnung. Bedarf keine
  Aenderung an Lock-Mechanik/Supervisor. Alle uebrigen Prioritaeten (Sync-Queues leer,
  Synobsis idle, alle Trainings-KBs inkl. immobilienbewertung/spec/twin/baurecht/
  wettbewerbs-dna in den letzten 1-3h vom laufenden Vollgas-Fenster aktiv beschrieben,
  Wissenscheck-Kandidaten koordination/auflagebereinigung/immobilienbewertung entweder
  heute schon geprueft oder ohne aktionsfaehigen offenen Punkt) blieben ohne Kollisions-
  freien Ansatzpunkt. Kein Versand/Publikation/Buchung. Zyklus schlank beendet (~2 von 5 USD).

## 2026-07-24

**Nachtschicht Mac Mini (~23:30, Wissens-Health-Check auflagebereinigung, Dispatch-Run
20260724-233002).** Vorpruefung: alle Mac-Mini-Prioritaeten heute Nacht bereits erschoepft
(Synobsis Stufe 2 vollstaendig seit 02:18, Fristen-Radar vom Hub-Chef bereits versendet,
normen DIN/VSS/RAL-Endbedingung seit Mini-Run 29-32 erreicht, energie/planungsgrundlagen/
synobsis/normen heute bereits durch die 18:30-22:54-Laeufe bedient). Zusaetzlich geprueft:
NAS-`.git/index.lock` seit 22:39 aktiv, aber korrekt durch die eingebaute Alters-Guard
(>3600s) von `nas-selfcommit.sh` blockiert, kein Fehlzustand — loest sich im 23:45-Zyklus
selbst auf, keine manuelle Intervention noetig. Also Prioritaet 6: wissenscheck Phase 1
(unbeaufsichtigt) auf `wissen/auflagebereinigung` (aeltestes Audit-Datum, 21.07., heute Nacht
von keinem anderen Lauf angefasst). 7-Audits-Katalog auf alle 7 Wiki-Artikel: 1 Orphan
(`formular-verifizierung.md`), 1 veraltetes raw-Register (`_INGESTED.md` fehlen 3 neuere
Primaerquellen), 1 schwerwiegender Umlaute-/Frontmatter-Verstoss (`gvz-einreichung-bma-
sprinkler.md`, ~40+ ASCII-Umlaute-Fundstellen), 4 Promotion-Kandidaten (emerging->established).
Report `wissen/auflagebereinigung/outputs/2026-07-24_health-check.md`, CHANGELOG nachgefuehrt.
Reine Audit-Phase, keine Datei inhaltlich veraendert. Kein Versand/Publikation/Buchung, keine
Zweitinstanz-Kollision.

**Nachtschicht Mac Mini (~21:30, KB planungsgrundlagen Steuerabzug energetische Sanierung,
Dispatch-Run 20260724-213007).** Vorpruefung: Sync-/Remote-Queues leer, Trainingsfenster
22:00-06:00 noch nicht erreicht, KB `energie` hat nur grosse/blockierte Luecken (Raphael-Entscheid
noetig oder Budget-inkompatible Multi-Agent-Recherche). Stattdessen `wissen/planungsgrundlagen`
QUESTIONS.md D9 (Teilaspekt) bearbeitet: neuer Wiki-Artikel
`[[steuerabzug-energetische-sanierung-zh-sz]]` — Rechtsgrundlagen-Herleitung des kantonalen
Steuerabzugs energetische Sanierung ZH (§ 30 StG/ZStB 30.4) + SZ (§ 32 StG/LKPV-Weisung
18.11.2025, primaerquellenbelegt via pdftotext), inkl. ZEV/PV-Miteigentuemer-Abzug SZ. Verlinkt in
`energie-betriebsenergie-pv-wirtschaftlichkeit.md`, `INDEX.md`, `QUESTIONS.md` nachgefuehrt,
CHANGELOG-Eintrag gesetzt. Reale MFH-/ZEV-Kostendaten bleiben in D9 weiterhin offen (Entscheid
Raphael noetig). Kein Versand/Publikation/Buchung, keine Zweitinstanz-Kollision.

**Nachtschicht Mac Mini (~20:30, KB firmengruendung-ch Steuern-bei-Gruendung, Dispatch-Run
20260724-203002).** Vorpruefung: keine Sync-/Remote-Tasks, Synobsis Stufe-2 vollstaendig,
Trainingsfenster (22:00-06:00) noch nicht erreicht, normen/kunde-bopp bereits durch die
18:30-/19:30-Laeufe bedient. Letzte offene Backlog-Luecke aus `wissen/firmengruendung-ch`
genommen: «Steuern bei Gruendung» (Kapital-/Gewinn-/Verrechnungssteuer) stand seit dem
Health-Check als offener Punkt. Primaerquellen als PDF gelesen (ESTV/SSK-Dossier
Besteuerung jur. Personen Stand 1.1.2026, ESTV-Kantonsblatt Zuerich Stand Februar 2026):
Gewinnsteuer 8,5 % Bund + 7 % ZH, Kapitalsteuer nur kantonal 0,75 Promille ZH ohne
Anrechnung an die Gewinnsteuer und ohne Mindeststeuer, Verrechnungssteuer 35 % betrifft
nur Ausschuettungen (nicht die Gruendungseinlage), Kapitaleinlageprinzip Art. 5 Abs. 1bis
VStG fuer spaetere steuerfreie Agio-Rueckzahlung (BGE 151 II 827 eingearbeitet). Neuer
Wiki-Artikel `steuern-bei-gruendung`, INDEX/QUESTIONS/CHANGELOG nachgefuehrt, letzte
Coverage-Luecke der KB damit geschlossen (nur noch Verwaltungsrat-Artikel offen). Kein
Versand, keine Publikation, keine destruktiven Aenderungen. Verbrauch ~3,1 von 5 USD.

**Nachtschicht Mac Mini (~19:30, KB kunde-bopp Projekt-Detailartikel, Dispatch-Run
20260724-193002).** Vorpruefung: keine Sync-/Remote-Tasks, Synobsis Stufe-2 vollstaendig,
Trainingsfenster noch nicht erreicht, Prioritaet-5-Slot vom 18:30-Lauf bereits auf `normen`
verwendet. Naechste offene KB-Frage genommen: `kunde-bopp` hatte zwei unbeantwortete
Projekt-Detailfragen (Giebelweg 12, Baar Zugerstrasse 49). Giebelweg 12 im Projektordner
(PROJEKT-STAND.md + Korrespondenz) recherchiert: Machbarkeitsstudie loeste den
Baumasse-Konflikt via Hangschnitt-Nachweis; darauf hat Christoph Bopp am 30.06.2026 fuer seine
Mutter formell Einwendung gegen die Baulinien-Festsetzung bei der Gemeinde Langnau a/A
eingereicht, Antwort steht noch aus. Neuer Wiki-Artikel `projekt-giebelweg12`, Report
`outputs/2026-07-24_giebelweg12-projektstand.md`, INDEX/QUESTIONS/CHANGELOG nachgefuehrt.
Baar Zugerstrasse 49 nicht beantwortbar: die betroffenen Dateien im IMMO-Projektordner sind
nicht materialisierte OneDrive-Cloud-Platzhalter (`EDEADLK` beim Lesen, auch im
Vordergrund-Read) — mit Ursache in QUESTIONS.md vermerkt statt geraten. Kein Versand, keine
Publikation, keine destruktiven Aenderungen. Verbrauch ~2,8 von 5 USD.

**Nachtschicht Mac Mini (~18:30, Wiki-Link-Fixes normen, Dispatch-Run 20260724-183004).**
Vorpruefung: keine Sync-/Remote-Tasks, Synobsis Stufe-2 bereits vollstaendig, Trainingsfenster
(22:00-06:00) noch nicht erreicht, Fristen-Radar bereits durch Hub-Chef 08:35 versendet.
Prioritaet 5 angewendet: die im heutigen Wissenscheck-Health-Check (07:30) als "leicht"
markierten 4 toten `[[links]]` in der KB `normen` behoben, plus 2 weitere Vorkommen desselben
Fehlermusters gefunden und mitkorrigiert (6 statt 4 Links in `destillate/`). Ein Fall
(`sia-102-2003` in `sia-480-2004.md`) war kein Linkfehler, sondern eine echte, bereits im
Fliesstext korrekt zitierte Bestandsluecke (Ausgabe 2003 nicht digitalisiert) — gemaess Rule
identifikatoren-verifizieren zu Klartext entlinkt statt auf falsche Ausgabe umgebogen.
QUESTIONS.md + CHANGELOG.md nachgefuehrt. Kein Versand, keine Publikation, keine destruktiven
Aenderungen. Verbrauch ~2,4 von 5 USD.

**Hub-Chef-Lauf (08:35, MIT Befund).** Signale: Fristen-Register + Logbuch, Konversations-Destillat
24.07., Mail-Vorfilter 26 h ueber alle Konten, bexio `--verzug`, Outlook-Kalender 7 Tage, Sync-/
Remote-Queues (leer), Aktions-Whitelist v1. **Zwei Registerkorrekturen (A4):** (1) Der vom Radar als
heisseste Tagesaktion gemeldete Punkt «Brandschutz-Korrekturfassung an J. Ziegel, Upload bis Mittag»
ist invertiert und bereits erledigt — die Bringschuld lag bei Ziegel, er hat die korrigierte,
unterzeichnete Stellungnahme am 23.07. 08:52 geliefert
(`260723_KISPI_Therapiestation_1OG_Stellungahme_Auflagenbereinigung_sign.pdf`), sie liegt im
hochgeladenen SRZ-Paket und wurde 23.07. 19:17 ueber eBaugesuche eingereicht (AFB-Eingangsbestaetigung).
(2) Die Selbstfrist 24.07. «Jegen definitive Offerte Los 274.01 anfordern» ist gegenstandslos: das
bereinigte Angebot `Jegen AG O-91161-01.1.pdf` (6 % Rabatt, 2 % Skonto) kam am 25.06. 16:31, die
Auftragserteilung ging gleichentags 17:12 raus. **Zwei Entwuerfe (A5, Versand NICHT autonom):**
(a) Rueckmeldung Prinzippläne zehn Punkte an L. Bajrami (Cc R. Grob, H. Arter) — der Entwurf vom
18./21.07. lag unversendet und war durch die TeKoSi-Vergabe vom 22.07. ueberholt; neu aktualisiert,
plus Bitte um Stellvertretung, weil Bajrami bis 11.08. abwesend ist und die Materialvorbestellung
bis 03.08. laufen muss. (b) Nachfass Installationspläne Therapiekueche an T. Inniger (Cc S. Lanz),
Selbstfrist heute, Frist im Entwurf 29.07. Guards: bestehende Debitoren-/Projektkontakte, kein
Erstkontakt, kein Versand, keine Buchung. QS: `korrektur` (Rechtschreibung + Layout) gruen,
twin-Fidelity 92 (Bajrami) und 90 (Inniger). Briefing an rj@ versendet.

**Nachtschicht Mac Mini (~08:30, QUESTIONS-Kompilierung architekten-synobsis, Dispatch-Run 20260724-083006).**
Vorpruefung: Prioritaeten 1-2 leer/erledigt (Synobsis Stufe-2-Embeddings bereits seit 02:18
vollstaendig, 853/853, siehe eigener Batch-Lauf-Eintrag im CHANGELOG), Fristen-Radar bereits
07:xx versendet, naechste Trainingslektionen (energie/planungsgrundlagen/normen) alle erst
gestern/heute frueh gelaufen und zu gross fuer das Restbudget. Stattdessen Prioritaet 5:
laengst offenen QUESTIONS.md-Punkt "1 Selection" (architekten-synobsis, Sektion 3) bearbeitet
— neuer Wiki-Artikel `wiki/RAUMTYPOLOGIEN.md` (9 Raumtypen, alle 105 Projekte aus
`catalog/typology-map.json`), in INDEX.md verlinkt, QUESTIONS.md-Punkt als erledigt markiert.
Details: CHANGELOG `wissen/architekten-synobsis/`. Kein Versand, keine Publikation, keine
destruktiven Aenderungen am Quellordner.

**Nachtschicht Mac Mini (~07:30, Wissenscheck normen, Dispatch-Run 20260724-073007).**
Zehnter Sweep im Nachtfenster: Prioritaeten 1-4 weiterhin leer/gesaettigt, offene QUESTIONS.md
anderer KBs entweder projektgebunden (kunde-bopp), freigabepflichtig (architekten-synobsis)
oder Teil laufender Trainingsloops (energie/normen). Prioritaet 6 (aeltestes Audit-Datum,
20.07.2026) auf `normen` angewendet — die groesste KB im Hub (271 Destillate), am 23.07.
bereits als "zu gross fuer Standard-Nachtschicht-Budget" zurueckgestellt. Diesmal mit
budget-bewusster, ueberwiegend deterministischer Methodik (grep auf Frontmatter/Links/Status
statt Volltext-Lektuere aller Dateien) durchgefuehrt. **Sonderauftrag geklaert:** der Hinweis
aus dem koordination-Wissenscheck von heute 05:30 (Run-19-Meilenstein "SIA/VKF komplett"
widerspricht dem offenen SIA-181:2020-Posten) ist **kein echter Widerspruch** — der Meilenstein
bezieht sich auf die Inventar-Abdeckung der vorhandenen SharePoint-Dateien, das 181:2020-Upgrade
ist ein separater, kaufpflichtiger Posten (Bring-Schuld Raphael), in REGISTER.md bereits korrekt
mit Warnsymbol gefuehrt. **Ergebnis:** 17 tote `[[links]]` in Destillat-Frontmatter gefunden
(4 leicht behebbare Namensfehler, z.B. `[[sia-2024]]` → Datei heisst `sia-mb-2024-2006.md`;
Rest dokumentierte Luecken/Teil-Destillate), Umlaut-Bug-Baseline aktualisiert (65/271 Destillate
noch ASCII ae/oe/ue), keine neuen Promotion-Kandidaten. Report `wissen/normen/outputs/
2026-07-24_health-check.md`, CHANGELOG + QUESTIONS.md nachgezogen. Verbrauch ~2,7 von 5 USD.

**Logbuch-Radar (~07:00, Freitag).** Ruhiges, aber operativ dichtes Bild. Geschlossen: der
23.07.-Punkt «LBW VKF/Rohdichte» — die 800-kg/m3-Vorgabe (Jens Ziegel/Gruner) ist amtlich/
vertraglich verifiziert (Original-LV BKP 271.13 vom 12.05.2020, Gipsplatten Typ DFIR/DFH2IR =
Typ D nach SN EN 520; Beweiskette Commit `32b8bd0c`); Estermann-Anerkennung 22636 (1'003 kg/m3)
erfuellt sie, 18151 (776 kg/m3) nicht, beide gueltige EI-90-RF1-Nachweise. Fortschritt: RJ hat
23.07. 19:17 die SRZ-Auflagebereinigungs-Unterlagen (Bauentscheid 1171/26 Lenggstrasse 30) ueber
eBaugesuche hochgeladen (AFB-Eingangsbestaetigung da). Heute offen: (1) Brandschutz-
Korrekturfassung an Ziegel senden, Upload bis Mittag; (2) TeKoSi-Besprechung Auftragsbestaetigung
Los 231.10 ca. 10:00 (Teams, Hiltmann); (3) Selbstfristen 24.07. Jegen (definitive Offerte
274.01) + Roethlisberger (Installationsplaene) + Eingabefrist Submission Geschirrspueler
Saumstrasse 21. Neu (Koordination): RJ hat 23.07. 23:42 an Gruner die Kollision Bodenablauf
Duschen ↔ Bodenheizung 1. OG angesprochen, Empfaenger OOO → Ball bei Gruner. Debitoren
unveraendert (RE-00087 99 Tage Mahnung 2; RE-00098/99 4 Tage Stufe 1, Frist 03.08.; Summe
CHF 32'280). Register + Journal nachgefuehrt, Briefing an rj@ versendet. Token gestern (23.07.):
MacBook 100.78 Mio. (~117 USD) + Mac Mini 152.28 Mio. (~102 USD) = 253.06 Mio. (~218 USD).

**Nachtschicht Mac Mini (~06:30, Wettbewerbsresultat 2507 Halden beschafft, Dispatch-Run
20260724-063005).** Neunter Sweep im Nachtfenster: Queues weiterhin leer, Synobsis Stufe 2
weiterhin gesaettigt. Priorität 5 (offene `QUESTIONS.md`) auf `wettbewerbs-dna` angewendet:
der seit 12.07. faellige Jurybericht zum Wettbewerb «Tagesbetreuung und Kindergarten Halden»
(Stadt St.Gallen) lag amtlich auf stadt.sg.ch bereit (URL via WebFetch gefunden, PDF 57 MB
per curl bezogen, `pdftotext` trotz Scan-Anteil vollstaendig textbar). **Für Raphael relevant:**
der eigene Wettbewerbsbeitrag **LIMO erreichte den 5. Rang / 4. Preis (CHF 10'000) von 51
eingereichten Beitraegen**; Sieger wurde «ZVIERI (1)» von Richter Tobler GmbH, Basel
(CHF 40'000, einstimmige Empfehlung). Dossier `wissen/wettbewerbs-dna/wiki/teilnahmen/
2507-tkhl-ps-halden.md` um Ergebnis, Jury-Zitate (Lob/Kritik) und Delta-zum-1.-Rang ergaenzt;
Muster `delta-zum-ersten-rang.md` von 6 auf 7 Dossiers erweitert (neuer Befund: harte
Programmvorgaben wie „Hartplatz erhalten" sind Ausschluss- statt Qualitaetskriterien — LIMO
reduzierte den Hartplatz auf ein Ballspielfeld, der Sieger erhielt ihn bewusst integral).
**Offene Frage an Raphael:** der amtliche Jurybericht nennt den Architektur-Verfasser von
LIMO zweimal als «jann erhard architekt, Zürich», nicht «Raphael Jans Architekten» (Bericht
S. 41 + S. 67) — gemaess Identifikatoren-Regel nicht gedeutet, sondern in
`wissen/wettbewerbs-dna/wiki/QUESTIONS.md` als Klaerungspunkt festgehalten (moegliche
Buerogemeinschaft/anderer Rechtstraeger fuer diese Eingabe?). CHANGELOG + INDEX.md
nachgezogen. Verbrauch ~4.0 von 5 USD.

**Nachtschicht Mac Mini (~05:30, Wissenscheck koordination, Dispatch-Run 20260724-053003).**
Achter Sweep im Nachtfenster: Queues weiterhin leer, Synobsis Stufe 2 weiterhin gesaettigt
(12. Mal), alle drei Mac-Mini-Trainingsloops (energie, planungsgrundlagen, normen) bereits
heute intensiv gelaufen. Priorität 6 (Wissenscheck, aeltestes Audit-Datum) auf `koordination`
angewendet (Erst-Audit 20.07., seither Runs 10-13 ohne Re-Audit). Ergebnis: Register weiterhin
diszipliniert gefuehrt, 1 operativer Befund — der normen-Run-19-Meilenstein "SIA/VKF komplett"
(24.07., MacBook Pro) widerspricht dem in QUERBEZUEGE selbst mehrfach bestaetigten offenen
Bring-Schuld-Posten SIA 181:2020-Re-Destillat (weiterhin unerledigt in normen/QUESTIONS.md);
reine Zeitluecke (Run 19 nach dem letzten Wissens-Chef-Lauf), noch ungeprueft. Empfehlung an
den naechsten Wissens-Chef-Lauf (Run 14) zur Klaerung/Praezisierung vermerkt, damit der Punkt
nicht stillschweigend in die Pause-Empfehlung fuer `normen-training-nacht` einfliesst. Report
`wissen/koordination/outputs/2026-07-24_health-check.md`, CHANGELOG nachgezogen. Verbrauch
~2,6 von 5 USD.

**Nachtschicht Mac Mini (~04:30, erster Wiki-Artikel entwurfs-referenzen, Dispatch-Run
20260724-043003).** Siebter Sweep im Nachtfenster: Queues weiterhin leer, Synobsis Stufe 2
weiterhin gesaettigt. Priorität 5 (offene `QUESTIONS.md`) auf `architekten-synobsis`
(21 Tage unveraendert, aber Grossteil der offenen Punkte sind Umbenennungs-/Zusammenfuehr-
Fragen mit Freigabe-Pflicht, fuer unbeaufsichtigte Nachtschicht ungeeignet) und danach auf
den seit dem 23.07.-Health-Check offenen Promotion-Kandidaten in `entwurfs-referenzen`
angewendet: der Vorlauf hatte die Kompilation von `typologien/bildung.md` zweimal als „zu
gross" zurueckgestellt, bei genauerer Pruefung war es aber reine Kompilation aus zwei
bereits refuter-verifizierten Quellen (Parameter-Set `schule-volksschule-ch.json` +
wettbewerbs-dna-Benchmark `kennwerte-schulbauten`, established), keine neue Recherche.
Neuer Wiki-Artikel `wissen/entwurfs-referenzen/wiki/typologien/bildung.md` (erster echter
Wiki-Artikel dieser bisher reinen Parameter-Set-KB): HNF/GF-Band 0.52–0.54, 900-m²-
Geschossflaechen-Schwelle als harte Entwurfsregel, Programm-Mengengerueest, Materialien,
Kostendach-Groessenordnung, 6 Referenzprojekte; zwei offene Punkte (GF-Widerspruch 2206
Schoental, fehlender Reha-Subtyp) bewusst nicht geloest und ausgewiesen. Haupt-INDEX +
Domaenen-INDEX + QUESTIONS.md + CHANGELOG nachgezogen. Verbrauch ~2,3 von 5 USD.

**Nachtschicht Mac Mini (~03:30, KB-Wachstum firmengruendung-ch, Dispatch-Run
20260724-033007).** Sechster Sweep im Nachtfenster: Queues weiterhin leer, Synobsis
Stufe 2 weiterhin gesaettigt. Priorität 5 (offene `QUESTIONS.md`) diesmal auf den zwei
aeltesten noch ungeprueften KBs `kunde-bopp` und `firmengruendung-ch` angewendet:
`kunde-bopp` verlangt Mail-/OneDrive-Recherche zu vier Projektfaellen (zu gross fuer
Nachtschicht-Budget, ausserdem OneDrive-Stall-Risiko), `firmengruendung-ch` hatte den
klar umrissenen Backlog-Punkt „Holding-Struktur ueber bestehende AG". Neuer
Wiki-Artikel `wissen/firmengruendung-ch/wiki/holding-struktur.md`: kantonales
Holdingprivileg seit STAF 01.01.2020 abgeschafft, Beteiligungsabzug Art. 69/70 DBG
bleibt (Schwellen 10 % Kapital/Gewinn oder Verkehrswert ≥ CHF 1 Mio.), zentrale
Steuerfalle bei Einbringung der eigenen AG in eine neu gegruendete Holding ist die
Transponierung (Art. 20a Abs. 1 lit. b DBG, keine Bagatellgrenze), verwandt die
indirekte Teilliquidation (Art. 20a Abs. 1 lit. a DBG) bei Verkauf an Dritte. Art.
69/70 und 20a DBG direkt am Fedlex-Volltext verifiziert (Filestore-Methode Rule
260721), nicht nur Sekundaerquellen. QUESTIONS.md/INDEX.md/CHANGELOG aktualisiert,
Backlink in `steuern-ag-inhaber.md` ergaenzt. Verbrauch ~2,2 von 5 USD.

**Nachtschicht Mac Mini (~02:30, alle sechs Prioritaeten ohne Treffer, Dispatch-Run
20260724-023002).** Fuenfter Sweep im selben Nachtfenster (nach 22:30/23:35/00:30/01:30):
Queues (`remote-tasks/pending`, `sync-tasks/mac-mini`) leer. Synobsis Stufe 2 weiterhin
gesaettigt (12. Leerlauf in Folge, letzter Commit 02:30 durch den launchd-Job selbst).
Fristen-Register zuletzt 23.07. per Radar-Lauf aktualisiert, naechster planmaessiger
Radar (`logbuch-radar`) erst 06:45 — kein unbeobachtetes Ueberfaelliges seit gestern,
kein Grund fuer eine vorgezogene Zusammenstellung. Alle 16 KB-CHANGELOGs zeigen Aktivitaet
innert der letzten 24 Std (aeltestes: `architekten-synobsis` 02:20 durch den Batch-Job selbst).
Wissenscheck-Kandidaten mit aeltestem Health-Check-Datum (`koordination` 20.07., `normen`
20.07.) sind beide bereits in fruaeheren Sweeps dieser Nacht explizit geprueft und als
ungeeignet verworfen (koordination = sich selbst taeglich auditierende Meta-KB, normen =
zu gross fuer das Nachtschicht-Budget, in dessen QUESTIONS.md vermerkt). QUESTIONS.md-Check
in `auflagebereinigung` (nur 1 offener, nicht spruchreifer Punkt) und `projekt-lessons`
(KB noch ohne Rohmaterial, seit 02.06. unveraendert) ergab ebenfalls keinen tragfaehigen
Kleinauftrag. Keine Aktion erfunden — Zyklus bewusst ohne neues Deliverable beendet.
Verbrauch: ~1,4 von 5 USD.

**Nachtschicht Mac Mini (~01:30, KB-Wartung grobkosten, Dispatch-Run 20260724-013006).**
Vierter Prioritaeten-Sweep im Nachtfenster fand bei den ueblichen Prioritaeten (Queues,
Synobsis, Training) erneut nichts Neues — aber ein Cross-KB-CHANGELOG-Alterscheck zeigte
`wissen/grobkosten` als seit 21.07. unbearbeitet und mit drei seit 3 Wochen (Health-Check
01.07./21.07.) bekannten, aber nie nachgezogenen strukturellen Findings. Rein additive
Wartung ohne inhaltlichen Eingriff nachgeholt: `wiki/QUESTIONS.md` und `raw/_INGESTED.md`
neu angelegt, Frontmatter in `wiki/kennwerte.md` ergaenzt, rund 30 Umlaut-Umschriften
(ae/oe/ue) im Fliesstext auf echte Umlaute korrigiert (Rule `umlaute-konvention.md`),
`INDEX.md` bereinigt. Kennwerte/Tabellen selbst unveraendert. CHANGELOG-Eintrag in
`wissen/grobkosten/CHANGELOG.md`. Git-Push scheiterte am bekannten verwaisten `index.lock`
aus dem parallelen 00:30-Lauf (Sandbox blockiert manuelles Entfernen); Aenderungen liegen
sicher auf dem NAS, `nas-selfcommit.sh` uebernimmt Commit+Push automatisch (Lock-Selbstheilung
> 1 Std). Budget ~2.4 von 5 USD.

**Nachtschicht Mac Mini (~00:30, Prioritaeten-Sweep ohne neuen Treffer, Dispatch-Run
20260724-003005).** Dritter Sweep in Folge im selben Nachtfenster (nach 22:30 und 23:35 am
23.07.) mit identischem Befund: Queues (`remote-tasks/pending`, `sync-tasks/mac-mini`) leer;
Synobsis weiterhin gesaettigt (Kuratierung 853/853 seit 03.07., Batch-Rebuild 11x leer in
Folge, Pausierungsempfehlung an Raphael steht bereits); alle vier Mac-Mini-Trainingsdomaenen
gesaettigt — `planungsgrundlagen` laeuft zeitgleich im parallelen 25-USD-Intensivlauf
(Dispatch-Run 20260724-003004), `energie` durch Wissens-Chef Run 13 vor unter einer Stunde
bearbeitet, Normen DIN/VSS/RAL dreifach als „Inventar komplett" bestaetigt (260716) ohne neue
Dateien seit dem letzten Scan; `normen`-Wissenscheck (aeltestes Audit-Datum, 20.07.) bereits im
22:30-Lauf als zu gross geflaggt, keine neue Information seither. Cross-Check `wissen/koordination/
CHANGELOG.md`: praktisch alle KBs (immobilienbewertung, spec, baurecht, twin, grobkosten,
kunde-bopp, auflagebereinigung, entwurfs-referenzen, firmengruendung-ch) wurden innert der
letzten 1-3 Tage durch den Cross-KB-Wissens-Chef-Lauf health-gecheckt — kein frisches Audit-Ziel.
Versuch, das heute faellige Fristen-Item „KISPI LOS274.01 Jegen" per Apple-Mail-osascript
gegenzupruefen, ist nach 2 Minuten in einen bekannten Hang (`feedback_background_agent_onedrive_stall`-
Muster) gelaufen und wurde abgebrochen, statt das Budget in einem unsicheren Retry zu verbrennen;
das Fristen-Register selbst hat den Punkt bereits korrekt erfasst (Gegenpartei bis 11.08. OOO).
Keine Aktion erfunden — Zyklus bewusst ohne neues Deliverable beendet. Verbrauch: ~2.0 USD von
5 USD Budget.

## 2026-07-23

**Nachtschicht Mac Mini (~23:35, Wiki-Artikel-Kompilierung, Dispatch-Run 20260723-233001).**
Vor Aufgabenwahl den Git-Backup-Punkt aus dem parallelen 22:30-Energie-Intensivlauf verifiziert:
`energie-run86` sowie mehrere `nas-selfcommit`-Commits liegen bereits im lokalen `main` — die
im run85-Ergebnis offen gelassene Unsicherheit ist erledigt, keine Aktion noetig. Synobsis
(Prio 2) weiterhin gesaettigt (853/853, taeglicher No-Op-Rebuild). Alle drei Mac-Mini-
Trainingsdomaenen (energie, planungsgrundlagen, normen DIN/VSS/RAL) zeigten `CHANGELOG`-
Aktivitaet von vor unter einer Stunde (Wissens-Chef Run 13, Cross-KB) — kein neuer Trainingslauf
noetig. Stattdessen Prioritaet 5 gezogen: das offene QUESTIONS-Item «EN 520 Original-Destillat
fehlt» (KB `normen`, DIN/VSS/RAL-Scope) bearbeitet. SharePoint PL-02 02_Normen/DIN_Norm geprueft
(72 Dateien) — SN EN 520 nicht im Bestand, nur kostenpflichtig erhaeltlich, kein Kauf ohne
Freigabe. Oeffentliche Normvorschau (baunormenlexikon.de) recherchiert: liefert die exakte
Fundstelle Ziffer 4.13 «Definierte Dichte (Typ D)» sowie zwei bisher fehlende Typenbuchstaben
(E, P) — beides in `wiki/en-520-gipsplattentypen.md` und `wiki/REGISTER.md` nachgetragen, das
QUESTIONS-Item mit klarer Restaufgaben-Abgrenzung (Volltext-Kauf nur mit Raphaels Freigabe)
geschlossen. Report `wissen/normen/outputs/2026-07-23_en-520-bestandsluecke.md`, CHANGELOG
ergaenzt. Verbrauch: ~2.6 USD von 5 USD Budget.

**Nachtschicht Mac Mini (~22:30, Registerpflege + Verifikation, Dispatch-Run 20260723-223001).**
Alle sechs Prioritaeten erneut durchlaufen, diesmal mit aktiver Verifikation statt reiner
Log-Lektuere: Queues leer; Synobsis Stufe 2 nicht erneut angestossen (11. Leerlauf steht);
Fristen-Register bereits um 21:30 frisch geprueft; alle vier Mac-Mini-Trainingsdomaenen
gesaettigt (`energie` laeuft parallel im zeitgleichen 25-USD-Intensivlauf, `planungsgrundlagen`
heute bereits Run 57, Normen DIN/VSS/RAL vollstaendig abgehakt mit Pausierungsempfehlung).
Bei Prioritaet 6 (wissenscheck, aeltestes Audit-Datum) `normen` (20.07.) identifiziert, aber mit
289 Destillat-/Wiki-Dateien als zu gross fuer das Nachtschicht-Budget erkannt und in
`wissen/normen/wiki/QUESTIONS.md` entsprechend vermerkt (braucht dedizierten Lauf). Statt
Beschaeftigung zu erfinden, zwei bereits als offen gefuehrte `planungsgrundlagen`-Fragen (B2
ZH-Umsetzung RPG 2, D8 graue-Energie-Ueberfuehrung) per Live-Websuche auf zwischenzeitliche
Publikationen geprueft: keine neue Entwicklung, beide Eintraege bleiben korrekt "ausstehend".
Dabei einen scheinbaren Widerspruch (Websuche nannte 04.04.2025 statt 29.08.2025 als
MuKEn-2025-Verabschiedungsdatum) gegen die Primaerquelle (energiehub-gebaeude.ch) verifiziert:
KB-Wert 29.08.2025 ist korrekt, keine Aenderung noetig. Kein neuer Content-Fund, aber echte
Verifikationsarbeit statt Wiederholung der 21:30-Sondierung. CHANGELOG `normen` ergaenzt.
Verbrauch: ~2.7 USD von 5 USD Budget.

**Nachtschicht Mac Mini (~21:30, keine Aufgabe gewaehlt, Dispatch-Run 20260723-213006).**
Alle sechs Prioritaeten sorgfaeltig durchlaufen, keine mit gutem Kosten-Nutzen-Verhaeltnis
gefunden: (1) remote-tasks/sync-tasks weiterhin leer. (2) Synobsis Stufe 2 zum 11. Mal in
Folge leer, nicht erneut angestossen. (3) Fristen-Register (`logbuch/fristen.md`) frisch,
alle KISPI-Fristen (Los274.01, Installationsplaene Roethlisberger) faellig erst morgen
24.07., kein unbeobachtetes Ueberfaelliges gefunden. (4) Trainingsprogramme der Mac-Mini-
Domaenen (energie, planungsgrundlagen, DIN/VSS/RAL-Normen) bereits heute gelaufen, kein
neuer Stoff. (5) QUESTIONS.md-Recherche gegen alle KBs mit offenen Punkten geprueft:
`energie` E84/E94 sind mehrfach wiederholte Negativ-Rechercheversuche (kein neuer
Ansatzpunkt), E103 braucht ausdruecklich Raphaels Entscheid vor jeder Bearbeitung (eigene
Projektdaten auswerten oder nicht); `normen` ist heute bereits durch den MacBook-Dauerschicht-
Loop (Run 18, SIA/VKF) aktiv bearbeitet, DIN/VSS/RAL-Seite bereits gesaettigt; die
SIA-500-Kennwert-Frage in `baurecht`/`normen` ist bereits praezise als ungeklaert geflaggt
(Cross-KB Run 11) und nicht ohne Neufund loesbar. (6) Wissenscheck Phase 1 auf der KB mit
dem aeltesten Audit-Datum: `koordination` (20.07., staerkstes Datum gleichauf mit `normen`)
ist eine sich selbst laufend audit­ierende Meta-KB (taeglicher Wissens-Chef, zuletzt Run 12
am 22.07.) — ein zusaetzlicher Standard-Audit haette laut eigener Vorlaeufer-Einschaetzung
("Audit bewusst kompakt gehalten") kaum Mehrwert; `architekten-synobsis` (07-21) ist eine
Tool-KB ohne Standard-Audit-Schema (Health-Indikator ist der Scan-Status, heute bereits
geprueft). Der `baurecht`-Health-Check (07-22) listet nur bereits als "eigener Auftrag"
klassifizierte groessere Posten (Umlaut-Bereinigung, Status-Promotion 4 Artikel, explizit
Phase-2/interaktiv). Fazit: keine Aufgabe erfuellt die Budget-/Eignungs-Kriterien fuer eine
unbeaufsichtigte Nachtschicht; Beschaeftigung wird nicht erfunden. Verbrauch: ~2.3 USD von
5 USD Budget (reine Priorisierungs-/Sondierungsarbeit, keine Aenderung an KBs vorgenommen).

**Nachtschicht Mac Mini (~20:45, Registerpflege entwurfs-referenzen, Dispatch-Run
20260723-203001).** Priorisierung durchlaufen: Queues weiterhin leer, Synobsis Stufe 2 nicht
erneut angestossen, keine neue Trainingslektion faellig, keine offene QUESTIONS-Recherche mit
gutem Kosten-Nutzen-Verhaeltnis. Stattdessen den im 19:00-Health-Check gefundenen Widerspruch
in `wissen/entwurfs-referenzen` behoben: die vier Domaenen-Sub-Indizes
(architekten/entwurfsprinzipien/materialien/typologien, je `wiki/<domaene>/INDEX.md`) sowie
die vier Domaenen-Abschnitte im Haupt-`wiki/INDEX.md` behaupteten weiterhin woertlich einen
ausstehenden Roh-Seed-Import, obwohl dieser Weg bereits seit 20.07.2026 als UEBERHOLT gilt
(Abfrage-Workflow gegen `architekten-synobsis` statt Roh-Import). Alle acht Stellen auf den
aktuellen Wortlaut umgestellt, `QUESTIONS.md` nachgezogen und den Promotion-Kandidaten
`typologien/bildung.md` (aus dem 19:00-Lauf) dort als offene Aufgabe verankert, damit er nicht
nur im CHANGELOG steht. CHANGELOG-Eintrag ergaenzt. Bewusst NICHT begonnen: die Kompilation von
`bildung.md` selbst (neuer Wiki-Artikel mit Quellenpruefung, zu gross fuer den Nachtschicht-
Rahmen) — bleibt als Promotion-Kandidat fuer einen dedizierten Lauf offen. Reine
Registerpflege, kein neuer Rechercheaufwand. Verbrauch: unter 2 USD von 5 USD Budget.

**Nachtschicht Mac Mini (~19:45, Registerpflege planungsgrundlagen, Dispatch-Run 20260723-193005).**
Priorisierung durchlaufen (identisch zum 19:00-Lauf unten bestaetigt): Queues leer, Synobsis
Stufe 2 zum 11. Mal leer (nicht wiederholt), `energie` heute bereits trainiert (Run 84),
Fristen-Register war 19:15 bereits frisch (nicht redundant nachgezogen). Bei Durchsicht von
`wissen/planungsgrundlagen/wiki/QUESTIONS.md` (Domaene B) konkrete Registerinkonsistenz
gefunden statt eines neuen Rechercheauftrags: der ZH-Naturgefahren-GIS-Endpunkt stand in
§7b und §8 von `kartenportale-naturgefahren-objektschutz.md` weiterhin als "offen", obwohl
§8a (Run 54, 20.07.) die Loesung bereits enthielt (`maps.zh.ch/wfs/OGDZHWFS`, Layer
`ms:ogd-0044_giszhpub_wb_hw_gk_f`). Beide Stellen + `QUESTIONS.md` + `curriculum.md`
nachgezogen, CHANGELOG ergaenzt, Report `outputs/2026-07-23_training-run57-registerpflege.md`.
Kein neuer Rechercheaufwand, reine Konsistenzpflege. Verbrauch: ~2.6 USD von 5 USD Budget.

**Nachtschicht Mac Mini (~19:00, Wissens-Health-Check).** Priorisierung durchlaufen:
remote-tasks/sync-tasks leer, Synobsis Stufe 2 weiterhin erschoepft (853/853, kein neuer
Stoff seit 02.07., Empfehlung Task-Stop steht seit 9 Laeufen unveraendert), `energie` heute
bereits trainiert (Run 84, 08:xx), `planungsgrundlagen` hat nur eine offene Frage (D9
MFH-/ZEV-Betriebsenergie) und die war gestern (22.07.) bereits negativ bestaetigt (kein
neues Material), DIN/VSS/RAL-Normeninventar vollstaendig abgehakt (Q&A-Selbstbefragung +
Retro-Verifikation je Datei). Daher Fallback Skill `wissenscheck` Phase 1 auf
`entwurfs-referenzen` (aeltestes Audit-Datum, 20.07., 3 Tage). Fund: die vier
Domaenen-Sub-Indizes (architekten/entwurfsprinzipien/materialien/typologien) widersprechen
weiterhin dem Haupt-Register (behaupten ausstehenden Seed-Import, obwohl seit 20.07. als
UEBERHOLT erklaert). Promotion-Kandidat: `typologien/bildung.md` liesse sich jetzt aus dem
bereits refuter-verifizierten Schulhaus-Parameter-Set + wettbewerbs-dna-Benchmark
kompilieren — waere der erste echte Wiki-Artikel dieser bisher JSON-only-KB. Report
`wissen/entwurfs-referenzen/outputs/2026-07-23_health-check.md`, CHANGELOG ergaenzt. Keine
Phase-2-Aktion (Nachtschicht-Scope). Verbrauch: ~2.9 USD von 5 USD Budget.

**Hub-Chef-Lauf ohne Befund (~08:40).** Signale eingesammelt: Fristen-Register + LOGBUCH (7-Tage-Horizont), Konversations-Destillat 23.07. (Kernbefund: keine echten Gespraeche im 26h-Fenster, alle Sessions Routine/Loops), Mail-Vorfilter 26h (alle Konten inkl. M365 + outlook.com), bexio `--verzug` und `--abgleich`. Ergebnis: **kein neuer Befund, keine Whitelist-Aktion, kein Entwurf faellig.** Begruendung im Einzelnen: (1) Der Radar-Lauf ~07:00 hat heute bereits EIN umfassendes Briefing an rj@ versendet (TeKoSi Los 231.10 beauftragt, KISPI-Brandschutz finale Abgabe/Upload bis Mittag, Debitoren CHF 32'280, Saumstrasse 21 Frist 24.07., Koordinationssitzung 13:00, Standing-Infra Umlaut-Config/Dispatch-Token/Twin-KB) — eine zweite Mail waere reine Doppelmeldung. (2) bexio `--verzug` unveraendert (RE-00087 98 Tg auf **Mahnung 2** → naechste Stufe waere 3/Betreibung = NICHT A1-whitelisted, nur Entwurf/Entscheid Raphael; RE-00098/99 je 3 Tg, bereits auf **Stufe 1 Zahlungserinnerung** mit laufender Frist 03.08. → keine A1-Auslösung). `--abgleich`: die drei KISPI-Positionen sind echt-offen verifiziert (die 19 «gebucht ohne Bankbeleg» sind Alt-Positionen 2022–2025, kein Bezug). (3) A2 (Kalender): heutige 13:00-Sitzung bereits im Kalender, kein neuer eindeutiger Termin. (4) Zeitkritische Punkte heute (Ziegel-Korrekturfassung → Upload bis Mittag; Stadelmann-Rohdichte-Antwort 06:53) werden von Raphael aktiv bearbeitet (RJ-Sent 07:21), kein autonomer Beitrag ohne Ziegel-Fassung moeglich. Standing «Aktion Raphael (Config/Infra)» bleibt offen und ist im Register + Radar-Mail bereits gefuehrt. Keine Mail versendet.

**Nachtschicht Mac Mini (~08:35, Wissens-Health-Check Folgelauf).** Doppelarbeit-Guard: 07:30-
Lauf (siehe Eintrag unten) inhaltlich geprueft — Prioritaeten 1-5 dort bereits als gesaettigt
bestaetigt (Queues leer, Synobsis erschoepft, Fristen-Radar erledigt, Trainings-Loops gesaettigt),
Prioritaet 6 (wissenscheck) dort auf `spec` angewendet. Fuer diesen Lauf naechstaelteste
Audit-KB gewaehlt: `immobilienbewertung` (letzter Check 01.07., 22 Tage, noch nicht vom 07:30-Lauf
abgedeckt). Ergebnis: alle 5 Findings vom 01.07. korrekt behoben. Neuer Hauptfund — analog zu
`spec` derselben Nacht — **KB-weite ae/oe/ue-Ersatzschreibung statt echter Umlaute** ueber
praktisch alle 26 Wiki-Dateien (>2'000 Vorkommen; `residualwertmethode.md` sogar 0 echte Umlaute
gegen 197 Ersatzschreibungen); der 01.07.-Check hatte dies faelschlich als gruen bewertet, ohne
auszuzaehlen. Zwei kleinere Funde: ~30 Pseudo-Backlinks `[[marktdaten-gemeinden]]` ohne
Artikel-Ziel (Ordner statt Datei); `az-gfz-kennwerte.md` reifer Promotion-Kandidat
(emerging→established, haengt nur an Langnau-BZO-Revision). Report
`wissen/immobilienbewertung/outputs/2026-07-23_health-check.md`, CHANGELOG ergaenzt. Keine
Phase-2-Aktion (Nachtschicht-Scope). **Beobachtung fuer Raphael:** zwei KBs in derselben Nacht
zeigen denselben Blindspot — Audit F ("Schreibregel-Verstoesse") im Skill `wissenscheck` wurde
bisher offenbar nur "gelesen", nie tatsaechlich ausgezaehlt. Lohnt sich, den Skill um eine
verbindliche Grep-Auszaehlung zu ergaenzen, bevor weitere KBs denselben Fehlbefund erben.

**Nachtschicht Mac Mini (~07:35, Wissens-Health-Check).** Priorisierung durchlaufen: sync-tasks/
mac-mini (2 Commit-Anfragen, bereits vom NAS-Selfcommit d83fcdf1 erfasst → nach `done/`
verschoben), Synobsis Stufe 2 (Inventar seit 17+ Naechten unveraendert erschoepft, keine
Aktion), Fristen-Radar (bereits am Morgen erledigt), Trainings-Loops (`energie`/
`planungsgrundlagen`/Normen DIN-VSS-RAL alle gesaettigt, offene Punkte explizit "Entscheid
Raphael noetig") — daher Fallback Skill `wissenscheck` Phase 1 auf `wissen/spec` (aeltestes
Audit-Datum, 01.07., 22 Tage). Fund: die KB verstoesst KB-weit gegen ihre eigene Echte-
Umlaute-Regel (968 ae/oe/ue-Ersatzschreibungen gegen 1 echten Umlaut), vom letzten Health-Check
uebersehen; zwei weitere Register-/Metadaten-Drifts (`the-spec.md`-Datum seit 22 Tagen,
`_INGESTED.md` veraltet). Report `wissen/spec/outputs/2026-07-23_health-check.md`, CHANGELOG
ergaenzt. Keine Phase-2-Aktion (Nachtschicht-Scope).

**Radar-Lauf (Donnerstag, ~07:00).** KISPI im Zentrum, zwei echte Fortschritte. (1) **TeKoSi Tuerfachplanung Los 231.10 beauftragt** — RJ 22.07. 22:11 an Hiltmann, Kostendach CHF 14'000 inkl. MwSt in Ruecksprache mit dem Bauherrn; schliesst die lange offene 32/42-Tueren-Kette und die Selbstfrist 20.07. (2) **KISPI Brandschutz-Auflagenbereinigung: finale Abgabe** von J. Ziegel (22.07. 15:34, 13 Anhaenge); RJ prueft, verlangt 18:19 die Korrektur der Brandlastberechnungs-Verweise und die korrigierte Fassung fuer heute Morgen → Upload bis Mittag = harte Naheliegend-Aktion heute (Ziegel-Antwort um 06:55 noch nicht da). Ergaenzend O. Stadelmann antwortet 06:53 zur LBW-Rohdichte (VKF-Nachweis). Neu: Saumstrasse 21 Geschirrspueler-Ersatz (BKP 258), Offerte reap.ch, Eingabefrist NETTOSHOP 24.07.; Lueftungsgitter-Lieferung heute 09:00; Koordinationssitzung Gruner/Jans/KISPI heute 13:00 (ohne TeKoSi, Hiltmann sagte kurzfristig ab). Debitoren: RE-00087 98 Tage/Mahnung 2 unbezahlt, RE-00098/99 jetzt Stufe 1 (RJs Zahlungserinnerungen 21.07.), Total CHF 32'280. Unveraendert offen (Aktion Raphael): Umlaut-Regel in Mini-Scheduled-Tasks (Config), Dispatch-Token (`claude setup-token`), Twin-KB-Rohquellen. Mac Mini erneut nicht per SSH erreichbar (Nachtschicht via Dispatch aktiv). Token 22.07.: MacBook 54.95 Mio./~64 USD; Mini nicht messbar. Register-Stand nachgefuehrt; Briefing an rj@ versendet.

---

## 2026-07-22

**Nachtschicht-Zyklus Mac Mini (~21:30) — Priorität 5: Jurybericht-Beobachtung 2501 Steinfabrik in `wettbewerbs-dna` — Termin von «Ende März» auf «Sommer 2026» korrigiert.**
Doppelarbeit-Guard geprüft (dispatch/log/ 20:30/19:30 inhaltlich gelesen; Queues leer;
Synobsis stabil; Fristen-Radar heute bereits vom Hub-Chef abgedeckt; Priorität 5 im
20:30-Lauf auf einer anderen KB — `auflagebereinigung` — erledigt). Offenen
Beobachtungspunkt aus `wissen/wettbewerbs-dna/wiki/QUESTIONS.md` aufgegriffen (Jurybericht
2501 Steinfabrik/Hafenareal Pfäffikon SZ, seit sechs Prüfungen ohne Fortschritt auf
konkurado.ch). Diesmal gemäss der bereits dokumentierten Methoden-Lehre (Fall 2507)
zusätzlich die Verfahrensbegleitung selbst geprüft: SUTER • VON KÄNEL • WILD (skw.ch,
Downloads-Seite zum Verfahren) nennt neu «Verfahren abgeschlossen. Jurybericht folgt im
Sommer 2026» — die im Programm/Entscheid-E-Mail angekündigte Frist «Ende März 2026» ist
damit primärquellenbelegt überholt. Dossier `wiki/teilnahmen/2501-steinfabrik-hafenareal.md`
und QUESTIONS.md nachgeführt, inkl. Empfehlung, erst wieder ab Spätsommer 2026 zu prüfen
statt wöchentlich redundant zu beobachten. CHANGELOG ergänzt. Kosten ca. 1.9 von 5 USD.

**Nachtschicht-Zyklus Mac Mini (~20:30) — Priorität 5: zwei QUESTIONS-Lücken 2619-KISPI in der KB `auflagebereinigung` echt geklärt (Primärquelle statt Sekundär-Zitat).**
Doppelarbeit-Guard geprüft (dispatch/log/ 19:30/18:30 inhaltlich gelesen; Queues leer;
Synobsis stabil; Fristen-Radar heute bereits mehrfach vom Hub-Chef-Lauf abgedeckt, kein
neuer Beitrag nötig). Aus dem eigenen Health-Check-Fund vom 21.07. aufgegriffen: der Punkt
«Adressdiskrepanz Lenggstrasse/Lengstrasse» war am 01.07. fälschlich als geklärt archiviert
worden (Verwechslung mit einer anderen Adressfrage, «ETC»-Tippfehler), der 21.07.-Check hatte
das korrekt bemängelt und den Punkt zurück auf «echt offen» gesetzt. Diesmal das Dispositiv
selbst gelesen statt zu zitieren: Bauentscheid 1171/26 vom 8. Juni 2026 (B26-00705.01, Stadt
Zürich Amt für Baubewilligungen) — Titel und Bauherrschaftsadresse lauten beide «Lenggstrasse
30» (Doppel-g), deckungsgleich mit der GRUNER-Adressliste; vereinzelte Dateinamen mit Einzel-g
sind blosse Benennungsvarianten. Als Nebenbefund die zweite offene Frage «Vorabzug vs.
rechtskräftig» mitgeklärt (bereits durch Diff-Output 13.06. faktisch beantwortet, jetzt formal
archiviert). QUESTIONS.md/CHANGELOG der KB `auflagebereinigung` nachgeführt. Kosten ca. 2.3
von 5 USD Budget.

**Nachtschicht-Zyklus Mac Mini (~19:30) — Priorität 5: ersetzt/ersetzt_durch-Lücke (DIN-Teilmenge) geschlossen.**
Doppelarbeit-Guard geprüft (dispatch/log/ 19:30/18:30 inhaltlich gelesen, Queues leer,
Synobsis stabil, Fristen-Radar heute bereits mehrfach abgedeckt). Aus dem Audit-F-Fund vom
21.07. (127 Destillate der KB `normen` ohne Nachfolge-Feld) die Mac-Mini-exklusive DIN/VSS/
RAL-Teilmenge bearbeitet: 3 von 67 Destillaten ohne `ersetzt`/`ersetzt_durch` gefunden
(din-1356-6-2006, din-276-4-2009, din-4102-2-1977), via DIN Media (dinmedia.de) belegt
nachgetragen — din-276-4-2009 zurückgezogen/ersetzt durch DIN 276:2018-12, din-4102-2-1977
formal weiterhin gültig (Prüfverfahren teilweise durch DIN-EN-13xx-Reihe abgelöst),
din-1356-6-2006 ohne Nachfolger. Bonus-Konsistenzfix im verlinkten din-276-1-2008. Restumfang
(~123 Destillate, SIA/VKF) bleibt MacBook-Pro-Scope. Abgelegt: `wissen/normen/outputs/
2026-07-22_din-ersetzt-durch-luecke.md`, QUESTIONS.md/CHANGELOG nachgeführt. Kosten ca. 4.1
von 5 USD Budget.

**Nachtschicht-Zyklus Mac Mini (~19:00) — Umlaut-Bug-Hypothese aus dem 08:30-Lauf dediziert verifiziert: CONFIRMED, betrifft alle 5 Trainings-KBs.**
Doppelarbeit-Guard geprüft (dispatch/log/ 18:30 inhaltlich gelesen, Queues leer, Synobsis
Stufe 2 läuft stabil automatisiert weiter). Aufgegriffen: die im ~08:30-Lauf ausdrücklich als
unbewiesen markierte Hypothese, dass die seit 19.07. eingeführte Haiku/Sonnet-Subagenten-
Delegation ("Minimum Viable Model") die Umlaut-Regel nicht an die Subagenten weitergibt. Statt
zu spekulieren: (1) alle fünf lokalen Scheduled-Task-Prompts (`~/.claude/scheduled-tasks/`)
geprüft — identischer "Modell-Politik"-Block, keiner erwähnt die Umlaut-Konvention; (2) echte
`outputs/*.md` seit 19.07. in allen fünf betroffenen KBs (baurecht/energie/planungsgrundlagen/
normen/architekten-synobsis) auf ASCII-Ersatzformen (fuer/ueber/waere/moeglich/...) durchsucht.
**Befund: CONFIRMED, alle fünf KBs betroffen** — auch `normen-training-mini`, das im 21.07.-Fund
fälschlich als Gegenprobe für "nicht betroffen" galt. Fix ist klar (ein Satz je Scheduled-Task-
Prompt), aber NICHT autonom umgesetzt: Config-/Infrastruktur-Änderung an lokalen Task-Dateien
fällt unter das Verbot in `logbuch/AKTIONS-WHITELIST.md`. Für nächstes hub-chef-Briefing bzw.
Raphael direkt vorgemerkt. Abgelegt: `wissen/baurecht/outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`,
`wissen/baurecht/wiki/QUESTIONS.md` + `CHANGELOG.md`, Cross-Reference-Einträge in den CHANGELOGs
von energie/planungsgrundlagen/normen/architekten-synobsis. Kosten ca. 2.2 USD von 5 USD Budget.

**Hub-Chef-Lauf (~08:40, Mittwoch) — Lauf ohne eigenständigen Befund, keine zweite Mail.** Signale konsolidiert: Register + Journal (Horizont 7 Tage), Konversations-Destillat 22.07., bexio `--verzug`/`--abgleich`, Mail-Vorfilter aller Apple-Mail-Konten (Posteingang + Gesendete, 26 h), Kalender. **Ergebnis:** Der Logbuch-Radar hat um 07:00 bereits das vollständige Tagesbriefing an rj@ versendet (KISPI-Zahlungsstau, Brandschutz-Termin 10:00, Selbstfristen 24.07., van-Velsen-Lüftungskontrolle, Thalwil-Näherbaurecht, AG-Monitor-Fix) — keine Doppelmeldung. **Keine Whitelist-Aktion gerechtfertigt:** RE-00087 auf Mahnung 2 (Entscheid Mahnung 3/Betreibung bei Raphael, nie autonom); RE-00098/00099 tragen seit RJs eigener gebündelter Mahnung 21.07. bereits Mahnstufe 1 (Zahlungserinnerung, Frist bis 03.08.), Verzug erst 2 Tage → A1 greift nicht. Kein neuer bestätigter Termin für A2 (Brandschutz 10:00 von RJ am 21.07. bereits angenommen; die 08:24-Frage «TeKoSi zur Fachplanersitzung 23.07. einladen?» ist RJ-getrieben, kein Hub-Auftrag). **Einziger neuer Datenpunkt (in bexio, nicht im Radar):** zwei bald fällige, noch nicht überfällige Debitoren — RE-00100 CHF 13'120 Nova Property Fund (fällig 30.07.) und RE-00101 CHF 6'000 Tschopp (fällig 31.07.); zur Beobachtung ins Register aufgenommen (A4), damit der nächste Radar/Mahnwesen-Lauf sie erfasst. `--abgleich`: 19 historische «gebucht ohne Bankbeleg» (2022–2025) unverändert = bekanntes bexio-Hygiene-Artefakt, keine autonome Aktion (Buchen/Reconcilen verboten). Sync-/Remote-Queues leer.

**Nachtschicht-Zyklus Mac Mini (~08:30) — Offene Frage aus dem 06:30-Health-Check geklärt (baurecht, Mechanismus Locale-Fix).**
Doppelarbeit-Guard geprüft (dispatch/log/ 08:30/07:30 inhaltlich gelesen, Prio 1–4 und 6 laut
07:30-Protokoll bereits abgedeckt, Prio 5 dort auf einer anderen KB (auflagebereinigung)
erledigt) — daher als Fortsetzung von Prio 5 die offene Frage aus dem eigenen 06:30-Health-Check
(Audit F, KB baurecht) verifiziert: ob der Trainings-Task `baurecht-buch-training` denselben
`LANG=de_CH.UTF-8`-Fix erhält, der am 21.07. in `scripts/dispatch-run.sh` eingebaut wurde.
**Befund:** nein, strukturell unmöglich — `baurecht-buch-training` (wie `energie-training`/
`planungsgrundlagen-training`/`normen-training-mini`/`synobsis-batch-nacht`) ist ein natives
Claude-Code-App-Scheduled-Task (lokale Registry `~/.claude/scheduled-tasks/`, auf dem Mac Mini
korrekt `enabled: false` seit Stations-Split 12.07.), der nicht über `dispatch-run.sh` läuft —
der 21.07.-Fix bedient nur den Handy/Cowork-Kanal und die crontab-Zusatzläufe. Neue, plausiblere
Root-Cause-Hypothese aufgestellt (nicht abschliessend bewiesen): die seit 19.07. eingeführte
Haiku/Sonnet-Subagenten-Delegation ("Minimum Viable Model") könnte den CLAUDE.md-Kontext
(inkl. Umlaut-Regel) verlieren, wenn der delegierende Prompt sie nicht explizit mitgibt — passt
zeitlich, aber Gegenprobe (`normen-training-mini` trägt denselben Anhang, war 21.07. nicht als
betroffen genannt) nicht rund. Keine Prompt-Änderung vorgenommen (Hypothese unbewiesen,
MacBook-Pro-Registry von hier aus nicht einsehbar) — dedizierter Verifikationslauf empfohlen.
Abgelegt: `wissen/baurecht/wiki/QUESTIONS.md`, `wissen/baurecht/CHANGELOG.md`. Kosten ca. 2.0
USD von 5 USD Budget.

**Logbuch-Radar (Mittwoch, 07:00) — RJ hat den Zahlungsstau selbst gemahnt, Auftragsbestätigung als Knackpunkt.** Quellen: Register + Journal, Konversations-Destillat 22.07., bexio `--verzug`, Mail-Vorfilter alle Apple-Mail-Konten (rj@/mail@, iCloud; Posteingang + Gesendete), Outlook-Kalender 7 Tage. **Erledigt seit gestern:** AG-Gründungs-Monitor-Blindfleck tatsächlich behoben und verifiziert (frühere «erledigt»-Meldung war falsch; mail@ ab sofort primär via Apple Mail, kein neuer UBS-/Notariats-Eingang); RJ hat 21.07. 10:42 die drei offenen KISPI-Rechnungen (Total CHF 32'280) selbst gebündelt an KISPI gemahnt und die **fehlende Auftragsbestätigung** als Kern des Zahlungsstaus angesprochen. **Aus Gesprächen:** Dispatch-Connector-Token abgelaufen → Raphael muss einmal `claude setup-token` im Terminal ausführen (Handy-Dispatch bis dahin blockiert; anderer Mechanismus als der claude-usage.mjs-Re-Login). **Überfällig:** RE-00087 (CHF 15'000) 97 Tage auf Mahnung 2; RE-00098/99 (CHF 13'600 + 3'680) je 2 Tage über Frist. **Heute:** 10:00 KISPI Brandschutz-Abstimmung mit J. Ziegel (Teams) — terminiert das offene «Ziegel anrufen». **Aktiv/beobachten:** private Lüftungskontrolle van Velsen (3-plan) prüft aktiv, verrechnet CHF 800 an KISPI, fragt nach EVEN-Zugriff; Bajrami (Jegen) OOO bis 11.08., Wuersch (KISPI) bis 09.08. — Tür-Kette Los 274.01 verzögert; VKF-Nachweise LBW zusätzlich bei O. Stadelmann angefordert. **Kalender 7 Tage:** 22.07. 10:00 Brandschutz-Abstimmung, 23.07. 09:00 Saumstrasse 21 Lüftungsgitter-Lieferung, 23.07. 13:00 Koordinationssitzung; Do 24.07. Selbstfristen Jegen/Roethlisberger. Briefing an rj@ versendet. Token gestern (21.07.): MacBook 173.54 Mio. (~427 USD) + Mini 133.05 Mio. (~58 USD).

**Nachtschicht-Zyklus Mac Mini (~07:30) — Priorität 5: QUESTIONS.md-Lücke geklärt (auflagebereinigung).**
Doppelarbeit-Guard geprüft (dispatch/log/ 07:30/06:30/05:30/04:30 inhaltlich gelesen,
`logbuch/fristen.md` gescannt): Prio 1 (Queues) leer, Prio 2 (Synobsis) 10. ergebnisloser
Nachtlauf, weiter pausiert, Prio 3 (Fristen-Radar) keine neu zu entwerfende Aktion (KISPI-
Mahnungen bereits von RJ selbst gebündelt versendet, restliche Einträge reine Beobachtung),
Prio 4 (Trainingslektionen) für Mac Minis KBs bereits heute Nacht abgedeckt/gesättigt, Prio 6
(wissenscheck) soeben um 06:30 auf `baurecht` erledigt. Deshalb Priorität 5 genommen: die offene
Frage «Schallschutz SIA 181 (Ziff. II.10) — Federführung Bauphysiker vs. ARC vs. HLK» aus
`wissen/auflagebereinigung/wiki/QUESTIONS.md` gegen das Normen-Destillat
`wissen/normen/destillate/sia-181-2006.md` geprüft. Befund: SIA 181 weist selbst keine
Federführung zu (regelt nur Anforderungswerte/Nachweisformeln, Ziff. 4) — die bestehende
Praxisregel in `auflagentypen-gewerkzuteilung.md` war richtig, aber unbelegt; jetzt mit
Fundstellen präzisiert (Ziff. 4.2/4.3 Bauteile → ARC/Bauphysik, Ziff. 4.4 Geräusche
haustechnischer Anlagen → das liefernde Fachgewerk, nicht pauschal HLK) plus Faustregel für den
Fall mit/ohne eigenen Bauphysiker. QUESTIONS.md-Punkt ins Archiv verschoben, CHANGELOG der KB
nachgeführt. Kosten ca. 1.9 USD von 5 USD Budget.

---

**Nachtschicht-Zyklus Mac Mini (~06:30) — Priorität 6: Wissens-Health-Check baurecht (ältestes Audit-Datum, 2026-07-01).**
Doppelarbeit-Guard geprüft (dispatch/log/ 06:30/05:30/04:30/03:30 inhaltlich gelesen, Queues
`remote-tasks/pending`/`sync-tasks/mac-mini` leer, Synobsis 10. ergebnisloser Nachtlauf in Folge
und bereits zur Pausierung empfohlen, Prio 4 Trainingslektionen für Mac Minis eigene KBs
energie/planungsgrundlagen sowie normen DIN/VSS/RAL bereits heute abgedeckt bzw. gesättigt,
Prio 6 twin/projekt-lessons durch die 03:30/04:30-Läufe soeben erledigt). Deshalb `wissenscheck`
Phase 1 auf `baurecht` (letzter Check 2026-07-01, seither ~20 Buch-/Wissens-Chef-Trainingsläufe
auf dem MacBook Pro) — als grösste, meistgenutzte KB im Hub überfällig für eine strukturelle
Prüfung. Ergebnis: A0 · B0 (Backlinks/Orphans/INDEX sauber) · C1 (bereits bekannt: SIA-500-
Kennwert Behindertenparkplätze weiterhin unverifiziert) · D0 (RAW-Coverage vollständig) · E0
(kein Artikel über 90 Tage alt) · **F1 gross, neu:** flächendeckende ae/oe/ue-statt-Umlaut-
Verstösse quer durch praktisch alle 24 Wiki-Artikel — vermutlich derselbe Locale-Bug, der am
2026-07-21 in energie/planungsgrundlagen/architekten-synobsis gefunden und in
`scripts/dispatch-run.sh` gefixt wurde; ob der Baurecht-Trainingsjob denselben Fix bereits
erhält, ist NICHT verifiziert und als offener Punkt vermerkt · G4 (vier `emerging`-Artikel wirken
inhaltlich reif für Promotion auf `established`: baurechtlicher-vorentscheid-und-voranfrage,
enteignung-und-entschaedigung, nebenbestimmungen-und-reverse, grundlagen-planungs-baurecht).
Report `wissen/baurecht/outputs/2026-07-22_health-check.md`, CHANGELOG + QUESTIONS.md
nachgeführt. Nur Phase 1 (unbeaufsichtigt, keine Korrekturen ausgeführt — Umlaut-Bereinigung
ist als eigener, grösserer Auftrag vermerkt). Kosten ca. 2.8 USD von 5 USD Budget.

---

**Nachtschicht-Zyklus Mac Mini (~05:30) — Priorität 5: offene QUESTIONS.md recherchiert und als Wiki-Artikel kompiliert (firmengruendung-ch).**
Doppelarbeit-Guard geprüft (dispatch/log/ 05:30/04:30 inhaltlich gelesen, CHANGELOGs aller KBs
gescannt): Prio 1 leer, Prio 2 (Synobsis) läuft gesättigt als eigener launchd-Job, Prio 3
(Fristen-Radar) ohne neu zu entwerfende Aktion, Prio 4 (Trainingslektionen) für praktisch alle
KBs bereits heute abgedeckt, Prio 6 (wissenscheck twin) durch den 04:30-Lauf soeben erledigt und
dessen Root-Cause-Befund als «zu gross für Nachtschicht-Budget» geflaggt. Deshalb Priorität 5:
Backlog-Lücke aus `wissen/firmengruendung-ch/wiki/QUESTIONS.md` («Nach-Gründung im Detail:
AHV-Ausgleichskasse, BVG, UVG, MWST-Registrierung») recherchiert (WebSearch/WebFetch, Sekundär-
quellen kmu.admin.ch/sva-ag.ch/ahv-iv.ch/estv.admin.ch/koordination.ch) und als neuer Artikel
[[nachgruendung-anmeldungen]] kompiliert — direkt anschlussfähig an die laufende AG-Gründung
Raphael Jans AG (offener Fristen-Punkt «nach HR-Eintrag: AHV/BVG/UVG/MWST + Betriebshaftpflicht»
in `logbuch/fristen.md`). Kernbefunde im Artikel: AHV-Kasse meldet sich automatisch nach
SHAB-Publikation; BVG-Anschlusspflicht Art. 11 BVG (Eintrittsschwelle 2026 CHF 22'680, aktiver
Anschluss vor erster Lohnzahlung empfohlen statt Auffangeinrichtungs-Automatik abzuwarten); UVG
Anmeldefrist 14 Tage vor Stellenantritt, Architekturbüro nicht Suva-pflichtig (Art. 68 UVG); MWST
Schwelle CHF 100'000, 30-Tage-Frist ab Gründung bei absehbarem Überschreiten. Artikel als
`needs-verification` bei Fristen-Details markiert (kein Fedlex-Volltextabgleich, nur
Sekundärquellen). `INDEX.md`/`QUESTIONS.md`/`CHANGELOG.md` der KB nachgeführt. Kosten ca. 2.8 USD
von 5 USD Budget.

---

**Nachtschicht-Zyklus Mac Mini (~03:30) — Priorität 6: Wissens-Health-Check projekt-lessons (älteste Audit-Datum).**
Doppelarbeit-Guard geprüft (dispatch/log/ 03:30 sowie die 02:30/01:30-Journalzeilen unten,
inhaltlich gelesen): Prio 1 leer, Prio 2 (Synobsis) läuft als eigener launchd-Job gesättigt,
Prio 3/4 (Fristen-Radar, Trainingslektionen) für energie/planungsgrundlagen/normen-DIN-VSS-RAL
bereits heute (Run 56 planungsgrundlagen, Sonderfall-Klärung energie 02:30, DIN/VSS/RAL seit
Mini-Run 29/32 vollständig gesättigt) abgedeckt. Deshalb Priorität 6: `wissenscheck` Phase 1 auf
der KB mit dem ältesten Audit (`projekt-lessons`, zuletzt 01.07.2026) ausgeführt. Befund:
Delta-Null — KB weiterhin strukturell leer (0 Wiki-Artikel, `raw/` leer, kein neues Material seit
Anlage 02.06.2026), kerngesund. Neu gegenüber dem letzten Check: konkrete Bootstrap-Quellenhinweise
(reale, bereits im Hub dokumentierte Fälle wie KISPI Los 273.35 Roethlisberger-Preischeck,
SBB-Näherbaurecht Thalwil 2414) im Report festgehalten, statt den allgemeinen Befund ein drittes
Mal folgenlos zu wiederholen — als Pendenz unten im Fristen-Register vermerkt (Bootstrap ist ein
eigener, grösserer Lauf, kein Nachtschicht-Restposten). Report: `wissen/projekt-lessons/outputs/
2026-07-22_health-check.md`, CHANGELOG aktualisiert. Kosten ca. 2.2 USD von 5 USD Budget.

---

**Nachtschicht-Zyklus Mac Mini (~04:30) — Priorität 6: Wissens-Health-Check twin (nie zuvor auditiert).**
Doppelarbeit-Guard geprüft (dispatch/log/ 04:30/03:30 inhaltlich gelesen, Git-Log der letzten
20 Commits, CHANGELOGs mehrerer KBs): Prio 1 (Queues) leer, Prio 2 (Synobsis) läuft gesättigt als
eigener launchd-Job, Prio 4 (Trainingslektionen) für alle drei Mac-Mini-KBs (energie, planungs-
grundlagen, Normen DIN/VSS/RAL) bereits heute Nacht abgedeckt/pausiert. Bei Prio 6 fiel auf: die
KB `twin` — trotz täglicher Facetten-/Fidelity-Läufe seit 05.06. — wurde noch **nie** mit
`wissenscheck` auditiert (alle anderen KBs zuletzt 01.07. oder später). Audit ausgeführt (A0 · B2 ·
C0 · D1 schwerwiegend · E0 · F2 · G1). Wichtigster Fund: von 60 in `raw/_INGESTED.md`
registrierten Quelldateien liegen nur noch 26 (43 %) physisch auf der Platte — 33 fehlen,
darunter `260722-mailbatch-45.md`, das HEUTE als Quelle in vier der sechs Facetten-Artikel
zitiert wird. Die frischesten Wiki-Aktualisierungen stützen sich damit auf nicht mehr
nachprüfbares Quellmaterial; Ursache (Absicht/Sync-Verlust/versehentliches Aufräumen) ungeklärt,
braucht einen dedizierten Lauf (Git-Historie je Datei). Weitere Funde: durchgängige
`ae/oe/ue`-statt-Umlaut-Verstösse in der Analyseprosa (nicht in den Zitaten) über praktisch alle
Artikel + QUESTIONS.md, vereinzelte `ß`; 2 kaputte/inkonsistente Backlinks; `INDEX.md` zeigt
stale `emerging` statt der tatsächlichen `established`-Status. Nur Audit, keine Aktionen (Phase 2
bleibt interaktiv). Report: `wissen/twin/outputs/2026-07-22_health-check.md`, CHANGELOG
aktualisiert. Kosten ca. 2.7 USD von 5 USD Budget.

---

**Nachtschicht-Zyklus Mac Mini (~02:30) — Priorität 5, ein Delta: Sonderfall Pfäffikon SZ Churerstrasse 100/104 (KB energie) geklärt.**
Doppelarbeit-Guard geprüft (dispatch/log/ 02:30 sowie die 01:30-Journalzeile unten): Prio 1
(remote-tasks/pending, sync-tasks/mac-mini) weiterhin leer; Synobsis-Batch (separater launchd-Job)
lief in diesem Fenster zum 10. Mal leer (Vektorindex nur neu gebaut, kein neuer Content) — keine
Nachtschicht-Aktion nötig. Statt die Erschöpfungsprüfung ein drittes Mal zu wiederholen, den letzten
bounded offenen QUESTIONS.md-Punkt der KB energie bearbeitet (die anderen vier brauchen Raphaels
Entscheid oder sind Negativbefund ohne neuen Ansatz): der seit Run 82/83 offene Sonderfall Pfäffikon
SZ Churerstrasse 100/104 im Fernwärme-Ausserschwyz-Rechner (weder Preis noch «nicht verfügbar»)
direkt per curl aufgeklärt — kein Tool-Defekt, sondern ein dritter Verfügbarkeitsstatus des Rechners
(«Anschluss möglich, ab 2024 geplant», daher ohne Preisberechnung); zusätzlich Root-Cause-Merksatz
gefunden (die `?id=`-Pricing-Route braucht anders als die `?q=`-Suchroute **keinen**
`HX-Request`-Header, sonst 2-Byte-Leerantwort trotz HTTP 200). Dokumentiert in
`wissen/energie/destillate/fernwaerme-anschlusskosten-zh.md`, `wiki/QUESTIONS.md`, CHANGELOG.md und
`outputs/2026-07-22_nachtschicht-pfaeffikon-churerstrasse.md`. Kein Verstoss gegen die
Aktions-Whitelist, kein Versand, keine Buchung, keine Löschung. Kosten dieses Zyklus ca. 3 USD von
5 USD Budget.

**Nachtschicht-Zyklus Mac Mini (~01:30) — kein Zyklus-Ergebnis: Befund von 00:30 bestaetigt, keine neuen Deltas.**
Doppelarbeit-Guard inhaltlich geprueft (dispatch/log/ 00:30 zweifach, 23:30 sowie die 00:30-
Journalzeile oben). Seit dem 00:30-Befund ist nur der planungsgrundlagen-Trainingslauf 56
(run_id 20260722-003002-26379) fertig geworden und bereits selbst registriert/gepusht
(Commit `4f373830`) — kein neues Delta fuer diesen Zyklus. Eigene Nachpruefung statt reines
Vertrauen auf den Vorbefund: remote-tasks/pending + sync-tasks/mac-mini weiterhin leer;
QUESTIONS.md-Zaehlung ueber alle Mac-Mini-relevanten KBs (energie 5, planungsgrundlagen 1,
architekten-synobsis 0, normen 46, grobkosten/firmengruendung-ch/kunde-bopp/auflagebereinigung/
projekt-lessons je 0); die 46 normen-Punkte naeher geprueft — die vier tatsaechlich DIN-
bezogenen Eintraege sind bereits mit Loesung/Verweis dokumentiert (Dublette referenziert, Luecke
mit Retro-Verifikation Mini-Run-14 belegt, Sonstiges-Ordner-Hinweis erledigt) oder gehoeren dem
SIA/VKF-Loop (MacBook); DIN/VSS/RAL bleibt damit inventar-komplett wie seit 17.07. Synobsis
weiterhin gesaettigt (0 offene QUESTIONS, 19+ ertraglose Batch-Laeufe dokumentiert). Kein
Verstoss gegen die Aktions-Whitelist, kein Versand, keine Buchung, keine Loeschung. Kosten dieses
Zyklus ca. 1 USD von 5 USD Budget (reine Pruefung, keine KB-Aenderung). Zyklus sauber beendet
statt Beschaeftigung erfunden — naechster Zyklus (02:30) sollte pruefen, ob bis dahin neuer
Input (Queues, laufende Prozesse) eingetroffen ist, bevor dieselbe Erschoepfungspruefung
wiederholt wird.

**Nachtschicht-Zyklus Mac Mini (~00:30) — kein Zyklus-Ergebnis: alle Prioritaeten heute Nacht bereits erschoepft/blockiert.**
Doppelarbeit-Guard inhaltlich geprueft (dispatch/log/ 23:30/22:30 sowie Logbuch-Kette der ganzen
Nacht 20:30-23:30). Ergebnis der Pruefung, damit der naechste Zyklus nicht dieselbe Recherche
wiederholt: Prio 1 (remote-tasks/pending, sync-tasks/mac-mini) leer. Prio 2 (Synobsis Stufe 2)
gesaettigt seit 02.07. Prio 3 (Fristen-Radar) ist Tagesgeschaeft von logbuch-radar, nicht
nachtschicht-spezifisch. Prio 4 (Training): planungsgrundlagen laeuft bereits parallel in einem
zweiten Dispatch-Prozess (run_id 20260722-003002-26379, 25 USD Budget); energie bereits zweimal
heute gelaufen (Run 83 + Wissens-Chef Run 11); synobsis heute bereits mit Root-Cause-Fix +
Health-Check bearbeitet; normen-training-mini (DIN/VSS/RAL) seit 17.07. dauerhaft stillgelegt
(Inventar komplett) — alle vier Mac-Mini-Kern-KBs damit fuer heute erschoepft. Prio 5/6: die
heutige Nacht hat bereits entwurfs-referenzen (20:30), grobkosten (21:30), firmengruendung-ch
(22:30) und kunde-bopp (23:30) abgearbeitet; koordination (letzter Audit 20.07.) heute selbst
einen grossen Cross-KB-Lauf (Run 11) gefahren, ein Re-Audit direkt danach waere reine
Wiederholung; auflagebereinigung braucht reale Projektdaten (nicht nachtschichttauglich);
projekt-lessons bleibt seit 02.06. leer (Re-Audit ohne neue Information); baurecht/
immobilienbewertung/spec/twin (aeltester Audit-Stand, 01.07.) sind MacBook-Pro-exklusive
Domaenen (Rule 260714) und werden von der Dauerschicht bearbeitet; die offene SIA-500-
Kennwert-Flag (koordination Run 11) gehoert ebenfalls dem baurecht-Loop. Kein Verstoss gegen
die Aktions-Whitelist, kein Versand, keine Buchung, keine Loeschung. Kosten dieses Zyklus ca.
2 USD von 5 USD Budget (reine Pruefung, keine Aenderung an einer KB). Zyklus sauber beendet
statt Beschaeftigung erfunden.

## 2026-07-21

**Nachtschicht-Zyklus Mac Mini (~23:30) — kunde-bopp: zweiter Wissens-Health-Check (Re-Audit).**
Doppelarbeit-Guard geprueft (dispatch/log/ 23:30/22:30 inhaltlich, remote-tasks/pending +
sync-tasks/mac-mini leer, Synobsis gesaettigt seit 02.07., Energie-Training bereits zweimal
heute gelaufen, firmengruendung-ch-GmbH-Artikel schon von der Dauerschicht amtlich verifiziert).
Priorität 6 gezogen: `kunde-bopp` war mit `baurecht`/`immobilienbewertung`/`spec` seit 01.07.
unauditiert (20 Tage), aber im Gegensatz zu `projekt-lessons` (weiterhin leer) real gewachsen —
zwei eigene Nachtschicht-Updates am 20./21.07. Re-Audit bestaetigt: die am 01.07. rot geflaggte
ae/oe/ue-Digraphen-Verletzung (F) und die gelbe Unbelegt-Ampel (C, Firmenrollen) sind bereits
durch die vorangegangenen Zyklen geschlossen — unabhaengig verifiziert. Neu als Ampel gelb: 2
unveraendert tote Backlinks (B) und ein Status-Promotion-Kandidat (G, `profil-christoph-bopp`
emerging→established), beide fuer Phase 2 vorgemerkt, nicht selbst umgesetzt (Skill-Contract:
Phase 2 nur interaktiv). `wiki/INDEX.md`-Statistikzeile (war einen Tag veraltet) nachgezogen.
Report `wissen/kunde-bopp/outputs/2026-07-21_health-check-2.md`, CHANGELOG ergaenzt. Kosten
dieses Zyklus ca. 2 USD von 5 USD Budget. Kein Versand, keine Buchung, keine Loeschung.

**Dauerschicht-Zyklus 49 (MacBook Pro, ~23:05) — GmbH-Artikel amtlich verifiziert, Fedlex-Blockade dauerhaft geloest.** Der um 22:30 von der Nachtschicht kompilierte [[gmbh-gruendungsablauf]] (needs-verification, da Fedlex ohne JS keinen Text liefert) ist jetzt am AMTLICHEN OR-Volltext gegengelesen: Zugriffsweg ueber das Fedlex-Filestore-URL-Muster gefunden (Konsolidierung 01.01.2026, 2.6 MB HTML, Artikel-Anker extrahierbar) — Art. 773/778/786/809/818 alle bestaetigt, EINE Fundstellen-Praezisierung (Voll-Liberierung = Art. 777c Abs. 1, nicht Art. 773; Artikel berichtigt). Der Zugriffsweg ist als Rule 260721 (auto-verbesserungen) fuer alle Bundesrecht-zitierenden KBs hinterlegt — die Fedlex-JS-Blockade ist damit dauerhaft behoben. CHANGELOG/Artikel nachgefuehrt. Kein Versand, kein Download (nur curl-Textlesen), additiv.

**Nachtschicht-Zyklus Mac Mini (~22:30) — firmengruendung-ch: neuer Wiki-Artikel GmbH-Gründungsablauf.**
Doppelarbeit-Guard geprueft (dispatch/log/ 21:30/20:30 inhaltlich, remote-tasks/pending +
sync-tasks/mac-mini leer, Mac-Mini-Kern-KBs energie/planungsgrundlagen/architekten-synobsis/
normen heute bereits bearbeitet, Prioritaet 4 damit erschoepft). Bei Prioritaet 5 (offene
QUESTIONS.md) firmengruendung-ch/kunde-bopp/auflagebereinigung durchgesehen (die vom 20:30-Lauf
bereits gepruefte Liste ergaenzend): kunde-bopp und auflagebereinigung brauchen reale
Projektdaten/Behoerdenantworten, nicht nachtschicht-tauglich. In firmengruendung-ch der seit
02.06. offene Backlog-Punkt «GmbH-Gruendungsablauf als Pendant zu ag-gruendungsablauf»
aufgegriffen: via WebSearch/WebFetch recherchiert (Fedlex liefert ohne JavaScript keinen
Volltext, daher Sekundaerquellen: eskript.ius.unibas.ch Lehrstuhl Handschin, law.ch,
Kanton-SG-Merkblatt), neuer Artikel `wiki/gmbh-gruendungsablauf.md` mit 12-Schritte-Ablauf +
Delta-Tabelle zur AG (Stammkapital CHF 20'000 voll liberiert, keine Organe-Pflicht/Default
Gesellschafter-Geschaeftsfuehrung Art. 809 OR, oeffentliche Gesellschafterliste,
zustimmungspflichtige Stammanteil-Uebertragung Art. 786 OR, Revision sinngemaess nach
Aktienrecht via Art. 818 OR, Nachschusspflicht-Option) — als *needs-verification* markiert,
da Artikelnummern nur ueber Sekundaerquellen plausibilisiert wurden. `wiki/INDEX.md` und
`wiki/QUESTIONS.md` nachgezogen (Backlog-Punkt geschlossen, ins Archiv verschoben).
Aktualisiert: `wissen/firmengruendung-ch/wiki/gmbh-gruendungsablauf.md` (neu), `wiki/INDEX.md`,
`wiki/QUESTIONS.md`, `CHANGELOG.md`. Kosten dieses Zyklus ca. 2 USD von 5 USD Budget. Kein
Versand, keine Buchung, keine Loeschung.

**Nachtschicht-Zyklus Mac Mini (~21:30) — grobkosten: Wissens-Health-Check Phase 1.** Prioritaeten 1-4 leer/erschoepft (Queues leer, alle Mac-Mini-Kern-KBs heute bereits bearbeitet). Bei Prioritaet 6 (aeltester Audit-Stand) `projekt-lessons` verworfen (seit 02.06. leer, Re-Audit waere reine Wiederholung ohne neue Information) und stattdessen `grobkosten` gewaehlt (ebenfalls seit 01.07. nicht auditiert, aber mit echtem Content-Wachstum in der Zwischenzeit). Befund: inhaltlich weiterhin sauber, aber die drei strukturellen Findings vom 01.07. (fehlende State-Files, kein Frontmatter, Umlaut-Umschrift) sind trotz drei zwischenzeitlicher Cross-KB-Bearbeitungen unveraendert offen — als Phase-2-Fall fuer die naechste interaktive Session vorgemerkt. Report: wissen/grobkosten/outputs/2026-07-21_health-check.md. Kosten ca. 1.8 USD von 5 USD Budget. Kein Versand, keine Buchung, keine Loeschung.

**Nachtschicht-Zyklus Mac Mini (~20:30) — entwurfs-referenzen: INDEX/QUESTIONS fuer eingetroffenes Schulhaus-Set nachgezogen.**
Doppelarbeit-Guard geprueft (dispatch/log/ 19:30/18:30 inhaltlich, CHANGELOGs der letzten 24h,
remote-tasks/pending + sync-tasks/mac-mini leer). Prioritaeten 1–4 weiterhin leer/erschoepft;
Prioritaet 4 (Training) zusaetzlich noch ausserhalb des Nachtfensters (22:00–06:00). Bei
Prioritaet 5 (offene QUESTIONS.md) alle KBs durchgesehen: einzig `entwurfs-referenzen` hatte
einen offenen, aber bereits faktisch geloesten Punkt — das Parameter-Set
`schule-volksschule-ch.json` (Zulauf aus wettbewerbs-dna B5/B6+B4, schema-valide,
refuter-BESTANDEN) war laut CHANGELOG vom selben Tag schon eingetroffen, aber `wiki/INDEX.md`
listete es noch als «Angekündigt» und `wiki/QUESTIONS.md` fuehrte den Koordinationspunkt noch
als offen. Beides nachgezogen: INDEX-Zeile auf denselben Stil wie die anderen zwei
Parameter-Sets umgestellt, QUESTIONS-Punkt auf [x] gesetzt, Schema erneut mit `validate.py`
gegen das Set geprueft (OK), CHANGELOG-Eintrag ergaenzt. Kosten dieses Zyklus ca. 1 USD von
5 USD Budget. Kein Versand, keine Buchung, keine Loeschung.

**Nachtschicht-Zyklus Mac Mini (~19:30) — normen: DIN-277-1-Leseproblem aus Mini-Run 33 root-caused, kein Datenverlust.**
Doppelarbeit-Guard geprueft (dispatch/log/ 19:30/18:30 inhaltlich, CHANGELOGs der letzten 24h,
remote-tasks/pending + sync-tasks/mac-mini leer). Prioritaeten 1–4 weiterhin leer/erschoepft
(Synobsis 853/853 gesaettigt, Fristen-Radar stundenaktuell, alle Mac-Mini-Kern-KBs bereits
trainiert). QUESTIONS.md-Recherche (Prioritaet 5) auf `energie`/`planungsgrundlagen` ergab nur
Punkte, die einen Entscheid Raphaels oder reale Projektdaten brauchen (E103 Pflegeplatz-
Kennwert, D9 MFH-ZEV-Fall, E84 ZH-Solarpflicht-Beratungsstand bewusst pausiert) — nicht
nachtschicht-tauglich. Stattdessen die in `normen`/QUESTIONS.md offene Mac-Mini-Lese-Huerde
`DIN 277-1.pdf` (Mini-Run 33, 20.07.) aufgegriffen: direkter `cat`-Test reproduziert
`EDEADLK`/"Resource deadlock avoided", `du -h` zeigt 0 B (nicht materialisierter Cloud-
Platzhalter), waehrend eine Vergleichsdatei im selben Ordner (6,4 MB) einwandfrei liest und
OneDrive-Sync selbst gesund ist (`brctl status` foreground/caught-up). Damit isoliert: rein
lokaler File-Provider-Cache-Fehler dieser einen Datei auf dem Mac Mini, kein Datenverlust in
der SharePoint-Ablage. Kein automatischer Fix ausgefuehrt (App-Neustart ist keine Whitelist-
Aktion); manuelle Behebung fuer Raphael dokumentiert. `wiki/QUESTIONS.md` (2 Punkte auf [x]),
CHANGELOG nachgefuehrt. Kosten ca. 2.4 USD von 5 USD Budget. Kein Versand, keine Buchung,
keine Loeschung, keine App neu gestartet.

**Nachtschicht-Zyklus Mac Mini (~18:30) — kunde-bopp: viertes KMU-Mandat identifiziert (Feag Facility Engineering AG).**
Doppelarbeit-Guard geprueft (dispatch/log/ 08:30 inhaltlich, CHANGELOGs der letzten 24h,
remote-tasks/pending + sync-tasks/mac-mini leer). Prioritaeten 1–4 leer/erschoepft. Bei
Prioritaet 5 (offene QUESTIONS.md) die von der MacBook-Kette am 20.07. selbst aufgeworfene,
gut abgegrenzte Frage aus `kunde-bopp` genommen (KB ausserhalb der Arbeitsteilungs-Zuordnung
beider Stationen, daher konfliktfrei): welches nicht namentlich genannte KMU Christoph Bopp
laut Nova-Kurzbio seit 2004 zusaetzlich im Vorstand fuehrt. Read-only Web-Recherche
(moneyhouse.ch Personensuche, northdata.com Handelsregister-Historie, business-monitor.ch)
ergab **Feag Facility Engineering AG, Zuerich** (UID CHE-108.531.313) — Bopp-Familienbetrieb
(Bauphysik/-akustik/Energie, Facility Management); Christoph Bopp seit Jan. 2003 im Vorstand,
seit Maerz 2019 Praesident des Verwaltungsrats (Nachfolge Vater Walter Bopp). `wiki/profil-
christoph-bopp.md` aktualisiert, QUESTIONS.md-Eintrag ins Archiv verschoben, Report
`outputs/2026-07-21_drittes-kmu-mandat.md`, CHANGELOG nachgefuehrt. Kosten ca. 1.7 USD von
5 USD Budget. Kein Versand, keine Buchung, keine Loeschung.

**Dauerschicht-Zyklus 42 (MacBook Pro, ~15:50) — normen-Audit KOMPLETT abgearbeitet: 26 Destillate im INDEX nachregistriert.** Letzter mechanischer Punkt des Nacht-Audits: destillate/INDEX.md um die 26 vorhandenen, aber nie registrierten Destillate ergaenzt (Zeilen aus Titel/ausgabe/status generiert; Tabellen-Integritaet geprueft, 269 Zeilen). Damit ist der normen-Health-Check vom 20.07. vollstaendig umgesetzt: Top-1 SIA-112-Fehlzuordnung (Z. 39), 21 tote Backlinks (Z. 40), ss-Konvention + Pflichtfelder (Z. 41), INDEX-Registrierung (Z. 42). Offen bleiben nur nicht-mechanische Punkte (ersetzt/ersetzt_durch-Recherche, Bring-Schulden) — die gehoeren dem dedizierten normen-Loop. Kein Versand, additiv.

**Dauerschicht-Zyklus 41 (MacBook Pro, ~14:45) — normen Audit-F: ss-Konvention und Pflichtfelder.** 118 ß-Vorkommen in 13 DIN-/VdS-Destillaten auf Schweizer ss umgestellt; 4 Destillate um fehlende Pflichtfelder ergaenzt (datenstand bzw. last_updated, quellengerecht abgeleitet). Bewusst NICHT mechanisch angefasst: das in 127 Destillaten fehlende Feld ersetzt/ersetzt_durch — das braucht je Norm eine Nachfolge-Recherche und gehoert dem dedizierten normen-Loop. Vom Nacht-Audit verbleibt damit nur die INDEX-Registrierung der 25 Destillate. CHANGELOG nachgefuehrt. Kein Versand, additiv.

**Dauerschicht-Zyklus 40 (MacBook Pro, ~13:45) — normen: 21 tote Backlinks korrigiert (Audit-B).** Alle aufloesbaren Link-Brueche aus dem Nacht-Audit behoben (Jahres-Suffixe, Tippfehler BSR/BRL, Alias-Namen, zwei woertliche «...»-Platzhalter) — Script mit Existenz-Pruefung jedes Mapping-Ziels VOR der Ersetzung. Bewusst stehen gelassen: das mehrdeutige [[sia-102-2003]] und die echten Bring-Schulden (SIA 160/162/180/190/215/380-4/382-2, Merkblattserie 2024-2047, DIN 1961) — die sind bereits in QUESTIONS als Beschaffungsluecken gefuehrt; ihre Links verschwinden mit der Destillation. Damit sind aus dem normen-Audit Top-1 (SIA-112, Zyklus 39) und Audit-B erledigt; offen bleiben F (ss/Pflichtfelder) und die INDEX-Registrierung (25 Destillate) fuer Folgezyklen. CHANGELOG nachgefuehrt. Kein Versand, additiv.

**Dauerschicht-Zyklus 39 (MacBook Pro, ~12:40) — normen: SIA-112-Fehlzuordnung korrigiert (Audit-Top-1).** Der materiellste Befund des normen-Nacht-Audits ist behoben: `sia-112-2014.md` ordnete SIA 104 der Landschaftsarchitektur und SIA 105 den Maschinen-/Elektroingenieuren zu — korrekt ist 104 = Forstingenieure, 105 = Landschaftsarchitektur, 108 = Gebaeudetechnik/Maschinenbau/Elektrotechnik (verifiziert an den Titeln der drei etablierten Ordnungs-Destillate). Ausschreibungs-Risiko (falsche Norm-Nummer bei Berufsgruppen-Zitaten) beseitigt; QUESTIONS auf erledigt mit Restvermerk (Original-Gegenlesung S. 4/10 bei Gelegenheit); CHANGELOG nachgefuehrt. Kein Versand, additiv.

**Dauerschicht-Zyklus 38 (MacBook Pro, ~11:40) — Phase-2-Fix energie: Umlaut-Konvention in 13 Wiki-Dateien inkl. BAUHERREN-FAQ hergestellt.** Top-1 des Energie-Nacht-Audits (F1, schwer): 8 Artikel zu 100 % und die FAQ zu ~40 % in ae/oe/ue statt ä/ö/ü. Behoben per deterministischem Konversions-Script mit Schutzmechanismen (Code-Spans, [[Links]], URLs, .md-Namen unangetastet; Ausnahmen fuer q-ue, Diphthonge, Staemme wie aktuell/Raphael). Verifiziert: Rest-Vorkommen manuell klassifiziert (alle legitim), alle 141 FAQ-Links aufloesbar, keine Link-Korruption. Dateinamen bleiben ASCII (Link-Konvention). CHANGELOG der KB nachgefuehrt. Kein Versand, additiv (reine Textnormalisierung).

**Dauerschicht-Zyklus 37 (MacBook Pro, ~10:30) — Phase-2-Fix auflagebereinigung: SPA-Gewerk-Widerspruch behoben.** Top-1 des Nacht-Audits (offen seit dem Check vom 01.07., ueberlebte sogar eine Datei-Bearbeitung am 20.07.): `brandschutz-auflagen-qss.md` fuehrte «SPA = SAN», massgeblich ist seit dem Split vom 04.06. **SPR** (eigener Sprinklerplaner, Fall 2619: JOMOS Brandschutz AG; ohne eigenen Sprinklerplaner SAN). Zeile an [[auflagentypen-gewerkzuteilung]] angeglichen, beide Artikel konsistent, CHANGELOG nachgefuehrt. Damit sind die Top-Funde der drei Nacht-Audits (firmengruendung-ch Zyklus 36, auflagebereinigung Zyklus 37) abgearbeitet; der energie-Audit-Rest folgt bei Bedarf. Kein Versand, additiv.

**Dauerschicht-Zyklus 36 (MacBook Pro, ~09:25) — Phase-2-Umsetzung Nacht-Audit firmengruendung-ch.** Der Nachtschicht-Health-Check hatte moniert, dass Audit-Empfehlungen ohne interaktive Phase 2 folgenlos bleiben (Top-Fund: Firmenname-Lesson seit 20 Tagen unbearbeitet; neuer Steuern-Artikel als Orphan). Beides jetzt umgesetzt: (1) **Firmen-Distinktivitaets-Regel in [[ag-gruendungsablauf]] Schritt 2 eingearbeitet** — gleicher Firmenkern + blosser Rechtsform-Zusatz genuegt nicht (EHRA-Weisung Ziff. IV, realer Fall JANS AG/JANS GmbH), Zefix-«frei» ist keine Freigabe, HRA-Voranfrage VOR Statuten/Bankkonto; QUESTIONS-Archiv nachgefuehrt. (2) **Orphan behoben:** [[steuern-ag-inhaber]] hat jetzt Content-Backlinks aus rechtsform-vergleich und kapital-und-liberierung. Offen aus dem Audit (braucht Realdaten/dedizierten Lauf): 2023-Aktienrecht-Verifikation, Kosten-Belege aus echten Offerten. CHANGELOG nachgefuehrt. Kein Versand, additiv.

**Hub-Chef-Lauf (08:39) — ohne neuen Befund, keine zweite Mail.** Quellen: Fristen-Register + Logbuch (Horizont 7 Tage), Konversations-Destillat 21.07., Radar-Ergebnis 07:00, bexio `--verzug` + `--abgleich`, Mail-Vorfilter alle Apple-Mail-Konten (rj@/mail@/iCloud, Posteingang + Gesendete), Sync-/Remote-Task-Queues, Whitelist v1. Der Logbuch-Radar hat heute um 07:00 bereits vollstaendig an rj@ gebrieft (harte Frist Jegen Prinzippläne Los 274.01 mit 7 offenen Raphael-Entscheiden; RE-00087 96 Tg auf Mahnung 2; RE-00098/99 je 1 Tg ueber Frist; Thalwil 2414 SBB; KISPI Feuerpolizei VKF-Nachweise; SharePoint-Ablauf 08.08.; Kalender 23.07. 13:00–14:00). **Delta seit 07:00: kein neuer externer Eingang** (Mail-Vorfilter zeigt nur das Radar-Briefing selbst 07:04 sowie bereits erfasste Threads: Kepenek Kaffeekosten 20.07. von RJ 16:08 beantwortet, Ziegel OOO, Estermann Dankesschreiben z.K., SBB Wiedmer 20.07.). bexio `--verzug` unveraendert gegenueber dem Radar; `--abgleich` ohne neue echte Bankeingaenge. **Keine Whitelist-Aktion zulaessig:** A1 greift nicht — RE-00087 steht auf Mahnung 2 (Stufe 3/Betreibung ist Entscheid Raphael, A1 nur Stufe 1), RE-00098/99 erst 1 Tag ueberfaellig (A1-Guard verlangt >=5 Tage). Keine neuen, eindeutig bestaetigten Termine fuer A2 (23.07. seit >1 Woche im Register/Kalender, kein Neu-Anlass). Sync-/Remote-Queues leer. Keine neuen Mail-Entwuerfe noetig (kein zu beantwortender Neueingang). **Ergebnis:** keine neuen Befunde/Aktionen/Entwuerfe → gemaess Skill hub-chef (Non-Ziel) KEINE zweite Briefing-Mail; der 07:00-Radar deckt den Stand. Nebenbei bereits durch andere Loops erledigt und hier nur vermerkt: LBW-Beschichtungs-Fachfrage vom Dauerschicht-Zyklus 35 (~07:45) beantwortet. Kein Versand, keine Buchung, keine Loeschung.

**Nachtschicht-Zyklus Mac Mini (~08:30) — Wissenscheck Phase 1 auf `firmengruendung-ch`.**
Doppelarbeit-Guard geprueft (dispatch/log/ inhaltlich bis 07:30, CHANGELOGs, remote-tasks/
sync-tasks leer, Locale-Fix aus dem 06:30-Zyklus bereits im gemeinsamen `dispatch-run.sh`
verifiziert — deckt beide Stationen ab, keine weitere Aktion noetig). Prioritaeten 1–5 erneut
leer/erschoepft. Erst `projekt-lessons` (gemeinsam aeltester Audit, 01.07.) angeschaut, dann
verworfen: KB ist seit Anlage (02.06.) komplett leer (0 Rohmaterial, nur Geruest) — ein Audit
haette nur das bereits bekannte Nullergebnis vom 01.07. wiederholt. Stattdessen `firmengruendung-
ch` gewaehlt (gleich alter Audit, aber echter Inhalt: 9 Wiki-Artikel, 6 raw-Quellen). Top-Fund:
die am 01.07. als "hoechster Compounding-Wert" markierte Firmenname-Blocker-Lesson (JANS AG
durch bestehende JANS GmbH blockiert, EHRA-Weisung Ziff. IV) ist 20 Tage spaeter unveraendert
nicht in die KB eingearbeitet — obwohl im selben Zeitraum eine andere Promotion
(`steuern-ag-inhaber`) sehr wohl durchgefuehrt wurde. Drittes Beispiel in derselben Nacht (nach
`auflagebereinigung` um 07:30), dass Health-Check-Empfehlungen ohne interaktive Phase-2-Session
folgenlos bleiben. Zusaetzlich: neuer Artikel `steuern-ag-inhaber` ist ein Orphan (keine
Content-Backlinks, nur INDEX/QUESTIONS verlinken darauf); Aktienrecht-2023-Verifikation
weiterhin offen. Nichts selbst korrigiert (Phase 2 nur interaktiv). Report:
`wissen/firmengruendung-ch/outputs/2026-07-21_health-check.md`. Kosten dieses Zyklus ca. 2.0
USD von 5 USD Budget.

**Dauerschicht-Zyklus 35 (MacBook Pro, ~07:45) — Raphaels LBW-Beschichtungs-Fachfrage BEANTWORTET (offen seit 17.07.).** Die dreimal vom Wochenlimit abgeschnittene Frage (Legende Putz/Abrieb vs. direkter Anstrich auf Gipskarton, KISPI-Trockenbau) ist beantwortet: Standard bei LBW ist direkter Anstrich auf gespachtelter Platte (Q2–Q4, Grundierung, Dispersion), kein Putz/Abrieb; Abrieb auf GK nur bei ausdruecklicher Legenden-Nennung (Spitalbau unueblich); die bekannten WO21/WO23-Positionen (Hochglanz-Endversiegelung = Q4) stuetzen die Anstrich-Lesart. Antwortdokument mit Entscheidungsregel und Ausschreibungs-Hinweis im Projektordner `.../KISPI Trockenbau LBW/260721-LBW-Beschichtung-Antwort.md` (der Ordner war leer — Raphael hatte ihn am 17.07. angelegt; DS3-Suche nach der Legende ohne Treffer). Rest: positionsgenaue Verifikation, sobald die Legende im Ordner liegt (Register-Zeile auf «Legende nachliefern»); SIA-242-Bring-Schuld in der Normen-KB notiert. Kein Versand, additiv.

**Nachtschicht-Zyklus Mac Mini (~07:30) — Wissenscheck Phase 1 auf `auflagebereinigung`.**
Doppelarbeit-Guard geprueft (dispatch/log/ inhaltlich, CHANGELOGs): Prioritaeten 1–5 leer/
erschoepft, Mac-Mini-Kern-KBs (energie, planungsgrundlagen, synobsis, normen DIN/VSS/RAL)
bereits diese Nacht wissenscheck-geprueft bzw. saturiert. Genommen: Wissenscheck Phase 1 auf
`auflagebereinigung` (mit `baurecht`/`twin`/`immobilienbewertung`/`spec`/`kunde-bopp`/
`firmengruendung-ch`/`grobkosten`/`projekt-lessons` gemeinsam aeltester Audit, 01.07., 20 Tage;
nicht in der Arbeitsteilungs-Liste einer Station, daher konfliktfrei). Top-Fund: derselbe
SPA=SAN/SPR-Gewerk-Widerspruch aus dem 01.07.-Check ist 20 Tage spaeter unveraendert
unkorrigiert, obwohl die betroffene Datei am 20.07. bereits editiert wurde — konkreter Beleg,
dass Health-Check-Empfehlungen ohne Phase-2-Session folgenlos bleiben. Neuer Befund:
`formular-verifizierung.md` (0 echte Umlaute) und der heute frisch erstellte
`gvz-einreichung-bma-sprinkler.md` (**MacBook-Pro-Dauerschicht-Zyklus 21**) verletzen die
Umlaut-Konvention fast vollstaendig — Hinweis, dass die um 06:30 auf dem Mac Mini behobene
Locale-Ursache (training-energie/-plg/synobsis-batch) mutmasslich nicht die MacBook-Dauerschicht-
Kette abdeckt; nicht weiter untersucht (ausserhalb Phase-1-Scope, Budget-Disziplin). Zusaetzlich:
einer der beiden am 01.07. als "geklaert" gemeldeten QUESTIONS-Punkte (Adressdiskrepanz
Lenggstrasse/Lengstrasse) haelt der Gegenpruefung nicht stand — bleibt echt offen, der zitierte
Beleg klaert eine andere Adressfrage. Nichts selbst korrigiert (Phase 2 nur interaktiv). Report:
`wissen/auflagebereinigung/outputs/2026-07-21_health-check.md`. Kosten dieses Zyklus ca. 2.9 USD
von 5 USD Budget.

**Logbuch-Radar (Dienstag, 07:00) — NAS wieder online, ruhiges Fenster, harte Frist heute.** Quellen: Register + Journal, Konversations-Destillat 21.07., bexio `--verzug`, Mail-Vorfilter alle Apple-Mail-Konten (rj@/mail@, iCloud; Posteingang + Gesendete), Outlook-/iCloud-Kalender 7 Tage. **Erledigt seit gestern:** Buero-Ausfall behoben (NAS + Mac Mini seit 20.07. ca. 09:30 online, Dauerschicht/Nachtschicht verifiziert LIVE); Token-Rotations-Bug in `claude-usage.mjs` implementiert (nur Re-Login durch Raphael offen); Spec SYN-02 Interview abgeschlossen (E1–E9 bestaetigt, Umsetzung `volumen_generator.py` steht aus). **Aktiv/neu:** Thalwil 2414 — SBB (Wiedmer 20.07. 11:39) versendet die Naeherbaurechts-Vereinbarung per Post an die Eigentuemerschaft zur Unterschrift (von SBB- auf Eigentuemer-Unterschrift verschoben), SBB will zusaetzlich das aktualisierte Naeherbaurecht als Teil der Auflagebereinigung → JANS-Bringschuld; KISPI Auflagebereinigung Feuerpolizei — RJ fordert 20.07. 22:38 VKF-Nachweise LBW (W320/W340/W430/W440) bei Ziegel an, Ball bei Gruner (OOO). Drei Selbstfristen (Jegen 24.07., Roethlisberger 24.07./31.07.) in die bestehenden Los-Zeilen konsolidiert; LBW-Beschichtungs-Fachfrage weiterhin unbeantwortet (Usage-Limit). **Ueberfaellig:** RE-00087 (KISPI, CHF 15'000) 96 Tage auf Mahnung 2, Entscheid Stufe 3 / Betreibung offen; RE-00098/99 (KISPI) je 1 Tag ueber Frist. **Heute hart:** Jegen Prinzippläne Los 274.01, 7 Entscheide brauchen Raphael. **Kalender:** Koordinationssitzung 23.07. 13:00–14:00. Briefing an rj@ versendet.

**Nachtschicht-Zyklus Mac Mini (~06:30) — Root-Cause des Umlaut-Befunds gefunden + Infra-Fix.**
Doppelarbeit-Guard geprueft (dispatch/log/ inhaltlich): alle vorrangigeren Prioritaeten leer
oder diese Nacht bereits bedient (remote-tasks/sync-tasks leer; Synobsis-Scan saturiert;
Fristen-Register stundenaktuell; Trainingslektionen energie/planungsgrundlagen/normen heute
Nacht mehrfach gelaufen; QUESTIONS.md-Luecken brauchen Raphael-Entscheid). Statt eines vierten
Wissenscheck-Audits (Prioritaet 6) wurde der seit 02:30/04:30/05:30 dreimal identisch
aufgetretene Befund untersucht: fast alle Wiki-Artikel in `energie`, `planungsgrundlagen` und
`architekten-synobsis` verletzen die Umlaut-Konvention (ae/oe/ue statt ä/ö/ü) — zu
flaechendeckend fuer Einzelfehler. **Ursache gefunden:** die launchd-Jobs, die genau diese drei
KBs trainieren (`ch.jans.training-energie`, `ch.jans.training-plg`, `ch.jans.synobsis-batch`,
alle ueber `scripts/dispatch-run.sh`), laufen ohne Login-Profil in der POSIX-"C"-Locale
(`LANG=""`, `LC_CTYPE=C`) statt UTF-8 — bestaetigt durch `locale`-Check auf dieser Station.
Keine iconv/unidecode/Ascii-Fold-Logik im Hub-Code gefunden, also kein Skript-Bug, sondern ein
Umgebungs-Defekt. **Fix:** `scripts/dispatch-run.sh` erzwingt neu `LANG=de_CH.UTF-8` /
`LC_ALL=de_CH.UTF-8` (Abschnitt "Locale abhaerten", analog zum bestehenden PATH-Haerten);
Syntax + Locale-Aufloesung verifiziert. Bestehende ae/oe/ue-Stellen im Wiki bleiben unveraendert
(Content-Korrektur ist Wissenscheck-Phase-2, nur interaktiv) — der Fix verhindert neue Faelle ab
dem naechsten Trainingslauf. CHANGELOG-Eintrag in allen drei betroffenen KBs ergaenzt. Kosten
dieses Zyklus ca. 1.8 USD von 5 USD Budget. Zyklus sauber beendet.

**Nachtschicht-Zyklus Mac Mini (~05:30) — Wissens-Health-Check KB architekten-synobsis (Phase 1, Skill wissenscheck).**
Doppelarbeit-Guard geprueft (dispatch/log/ inhaltlich, CHANGELOGs, Fristen-Register): alle
vorrangigeren Prioritaeten leer/erschoepft (remote-tasks/sync-tasks leer, Synobsis-Scan
853/853 seit 02.07. saturiert, energie/planungsgrundlagen/normen heute Nacht bereits geprueft
bzw. trainiert, Fristen-Register aktuell ohne neu draftbaren Punkt). Genommen: Wissenscheck
Phase 1 auf `architekten-synobsis` — mit 20 Tagen (01.07.) der aelteste Audit unter den vier
Mac-Mini-KBs. Erster Check seit Aufbau der Stufe-3-Kuratierungs-Wiki (02.–03.07.): Backlink-
Abgleich `THEMEN.md` (697 Slugs) gegen `INDEX.md` (849 Eintraege) skriptgestuetzt — 0 echte
Bruecke, aber 38 Unterstrich-vs-Leerzeichen- und 6 Sonderzeichen/Umlaut-Format-Inkonsistenzen
(alle gegen Katalogdatei verifiziert). **Top-Fund: 32 Umlaut-Ersatzschreibungen in
`wiki/INDEX.md`** — drittes von drei Mac-Mini-KBs mit demselben Muster diese Nacht (nach
energie und planungsgrundlagen), staerkt den Verdacht auf eine gemeinsame Ursache im
Kuratierungs-/Trainings-Loop. `QUESTIONS.md` seit 03.07. konsistent eingefroren (kein neuer
Quellstoff, bekannt/bereits eskaliert). Nichts selbst korrigiert (Phase 2 nur interaktiv).
Report `wissen/architekten-synobsis/outputs/2026-07-21_health-check.md`, CHANGELOG ergaenzt.
Kosten dieses Zyklus ca. 2.7 USD von 5 USD Budget. Zyklus sauber beendet.

**Nachtschicht-Zyklus Mac Mini (~04:30) — Wissens-Health-Check KB planungsgrundlagen (Phase 1, Skill wissenscheck).**
Doppelarbeit-Guard geprueft: alle vorrangigeren Baustellen (remote-tasks/sync-tasks leer,
synobsis seit 13.07. ergebnislos/kein neuer Stoff, energie/normen heute bereits bearbeitet,
planungsgrundlagen selbst zweimal heute trainiert) liessen keinen kleineren Auftrag zu — daher
faelligster Wissenscheck genommen: planungsgrundlagen zuletzt am 01.07. geprueft (20 Tage,
aeltester unter den Mac-Mini-KBs). Zahlenbild: A0/C0 (nicht erschoepfend, Budget-Stichprobe),
B3 (2 durch Zeilenumbruch zerbrochene `[[...]]`-Backlinks, 2 Artikel fehlen im INDEX.md, 0
echte Orphans), D0 (RAW-Register vollstaendig inline verlinkt), E0 (aeltester Artikel 46 Tage,
alles unter der 90-Tage-Schwelle), **F2** (39 von 48 Wiki-Artikeln mit Umlaut-Ersatzschreibweisen
— deckt sich mit dem identischen Befund heute Nacht in KB energie, moeglicherweise gemeinsame
Ursache im Trainings-Loop, Nebenbefund an `koordination` zur Pruefung vermerkt; 1 Artikel ohne
Frontmatter), G10 (10 emerging-Artikel als Promotion-Kandidaten fuer den naechsten Trainingslauf,
nicht einzeln geprueft). Nichts selbst korrigiert (Phase 2 nur interaktiv). Register (CHANGELOG)
nachgefuehrt, Report `wissen/planungsgrundlagen/outputs/2026-07-21_health-check.md`. Deutlich
unter Budget; Zyklus sauber beendet.

**Nachtschicht-Zyklus Mac Mini (~03:30) — DIN 1946-6 ↔ SIA 382/1 Methodenvergleich (KB normen).**
Doppelarbeit-Guard geprueft (dispatch/log/, CHANGELOG): Mac-Mini-Baustellen energie/
planungsgrundlagen/normen-DIN-VSS-RAL alle frisch bearbeitet oder erschoepft (offene
QUESTIONS-Punkte brauchen Raphael-Entscheid bzw. sind bestaetigte Negativbefunde). Einzig
tragfaehiger kleiner Auftrag: der seit Run 5 (13.07.) offene QUESTIONS-Punkt «DIN 1946-6 ↔
SIA 382/1 Methodenvergleich» in `wissen/normen/wiki/QUESTIONS.md` — die noetige SIA-382/1-
Anhang-Ergaenzung kam just heute frueh durch die MacBook-Station (Run 17). Vergleichsartikel
`wissen/normen/wiki/din-1946-6-sia-382-1-lueftungsauslegung-methodenvergleich.md` aus den
beiden bereits vollstaendig verifizierten Destillaten geschrieben (keine neue Primaerquelle,
keine Agent-Fan-outs) — Kernbefund: DIN huellen-/feuchteschutzgetrieben vs. SIA nutzungs-/
lastgetrieben, fuer CH-Baueingaben bleibt SIA 382/1 massgebend. Register (QUESTIONS/INDEX/
CHANGELOG) nachgefuehrt, Report `wissen/normen/outputs/2026-07-21_din1946-6-sia382-1-methodenvergleich.md`.
Deutlich unter Budget; Zyklus sauber beendet.

**Dauerschicht-Zyklus 31 (MacBook Pro, ~03:20) — Nachtschicht-Fixes VERIFIZIERT, B5-Zulauf bestaetigt.** (1) Der 02:30-Nachtschicht-Lauf endete sauber (Exit 0) und schloss explizit budgetbewusst ab — Background-Wait-Fix (Zyklus 29) und Budget-Disziplin im Prompt (Zyklus 30) greifen; die Verlustserie 00:30/01:30 ist beendet. (2) Ueber Nacht ist das Schulhaus-Parameter-Set `schule-volksschule-ch.json` aus wettbewerbs-dna B5 in entwurfs-referenzen eingetroffen — unter dem am Abend abgestimmten Namen, schema-validiert, refuter-geprueft (Verdikt bestanden, 2 Praezisierungen); der Koordinationspunkt aus Zyklus 25 ist geschlossen. Die Cross-KB-Pipeline (Benchmark → Parameter-Set → Schema-Validierung) hat damit ihren ersten vollstaendigen Durchlauf. Kein weiterer Eingriff; ruhiger Nachtbetrieb.

**Nachtschicht-Zyklus Mac Mini — Wissens-Health-Check KB energie (Phase 1, Skill wissenscheck).**
Erster Health-Check der KB seit dem 01.07. (23 → 82 Runs, 50 → 133 Destillate, 29 → 101
FAQ-Fragen). Zahlenbild: A0 (keine offenen Widersprueche, gute Selbstkorrektur-Kultur), B4
(0 kaputte `[[Links]]` unter 154 Zielen, aber `destillate/INDEX.md` mit 35 Dubletten-Zeilen ueber
19 Destillate — Extremfall `muken-2025-verabschiedet` 7× — plus 2 komplett unregistrierte
Destillate; `wiki/INDEX.md` vermischt 25 destillat-basierte Eintraege mit den 21 echten
Themenartikeln, der FAQ-Indexeintrag ist zu einem mehrere tausend Woerter langen Mega-Absatz
angewachsen), C0 (Stichprobe zentraler Zahlen durchgehend belegt), D0 (RAW-Coverage vollstaendig),
E2 (`foerderung-energie-zh` und `graue-energie` ziehen je eine bereits destillierte, neuere
Erkenntnis nicht nach), **F1 schwer** (Umlaut-Konvention in 8 Wiki-Artikeln zu 100 % verletzt —
ae/oe/ue statt ä/ö/ü, u.a. `u-werte-grenzwerte-ch`, `minergie-standards`, `graue-energie` — und
auch im established-Kernprodukt BAUHERREN-FAQ zu rund 40 % betroffen; der 01.07.-Check hatte nur
Artikel-Titel stichprobenartig geprueft und den Fliesstext-Befund verpasst), G3 (2 der 3
Promotion-Kandidaten sind die exakt gleichen, die der 01.07.-Check bereits empfahl und die seither
unveraendert auf `emerging` stehen geblieben sind — Phase-2-Empfehlungen wurden bislang nicht
nachverfolgt). Keiner der Befunde verfaelscht eine Bauherren-Antwort inhaltlich; es sind reine
Form-/Pflege-Schulden der schnell gewachsenen Verwaltungsschicht. Report
`wissen/energie/outputs/2026-07-21_health-check.md`, CHANGELOG nachgefuehrt. Read-only Audit,
kein Versand, keine Aenderung an Wiki/Destillaten (Phase 2 nicht Teil dieses Laufs).

**Dauerschicht-Zyklus 30 (MacBook Pro, ~02:20) — zweiter Nachtschicht-Befund: Budget-Abbruch 01:30, Prompt geschaerft.** Der 01:30-Lauf endete mit «Error: Exceeded USD budget (5)» (exit 1) — nach dem Timeout-Verlust von 00:30 der zweite Lauf in Folge, der eine zu grosse Recherche-Aufgabe anpackte und die Ergebnisse verlor. Der Background-Wait-Fix aus Zyklus 29 ist inzwischen auf dem Mini angekommen (ab 02:30 wirksam). Zusaetzlich jetzt im Nachtschicht-Prompt verankert: **Budget-Disziplin** (nur Aufgaben ~4 USD inkl. Verifikation; groessere Aufgaben in QUESTIONS als «zu gross fuer Nachtschicht-Budget» vermerken statt anfangen; nach Budget-/Timeout-Abbruch NIE dieselbe Aufgabe direkt wiederholen) und der Dispatch-Protokoll-Inhaltscheck (Regel 260720). Wirksam ab Sync (~02:30/03:30). Verifikation im Morgenzyklus; falls die Nacht-Laeufe weiter abbrechen, ist der Takt oder das Budget der Nachtschicht ein Entscheid fuer Raphael. Kein Versand, additiv.

**Dauerschicht-Zyklus 29 (MacBook Pro, ~01:15) — Nachtschicht-Abbruch 00:30 diagnostiziert und strukturell behoben.** Das Dispatch-Protokoll 00:30 zeigt: Der Nachtschicht-Lauf startete eine Energie-Recherche mit Hintergrund-Agenten und wurde nach dem 600-s-Background-Wait-Default TERMINIERT, bevor der Orchestrator Verifikation, Registerpflege und Ablage ausfuehren konnte — kein Output, kein CHANGELOG-Eintrag, keine halbfertigen Dateien (per find geprueft): die Agent-Ergebnisse sind verloren (Token ohne Ertrag). Kontext: Run 82 dokumentierte bereits, dass das Workflow-Tool im Dispatch-Headless-Betrieb gesperrt ist («Review dynamic workflow before running») und die Nachtschicht deshalb auf Hintergrund-Agenten ausweicht — genau diese laufen in den 600-s-Deckel. **Fix:** `scripts/nachtschicht-run.sh` setzt jetzt CLAUDE_CODE_PRINT_BG_WAIT_CEILING_MS=1800000 (30 Min) fuer den Dispatch-Aufruf; der bestehende Lock laesst den naechsten Stundenzyklus sauber ueberspringen statt zu ueberlappen. Wirksam ab Sync auf den Mini (naechster Lauf 01:30 evtl. noch alt, ab 02:30 sicher). Verifikation des Fixes im Morgenzyklus. Kein Versand, additiv.

## 2026-07-20

**Nachtschicht-Zyklus Mac Mini (~23:30) — kein neuer Arbeitspunkt, sauber beendet.** Sechster Nachtschicht-Zyklus des Abends; alle sechs Prioritaeten unabhaengig gegengeprueft (nicht nur Dateiname des letzten Dispatch-Protokolls, sondern Inhalt gelesen, gemaess der soeben von der Dauerschicht abgeleiteten Koordinations-Regel 260720): Sync-/Remote-Queues leer; Synobsis Stufe 2 weiterhin als Entscheid-Pendenz beim Auto-Verbesserungs-Register; Fristen-Radar zuletzt 21:35 mit Delta-Pruefung ohne neuen Befund; alle drei Mini-exklusiven Trainings-KBs (energie Run 82, planungsgrundlagen Run 54, normen Mini-Run 33) heute bereits gelaufen; offene QUESTIONS.md-Kandidaten heute bereits bearbeitet (normen, kunde-bopp) oder gemaess Arbeitsteilung MacBook-Pro-exklusiv (baurecht/twin/spec/wettbewerbs-dna — Letzteres zudem gerade als naechstes Erst-Audit-Ziel der Dauerschicht reserviert, bewusst nicht angetastet); wissenscheck-Turnus erst wieder 01.08. faellig, KB normen zudem soeben (~23:00) bereits neu auditiert. Kein sinnvoller neuer Arbeitspunkt gefunden — bewusst keine Beschaeftigung erfunden, Zyklus ohne inhaltliche Aenderung beendet. Kein Versand, keine Buchung, keine Loeschung.

**Dauerschicht-Zyklus 27 (MacBook Pro, ~23:10) — Kollision beim normen-Audit erkannt, eigenen Report VERWORFEN, Koordinations-Regel abgeleitet.** Der Zyklus begann das Erst-Audit der KB normen (deterministische Struktur-Scripts ueber 271 Destillate) — beim Schreiben des Reports zeigte sich: die Nachtschicht hatte dasselbe Audit um 22:41 bereits vollstaendig abgelegt (17 KB, 7 Audits, Top-Befund SIA-112-Fehlzuordnung). Der eigene Report wurde verworfen; Gegenpruefung ergab zudem, dass der eigene «124 Orphans»-Messwert gegen die falsche Referenzbasis lief (Destillate registrieren sich in destillate/INDEX.md, nicht im Wiki — Nachtschicht-Zaehlung 25 ist die richtige). Ursache der Kollision: der Doppelarbeit-Guard prueft bislang nur den Dateinamen des juengsten Dispatch-Protokolls, nicht dessen Inhalt. **Konsequenz: neue Koordinations-Regel in rules/auto-verbesserungen.md (260720)** — Dispatch-Protokoll INHALTLICH lesen + grosse Einzelaufgaben vor Beginn per Journalzeile ankuendigen. Token-Schaden gering (Script-basiert, kein Agent-Fan-out). Verbleibendes Erst-Audit-Ziel: nur noch wettbewerbs-dna.

**Nachtschicht-Zyklus Mac Mini (~23:00) — Erster Wissens-Health-Check KB normen (Phase 1, Skill wissenscheck).** Die KB `normen` (270 Destillate, seit 11.07. im Intensiv-Training) war die letzte der vier nie auditierten KBs (nach entwurfs-referenzen und koordination heute frueher am Tag) und wurde vollstaendig gegen die sieben Audits geprueft. Zahlenbild: A1 (SIA-112-Destillat ordnet SIA 104/105 seit 17.07. den falschen Berufsgruppen zu, trotz offenem QUESTIONS-Eintrag bis heute unkorrigiert), B64 (39 tote `[[Backlink]]`-Vorkommen, ueberwiegend fehlende Jahres-Suffixe; 25 Destillate nicht in destillate/INDEX.md registriert), C1 (ein Destillat beruht auf einer als ChatGPT-Antwort gekennzeichneten Quelle, korrekt speculative gefuehrt), D0 (Trainings-Inventar vollstaendig, 0 offene Positionen), E0 (KB erst 9 Tage alt), F143 (11x ß statt ss, 1x Deko-Symbol, 4x fehlendes Pflichtfeld last_updated/datenstand, 127x fehlendes Pflichtfeld ersetzt/ersetzt_durch), G0 (6 speculative-Destillate geprueft, alle korrekt zurueckgehalten). Keine neuen inhaltlichen Sachfehler gefunden — die adversariale Verifikationskultur des Trainings-Loops faengt diese bereits selbst ab; die Funde sind mechanisch/strukturell. Report `wissen/normen/outputs/2026-07-20_health-check.md`, CHANGELOG nachgefuehrt. Read-only Audit, kein Versand, keine Aenderung an Destillaten/Register (Phase 2 nicht Teil dieses Laufs).

**Dauerschicht-Zyklus 26 (MacBook Pro, ~22:10) — Erst-Wissenscheck KB koordination (kompakt): gesund, ein Beobachtungspunkt.** Zweites Erst-Audit des Tages (Prioritaet 6): Die Meta-KB ist hochaktiv und diszipliniert (taeglicher Wissens-Chef, Synergie-Register tagesaktuell inkl. SYN-02-Bestaetigung durch Raphael heute). Register-Stichproben 3/3 bestanden (SYN-02-Spec-Datei existiert, S5/S6 im Katalog aktiviert, Rollen-Matrix-Ziele vorhanden). Einziger operativer Befund: **Wissens-Chef-Run 10 fehlt fuer heute** — mutmasslich Opfer des Buero-Ausfalls bis 09:30; kein Eingriff, Beobachtung ob der Takt am 21.07. selbststaendig greift, erst bei erneutem Ausfall eskalieren. Struktur-Abweichung vom Metaschema (Register-KB ohne wiki/raw) ist dokumentiert und gewollt. Report outputs/2026-07-20_health-check.md, CHANGELOG nachgefuehrt. Kein Versand, additiv. Damit sind von den vier nie auditierten KBs zwei geprueft (entwurfs-referenzen, koordination); normen und wettbewerbs-dna folgen in spaeteren Zyklen.

**Nachtschicht-Zyklus Mac Mini (~21:35) — Fristen-Radar: Delta-Pruefung ohne neuen Befund.** Prioritaeten 1-2 leer/blockiert (keine Sync-/Remote-Tasks; Synobsis Stufe 2 seit mehreren Zyklen als Entscheid-Pendenz beim Auto-Verbesserungs-Register eskaliert, kein Neustoff). Priotaet 3 (Fristen-Radar) vertieft geprueft: bexio `--verzug` auf dieser Station ohne hinterlegten API-Token nicht abrufbar (kein `~/.bexio.env`), daher stattdessen M365-Mail-Delta seit dem letzten Radar-Eintrag (19:35) kontrolliert — rj@raphaeljans.ch ohne Neueingang seit 14:06 (letzte Mail bereits vor dem 19:35-Stand erfasst), mail@raphaeljans.ch ein Eingang (Discord-Spam, keine Frist-/Geschaeftsrelevanz). Kein neuer ueberfaelliger oder fristrelevanter Punkt seit dem letzten Radar-Lauf. Prioritaeten 4-6 gesaettigt: beide Mini-exklusiven Trainings-KBs (energie Run 81, planungsgrundlagen Run 54) sowie normen (Mini-Run 33) heute bereits gelaufen; von den KBs mit offenen QUESTIONS.md sind auflagebereinigung, entwurfs-referenzen, firmengruendung-ch, kunde-bopp bereits heute vom Dauerschicht-Loop bearbeitet, architekten-synobsis wartet auf Raphaels Freigabe fuer Stufe 3, projekt-lessons ist mangels Rohmaterial nicht bearbeitbar, baurecht/twin/spec/wettbewerbs-dna sind gemaess Arbeitsteilung (Rule 260714) MacBook-Pro-exklusiv; wissenscheck-Health-Checks liegen bei allen KBs erst drei Wochen zurueck (01.07./02.06.), naechste Faelligkeit turnusgemaess erst 01.08. Kein Versand, keine Buchung, keine Loeschung; nur Register-Kontrolle gemaess Whitelist A4, keine Aenderung an `fristen.md` noetig (nichts Neues zum Eintragen).

**Dauerschicht-Zyklus 25 (MacBook Pro, ~21:05) — Phase-2-Fixes entwurfs-referenzen; Schulhaus-Set bewusst NICHT gebaut.** Umsetzung der kollisionsfreien Audit-Aktionen: INDEX-Luecke geschlossen (wohnen-mfh-urban), [[...]]-Konvention auf JSONs bereinigt, Seed-Import-Fragen als UEBERHOLT archiviert (Abfrage-Workflow via architekten-synobsis dokumentiert). WICHTIG: Das im Audit als Compounding-Kandidat notierte Schulhaus-Parameter-Set wird NICHT von der Dauerschicht gebaut — der Benchmark kennwerte-schulbauten (Abschnitt 8) weist es ausdruecklich dem Baustein B5 des dedizierten Loops wettbewerbs-dna-training zu (schule-volksschule-ch.json, naechster Lauf). Stattdessen die entdeckte Namens-Kollision (bildung-schulhaus vs. schule-volksschule-ch) als Koordinationspunkt in QUESTIONS dokumentiert und den B5-Namen im INDEX angekuendigt; diese KB validiert das Set beim Eintreffen gegen ihr Schema. Doppelarbeit-Guard hat damit heute den vierten Bau-Konflikt verhindert. CHANGELOG nachgefuehrt. Kein Versand, additiv.

**Nachtschicht-Zyklus Mac Mini (~20:35) — KB normen: Mac-Mini-Uebergabe-Punkte aus Run 15 abgearbeitet.** Prioritaeten 1-4 leer/gesaettigt (keine Sync-/Remote-Tasks; Synobsis seit Tagen als Entscheid-Pendenz eskaliert; Fristen-Register bereits tagesaktuell durch den Dauerschicht-Loop, ueberfaellige Punkte wie RE-00087/KISPI Jegen sind entweder Phase-2-Mahnwesen (nur interaktiv, nicht autonom draftbar) oder bereits mit Entscheidungsblatt/Entwurf versorgt; alle drei Mini-exklusiven Trainings-KBs heute schon gelaufen bzw. dauerhaft stillgelegt: energie Run 81, planungsgrundlagen Run 54, normen-training-mini seit 17.07.). Stattdessen Prioritaet 5: `wiki/QUESTIONS.md` der KB `normen` fuehrte einen expliziten Abschnitt "Uebergabe an den Mac Mini" (von der MacBook-Pro-Seite, Run 15, 17.07.) mit zwei offenen Punkten. (1) **Zaehl-Differenz aufgeloest:** frischer rekursiver Datei-Abgleich gegen die live gemountete SharePoint-Ablage zeigt DIN 72=72, VSS 17=17 (netto), RAL 1=1 — die am 17.07. gemeldete Differenz (DIN 71, VSS 14) reproduziert sich heute nicht, kein Bestandsfehler. (2) **Auszug-Plausibilisierung — neuer Fund:** `DIN EN 12207.pdf` liest sich normal (6 S.), aber `DIN 277-1.pdf` ist auf dem Mac Mini aktuell nicht lesbar (`pdfinfo` findet kein gueltiges Trailer/xref, `cat`/`tail`/Read-Tool scheitern reproduzierbar mit `EDEADLK`) — spezifisch auf diese Datei begrenzt, vier Vergleichsdateien im selben Ordner sind einwandfrei lesbar. Vermutlich ein lokal defekter/teilweise materialisierter OneDrive-Platzhalter, kein Beleg gegen das bestehende, mehrfach verifizierte Destillat; als naechster Schritt eine Gegenprobe auf dem MacBook Pro vorgeschlagen. `wiki/QUESTIONS.md` + `CHANGELOG.md` der KB nachgefuehrt, Report `wissen/normen/outputs/2026-07-20_normen-mini-run33.md`. Read-only Recherche/Dateipruefung, kein Versand, keine Buchung, keine Loeschung, kein Task reaktiviert.

**Dauerschicht-Zyklus 24 (MacBook Pro, ~20:10) — Erst-Wissenscheck KB entwurfs-referenzen (Phase 1).** Prioritaet 6, da Trainings-KBs heute versorgt und keine Sync-Tasks: Die nie auditierte KB entwurfs-referenzen geprueft (7 Audits). Zahlenbild: A 0 Widersprueche, B 2 (INDEX-Luecke wohnen-mfh-urban, [[...]]-Konvention auf JSON), C 0 kritisch (Quellen je Set vorhanden, je-Wert-Zuordnung fehlt strukturell), D 1 strategischer Hauptbefund: **der seit 18.06. ausstehende Seed-Import aus 05_Architekten_Synobsis ist ueberholt** — die KB architekten-synobsis (Katalog 853 + Vektorindex + Themenregister) deckt die Quelle ab, richtig ist ein Abfrage-Workflow statt Roh-Import (die drei Seed-Fragen in QUESTIONS sind faktisch beantwortet), E 0 aber KB schlafend, F 0, G 1 hochwertiger Compounding-Kandidat: bildung-schulhaus.json kann aus dem heute etablierten wettbewerbs-dna-Benchmark kennwerte-schulbauten BELEGT geseedet werden (HNF/GF 0.52-0.54, KZ 64-75 m2, 1.6-1.8 Mio/KZ). Beide JSONs schema-validiert (OK). Report outputs/2026-07-20_health-check.md, CHANGELOG nachgefuehrt; Phase-2-Aktionen fuer Folgezyklen notiert. Kein Versand, additiv.

**Nachtschicht-Zyklus Mac Mini (~19:35) — Fristen-Register bereinigt, MAC-Adressen fuer WoL hinterlegt.** Prioritaeten 1-2 leer (keine Sync-/Remote-Tasks, Synobsis Stufe 2 seit mehreren Zyklen als Entscheid-Pendenz beim Auto-Verbesserungs-Register eskaliert, kein Neustoff). Prioritaet 3 (Fristen-Radar) ergab: der Registereintrag «Bueroausfall — offen, hoch» ganz oben in `fristen.md` war stale — der Ausfall war laut LOGBUCH- und Register-Eintraegen bereits um 09:30 behoben, nur der fruehe Konversations-Destillat-Eintrag stand noch auf offen. Nachtrag ergaenzt (append-only, nichts geloescht) mit Verweis auf die bestehenden «erledigt»-Eintraege. Die dort seit der Behebung offene Folgemassnahme «MAC-Adressen hinterlegen und WoL einrichten» direkt erledigt: MAC-Adressen per `arp -a` ermittelt (NAS DS918+ `00:11:32:85:96:e9`, Mac Mini `20:a5:cb:c7:66:b4`), Wake-on-LAN auf dem Mac Mini bereits aktiv (`pmset -g` → `womp 1`, read-only geprueft, nichts geaendert). Verbleibt fuer Raphael: Magic-Packet-Weiterleitung auf der OPNsense, falls externer Fernstart gewuenscht (Infrastruktur-Aenderung, nicht autonom). Kein Versand, keine Buchung, keine Loeschung; nur Register-/Journalpflege gemaess Whitelist A4.

**Dauerschicht-Zyklen 22+23 (MacBook Pro, 17:58 + 18:51) — Mac-Mini-Nachtschicht VERIFIZIERT, beide Auftraege Raphaels live.** Vorpruefung 17:58: Script auf dem Mini synchronisiert, launchd-Job geladen, Dispatch-Env vorhanden (headless via API-Key, unabhaengig vom defekten OAuth-Token). Verifikation 18:51: **Erster Nachtschicht-Lauf 18:30:05–18:38:42 vollstaendig erfolgreich** — dispatch-run.sh fuehrte einen kompletten Zyklus im vollen JANS-Harness aus (siehe Nachtschicht-Eintrag direkt unten), Exit 0, Protokoll dispatch/log/20260720-183005-28585.md; kein launchd-TCC-Problem. Damit sind beide Auftraege vom 20.07. LIVE: Dauerschicht MacBook Pro (rund um die Uhr, seit Zyklus 14 produktiv) + Nachtschicht Mac Mini (stuendlich 18:30–08:30). Register auf erledigt gesetzt, Push an Raphael.

**Nachtschicht-Zyklus Mac Mini (~18:30) — KB kunde-bopp: Firmenrollen Christoph Bopp verifiziert.** Prioritaeten 1-2 leer/gesattigt (keine Sync-/Remote-Tasks; Synobsis Stufe 2 seit Zyklus 19 als Entscheid-Pendenz beim Auto-Verbesserungs-Register, kein Neustoff); Fristen-Register bereits durch den Dauerschicht-Loop tagesaktuell (Radar 07:00 + Delta-Pruefung 09:30); alle Mini-Trainings-KBs (energie Run 81, planungsgrundlagen Run 54, normen DIN/VSS/RAL seit 17.07. stillgelegt) heute bereits gelaufen bzw. gesaettigt. Stattdessen Prioritaet 5 (offene QUESTIONS.md): KB `kunde-bopp` hatte seit Anlage (03.06.) die Faktenfrage "exakte Firmenrollen WOMA Maur/Nova Property" offen — via oeffentliche Register/Webseiten (nicht Mail-Archiv) recherchiert und beantwortet. Befund: WOMA Maur ist eine **Genossenschaft** (UID CHE-103.976.168), Christoph seit 2013 Vorstand Ressort Liegenschaften + Vizepraesident; Nova Property Fund Management AG (UID CHE-403.795.970), Christoph seit 2021 Head Development & Construction in der erweiterten Geschaeftsleitung. Neuer Lead: drittes, unidentifiziertes KMU-Mandat seit 2004 (Nova-Kurzbio) — als neue Frage aufgenommen. `wiki/profil-christoph-bopp.md` aktualisiert (Rollen-Tabelle + Qualifikation), dabei den seit Health-Check 01.07. offenen Befund F (ae/oe/ue statt echter Umlaute) mitkorrigiert. Report `wissen/kunde-bopp/outputs/2026-07-20_firmenrollen-verifikation.md`, INDEX/QUESTIONS/CHANGELOG der KB nachgefuehrt. Read-only Web-Recherche, kein Versand, kein Kontakt mit Dritten, keine Buchung/Loeschung.

**Dauerschicht-Zyklus 21 (MacBook Pro, ~17:15) — KB auflagebereinigung: GVZ-Einreichungsweg BMA/Sprinkler geklaert.** QUESTIONS-Punkt mit direktem 2619-KISPI-Bezug (Bauentscheid Ziff. II.25/II.26) an den Primaerquellen geschlossen: GVZ-Weisungen 20.07 (BMA, Volltext) und 20.08 (SPA, Kap. 5–7) gelesen (via WebFetch/Read, kein manueller Download). Neuer established-Artikel [[gvz-einreichung-bma-sprinkler]]: Projektbegutachtung VOR Ausfuehrungsbeginn durch VKF-Fachfirma (Schwellen >10 Melder/600 m² bzw. >10 Sprinkler/100 m²), Unterlagenlisten je Anlage, Installations-Attest vor Abnahme, GVZ = Brandschutzbehoerde und Inspektionsstelle, ELZ/Weisung 30.25, Ausserbetriebsetzung >24 h mit 3-Tage-Vorlauf, Kontrollturnus Spitaeler (RG 1) 5 Jahre, GVZ-Pruefungen kostenlos; Transfer-Abschnitt fuer die Deliverable-Zuteilung. INDEX/QUESTIONS/CHANGELOG nachgefuehrt. Kein Versand, additiv gearbeitet.

**Dauerschicht-Zyklus 20 (MacBook Pro, ~15:50) — KB firmengruendung-ch: Wiki-Artikel `steuern-ag-inhaber` promoviert.** Baustellen-Check zuvor: Wettbewerbs-Layer CAD (Etappe 4 Geometrie-Schienen) ist laut Spec E3 ausdruecklich erst NACH nochmaliger Bestaetigung durch Raphael zu bauen und Etappe 3 laeuft noch (B5 offen) → bewusst nicht angefasst; damit sind alle drei Loop-Baustellen geklaert (zwei waren erledigt, eine ist gated). Stattdessen Prioritaet 4: Der in QUESTIONS geflaggte Punkt «Promotion steuern-ag-inhaber pruefen» umgesetzt — der established-Output vom 02.07. (Steuerhebel AG-Inhaber ZH: PK-Einkauf, 3a, Lohn/Dividende + 7 situative Hebel) ist jetzt Evergreen-Wiki-Artikel mit Jahresende-Checkliste und Alterungs-Warnung; INDEX (neue Sektion Steuern), QUESTIONS (Gruendungsteil bleibt offen) und CHANGELOG nachgefuehrt. Kein Versand, additiv gearbeitet.

**Dauerschicht-Zyklus 19 (MacBook Pro, ~14:45) — Synobsis: Stufe 2 laengst komplett, Stilllegungs-Empfehlung ins Register eskaliert.** Baustellen-Check Prioritaet 5: Der Vektorindex `catalog/vectors.npz` (853 x 768) ist live und die semantische Suche funktionsgeprueft — die Baustelle «Synobsis Stufe 2» war eine veraltete Gedaechtnis-Notiz (korrigiert, inkl. MEMORY-Index; ebenso Dossier-Engine-Zeile aus Zyklus 18 nachgezogen). Echter Handlungsbedarf stattdessen: Die KB ist saturiert, `synobsis-batch-nacht` produzierte seit 13.07. **18 ergebnislose Laeufe**, die Stilllegungs-Empfehlung stand 8x ungehoert im KB-CHANGELOG (Task darf sich nicht selbst umkonfigurieren; heutiger Fremdnetz-Zwischenfall zeigt zudem Diagnoseaufwand ohne Gegenwert) → als **Entscheid Raphael ins Fristen-Register eskaliert** (Muster immobewertung-training 19.07.), mit dokumentierten Reaktivierungs-Triggern. Kein Task geloescht, nichts umkonfiguriert — nur Register/Gedaechtnis nachgefuehrt.

**Dauerschicht-Zyklus 18 (MacBook Pro, ~13:50) — Baustellen-Klaerung Dossier-Engine: erledigt, kein Bau noetig.** Aufgabenwahl: Energie-Training uebersprungen (Doppelarbeit-Guard — der dedizierte Loop hat heute mit Run 81 die ZH-Standardloesungs-Luecke bereits geschlossen, Destillat en-120-standardloesungen established); die uebrigen Trainings-KBs gehoeren ihren eigenen Loops. Stattdessen Baustelle «Dossier-Engine» (Prioritaet 5) verifiziert: Die Engine aus der Session-Analyse 01.06. ist laengst GEBAUT und produktiv (`skills/ausschreibung/tools/dossier_build.py` + Config-Schema; reale Configs 2620-258 Kuechengeraete, 2620-272 Metallbau, priv-258 Geschirrspueler; Bausteine jans_docx.py; verwandt kanonisch: studien-generator, machbarkeit-studio build_studio/build_dossier aus model.json). Verbleibend nur OPTIONALE Ausbauten mit Trigger «naechste reale Ausschreibung»: (b) Apple-Mail-Draft-Erzeugung je Anbieter (nur Drafts), (c) automatische BKP-Arbeitsordnerstruktur. Veraltete Gedaechtnis-Notiz aktualisiert — die Baustelle wird nicht mehr als offen verfolgt, kein Vorrats-Bau (Regel: keine Beschaeftigung erfinden). Naechste Pruefpunkte des Loops: 18:30 erster Mac-Mini-Nachtschicht-Lauf.

**Dauerschicht-Zyklus 17 (MacBook Pro, ~12:35) — Token-Rotations-Bug in claude-usage.mjs behoben.** Aufgabe aus dem Fristen-Register (401-Befund, Ursache heute auf dem Mini verifiziert): Der Connector verwarf den bei jedem Refresh ROTIERTEN Refresh-Token («nur im Speicher»), womit jeder unbeaufsichtigte Lauf die Keychain-Credentials entwertete — das Muster hinter den Ausfaellen vom 12.07. («Not logged in») und 19.07./20.07. (401). Fixes an `connectors/claude-usage.mjs` (NAS-kanonisch): (a) `persistiereRotation()` schreibt access/refresh/expiresAt nach jedem Refresh in den Keychain-Eintrag «Claude Code-credentials» zurueck (`security add-generic-password -U`, Account aus dem Eintrag ermittelt, uebrige Felder unveraendert); (b) irrefuehrender Messages-Fallback bei 401/403 entfernt, stattdessen klare Re-Login-Anweisung; (c) Refresh-Fehler nennt neu Ursache (Rotation) und Behebung. Headless getestet: Script laeuft fehlerfrei und endet mit sauberer Anleitung (Keychain in der Bash-Sandbox nicht lesbar; Refresh-Pfad erst nach Re-Login real pruefbar). OFFEN bei Raphael: einmalig `claude` → `/login`, danach Kontrolllauf (erwartete Quelle bei faelligem Refresh: «Keychain (refreshed, Rotation gesichert)»). Register nachgefuehrt. Kein Versand, keine Loeschung, read-only am Konto.

**Woechentlicher Abo-Auslastungs-Check (Mac Mini) — Ampel GRUEN, Messung vom 19.07.; Ursache des OAuth-401 verifiziert.** Messwerte aus dem einzigen erfolgreichen Lauf am 19.07.: **Woche alle Modelle 31 %** (Reset 20.07. 12:00), 5-Stunden-Fenster 1 %, Woche Fable 12 %, **Extra Usage 0.00 USD**. Damit klar unter der 50-%-Schwelle und deckungsgleich mit der Erwartung nach dem Wechsel auf Max 5x (~28–30 %); keine Pendenz aus der Auslastung. Die Extra-Usage-Angabe ist eine Ableitung, kein abgelesener Wert: der Connector druckt die Zeile nur bei aktivem `extra_usage`, sie blieb aus → entweder nicht aktiv oder kein Verbrauch, in beiden Faellen keine Kosten. **Der Check konnte am 19.07. nicht ins Logbuch schreiben**, weil das NAS waehrend des gesamten Laufs offline war (LAN und Tailscale ohne Antwort, geprueft zu Beginn und am Ende); in den lokalen Repo-Spiegel wurde bewusst nicht geschrieben, da die Sync-Richtung NAS→Repo den Eintrag ueberschrieben haette (Rule `sync-kanonische-quelle`) — dieser Eintrag ist die Nachfuehrung nach Rueckkehr des NAS. **Nachfolgelaeufe schlugen fehl:** zunaechst 429 (Rate-Limit, ueber zehn Minuten anhaltend), am 20.07. dann 401. Die Diagnose am 20.07. hat die Ursache geklaert und den bereits im Register gefuehrten Punkt «VOLLGAS-Abbruch mit 401» verifiziert: **der Refresh-Token in der Keychain ist ungueltig** (`invalid_grant`, direkt gegen den OAuth-Endpunkt geprueft; Access-Token abgelaufen seit 13.07.). Ursache ist ein Konstruktionsfehler im Connector — er refresht nur im Speicher und schreibt den bei der Rotation neu ausgegebenen Refresh-Token nicht in die Keychain zurueck, wodurch der gespeicherte entwertet wird. Behebung braucht einen interaktiven `/login`; Details und die drei Folgeschritte im Fristen-Register. **Eigener Fehler transparent:** um die Extra-Usage aus dem Rohfeld zu belegen statt aus der fehlenden Ausgabezeile zu schliessen, wurde eine Connector-Kopie zusaetzlich ausgefuehrt — unnoetig, da der Erstwert belastbar war, und Ausloeser des 429. Die Kopie ist geloescht, am Original wurde nichts veraendert; der 401 dagegen ist aelter und nicht dadurch verursacht (VOLLGAS-Abbruch bereits in der Nacht 19./20.07.). Read-only gearbeitet, keine Abo- oder Kontoaenderung.

**Dauerschicht-Zyklus 16 (MacBook Pro, ~11:50) — Baurecht Buch-Run 49: Transfer-Abschluss festgestellt.** Faellige Trainings-KB baurecht (letzter Lauf 17.07.): Die fuenf «Restschuld»-Notizen im PROGRAMM waren allesamt veraltet — am Inventar bzw. direkt an den Shots verifiziert. Echte Funde: (1) Shot 212 ist nur der Kapiteltrenner Kap. 7 (Restschuld Kap. 6 gegenstandslos); (2) der 16.9-Schluss auf S. 1230 (16.9.3 Nachbarrecht/Stuetzmauern) war nur 2-zeilig erfasst → am Shot 619 nachgelesen und um die Kostentragungs-Regel angereichert (Art. 685 ZGB, BEZ 1991 Nr. 46, § 178 EG ZGB), Kap. 16 damit lueckenlos; (3) verbleibende offene Shots klassifiziert als Front-Matter (1-40, 321-344; Shot 321 = Band-2-Titel verifiziert) bzw. Kap. 18 bewusst ausgelassen. **Der Buch-Transfer Band 1+2 ist damit abgeschlossen**; kuenftige Laeufe = Phase 3 (Verifikation/Drills/Aktualitaet), Ruecktaktung auf woechentlich bleibt als Vorschlag bei Raphael (seit Run 48). Report outputs/2026-07-20_buch-run49.md, CHANGELOG nachgefuehrt. Kein Versand, additiv gearbeitet.

**Dauerschicht-Zyklus 15 (MacBook Pro, ~11:00) — KB wettbewerbs-dna, Beobachtung 6 mit Hauptbefund.** Faelligste Trainings-KB (letzter Lauf 12.07.) geprueft: **Der Wettbewerb 2507 TKHL Halden (St.Gallen) ist seit 02.04.2026 entschieden** — Sieger «ZVIERI» (Richter Tobler GmbH, Basel), einstimmig aus 51 Beitraegen; der **Jurybericht (Stand 14.04.2026) liegt als PDF auf stadt.sg.ch** (>10 MB). Damit ist einer der beiden Beobachtungs-Blocker der KB geloest; die Destillation (Dossier-Ergebnisteil, Rang des JANS-Beitrags LIMO, Erweiterung Muster delta-zum-ersten-rang, Refuter) ist die naechste faellige Lektion — **der PDF-Download braucht Raphaels Freigabe** (Regel: keine Datei-Downloads ohne Freigabe; WebFetch scheiterte an der Dateigroesse). Methoden-Korrektur festgehalten: espazium lief >3 Monate nach, kuenftig Ausloberin-Website mitpruefen. 2501 Steinfabrik unveraendert (6. Pruefung, konkurado ohne Bericht). QUESTIONS/CHANGELOG/PROGRAMM der KB nachgefuehrt. Kein Versand, kein Download, additiv gearbeitet.

**Dauerschicht-Zyklus 14 (MacBook Pro, 10:21) — Buero wieder online, Mac-Mini-Nachtschicht eingerichtet.** Der Betriebsausfall (19.07. ca. 14:45 bis 20.07. ca. 09:30) ist beendet: NAS wieder gemountet (Tailscale direkt), Mac Mini per SSH erreichbar (Uptime 54 Min), NAS-Selfcommit laeuft. Der Dauerschicht-Loop hat den Ausfall mit 13 Warte-Zyklen und drei Push-Meldungen ueberbrueckt und die Arbeit selbststaendig aufgenommen. Aufgabe des Zyklus (aus dem Fristen-Register): **Mac-Mini-Nachtschicht 18:00–09:00 gemaess Auftrag Raphaels umgesetzt** — neues Skript `scripts/nachtschicht-run.sh` (NAS-kanonisch) + launchd-Job `ch.jans.nachtschicht` auf dem Mini (stuendlich 18:30–08:30, je Lauf EIN Zyklus via `dispatch-run.sh`, Budget 5 USD, Guards: Zeitfenster/NAS/Lock/Doppelarbeit/Whitelist/kein Versand). Fenster-Guard auf dem Mini getestet. Offen: ersten Lauf 18:30 verifizieren (launchd-TCC auf /Volumes). Register nachgefuehrt (Betriebsausfall → nachfassen nur noch WoL/Ursache; Nachtschicht → zu pruefen). Kein Versand, keine Buchung, additiv gearbeitet.

**Hub-Chef-Lauf ohne Befund — abgebrochen wegen fehlendem NAS.** `/Volumes/daten` ist weiterhin nicht gemountet, das DS918+ (100.92.246.28) und der Mac Mini (100.120.219.12) sind laut Tailscale seit rund 17 Stunden offline, LAN-Ping auf 192.168.1.10 ohne Antwort. Damit fehlen Skills, Agenten, Rules, `services/KATALOG.md` und vor allem die `AKTIONS-WHITELIST.md` als Handlungsgrundlage; der Lauf wurde gemaess Vorbedingung abgebrochen und ausschliesslich lokal protokolliert. Es wurde keine Aktion ausgefuehrt und nichts versendet.

**Delta-Pruefung gegen den Radar von 07:00 (read-only, auf dem lokalen Repo-Spiegel):** kein neuer Befund. Der Mail-Vorfilter ueber alle Apple-Mail-Konten zeigt seit 07:00 **keinen neuen externen Eingang** — die einzigen Eintraege des Tages sind die Radar-Briefings des Hubs an rj@ selbst. bexio `--verzug` unveraendert gegenueber dem Radar: RE-00087 (KISPI, CHF 15'000.00) 95 Tage ueberfaellig auf Mahnung 2, Entscheid Mahnstufe 3 / Betreibung liegt bei Raphael; RE-00098 (CHF 13'600.00) und RE-00099 (CHF 3'680.00) heute faellig, noch ohne Verzug; RE-00100 (Nova, CHF 13'120.00) faellig 30.07., RE-00101 (Tschopp, CHF 6'000.00) faellig 31.07. Harte Frist morgen unveraendert: Jegen Prinzippläne Los 274.01, Rueckmeldung bis Di 21.07., sieben der zehn Punkte brauchen Raphaels Entscheid.

**Keine Briefing-Mail versendet**, da keine neuen Befunde, Aktionen oder Entwuerfe vorliegen und der Radar denselben Stand heute um 07:00 bereits gemeldet hat (Regel: keine Doppelmeldung). Offen bleibt die Vor-Ort-Kontrolle von NAS und Mac Mini als Voraussetzung fuer den naechsten vollstaendigen Hub-Chef-Lauf.

**Logbuch-Radar (Montag, 07:00) — ohne NAS gelaufen.** `/Volumes/daten` war waehrend des gesamten Laufs nicht erreichbar; Register, Journal und Konversations-Destillat wurden deshalb im lokalen Repo-Spiegel gefuehrt und muessen nach Rueckkehr des NAS mit dem NAS-Stand abgeglichen werden. Quellen: Konversations-Destillat 20.07., bexio `--verzug`, Mail-Vorfilter ueber alle Apple-Mail-Konten (rj@, mail@, outlook.com; Posteingang und Gesendete), Outlook-Kalender 7 Tage, ccusage.

**Erledigt.** (1) **TeKoSi Los 231.10:** die am 19.07. vorbereitete Rueckmeldung ist am **19.07. 09:26** aus rj@ versendet worden, mit Tuerliste als PDF und Excel im Anhang — die Selbstfrist 20.07. ist eingehalten, der Punkt ist archiviert, der Ball liegt bei L. Hiltmann (korrigierte Summe auf Basis 32 Tueren, Kostendach, Wegfall Pos. 4). (2) **Kontext-Diaet:** der Registerstand «Kuerzungsvorschlag liegt zur Freigabe» ist ueberholt — freigegeben und am 19.07. umgesetzt, Grundlast 163 → 74.6 kB, Commit `bae52aa0`; archiviert. Der Teilpunkt «deterministische Vorfilter-Scripts» wurde heute am Beleg verifiziert, weil `scripts/mail-vorfilter.sh` in diesem Lauf produktiv lief.

**Offen und neu aufgenommen.** Betriebsausfall Buero (NAS und Mac Mini seit 19.07. ca. 14:45 gleichzeitig offline, Vor-Ort-Kontrolle noetig, Wake-on-LAN als Folgemassnahme), Dauerschicht-Loop MacBook Pro plus Mac-Mini-Nachtschicht 18:00–09:00 (Auftrag Raphaels, durch den Ausfall blockiert), TeKoSi-Beobachtungszeile, Restposten Minimum Viable Model, VOLLGAS-Abbruch mit 401-OAuth-Fehler, Dropbox-Verlaengerung 18.08.

**Was kommt.** Heute faellig RE-00098 (CHF 13'600) und RE-00099 (CHF 3'680), beide KISPI, ohne Verzug. Morgen 21.07. die Jegen-Rueckmeldung Los 274.01 mit sieben offenen Entscheiden. RE-00087 unveraendert 95 Tage ueberfaellig auf Mahnung 2, naechste Stufe Entscheid Raphael. Kalender: Koordinationssitzung 23.07. 13:00–14:00.

---

## 2026-07-19

**Hub-Chef-Lauf (08:39).** Quellen: Fristen-Register + Logbuch (Horizont 7 Tage), Konversations-Destillat 19.07., Radar-Ergebnis 06:55, bexio `--verzug`, M365 Eingang + Sent Items, Apple Mail alle Konten (mail@, outlook.com, iCloud), Draft-Bestand aller Postfaecher, Whitelist v1.

**Lagebild unveraendert gegenueber dem Radar** (Sonntag, kein neuer externer Verkehr seit 19.07. 02:35). Die beiden Entwuerfe vom 18.07. (Jegen, Notariat) liegen **weiterhin unversendet** im Exchange-Draft-Ordner, am Draft-Bestand direkt verifiziert und nicht bloss aus dem Sent-Items-Negativbefund geschlossen. Statt die Radar-Befunde zu wiederholen, hat der Lauf die **einzige noch unbearbeitete harte Frist** abgearbeitet.

Ausgefuehrte Aktionen:

- **A3 + A5 — KISPI Los 231.10 Tuerfachplanung TeKoSi, Honorarofferte geprueft.** Ausloeser: Selbstfrist RJ **Mo 20.07.** (Zusage an L. Hiltmann 17.07. 12:49, mit A. Spahic vereinbart) und der Befund vom 18.07., dass diese Vergabe die kritische Weiche des gesamten Tuerpakets ist (TeKoSi liefert Tuermatrix/Tuerbuch/Korrex, wovon Jegen die Plananpassung Los 274.01 abhaengig macht). Guards: kein Versand (nur Draft), Ablage additiv, QS `korrektur` (Rechtschreibung + Layout, Befunde eingearbeitet) und `twin`-Fidelity-Gate 81 → 91.
  - **Beleg-Disziplin (Regel 260709):** Das Angebot O26.07-06 wurde **vollstaendig gelesen (alle 9 Seiten inkl. Zahlungsbedingungen)**, nicht nur die Totalzeile; das Mengengeruest wurde gegen die **Primaerquelle** gegengeprueft, indem die JANS-Tuerliste 260713 zeilenweise ausgewertet wurde (32 Datenzeilen, Unternehmer-Spalte ausgezaehlt).
  - **Rechnerisch fehlerfrei.** 80 h a CHF 155.00 = 12'400.00 + Pauschale Projektmanagement 620.00 = **CHF 13'020.00 exkl.**; MwSt 8.1 % = 1'054.62, brutto 14'074.60 — alles nachgerechnet, kein Rechenfehler, keine stille Doppelposition. Optionen zusaetzlich CHF 9'226.00 exkl.
  - **HAUPTBEFUND, neu und belegt — Mengengeruest-Differenz.** TeKoSi kalkuliert auf **42 Tueren** (39 neu + 3 bestehend, gelesen aus den Grundrissplaenen 26.06.), die JANS-Tuerliste Stand 13.07. weist **32** aus (29 neu = 20 Jegen AG BKP 274.01 + 9 RWD BKP 273.01, plus 3 BESTEHEND). **Differenz 10 Tueren, rund 24 % des angenommenen Mengengeruests.** Die 3 bestehenden stimmen exakt ueberein, was fuer denselben Betrachtungsperimeter spricht. Bewusst als **zu klaerender Punkt** gefuehrt, nicht als festgestellte Ueberzahlung — moeglich ist auch eine Zusammenfassung oder ein Entfall auf der Listenseite.
  - **Kein Kostendach.** Pos. 3.1 Ausfuehrungskontrollen und 4.1 Funktionskontrollen sind ausdruecklich Aufwandpositionen; die 8 h je Position sind Budgetansaetze. Die Angebotssumme ist damit eine Schaetzung, keine Obergrenze. Auch alle vier Optionen stehen unter dem Vorbehalt «definitive Kosten erst mit detailliertem Mengengeruest».
  - **Abgrenzungsrisiko Optionen.** Opt. 1 Koordinationsstelle Tueren (28 h, CHF 4'340.00) beschreibt Kostenkontrolle, Nachtragspruefung und Uebergabe an den Bauherrn, also **Bauleitungsleistungen** → Doppelhonorar-Risiko gegen die JANS-Bauleitung. Bei Vergabe entfaellt Pos. 4 (1'240.00) vollstaendig, Netto-Mehrkosten daher **3'100.00, nicht 4'340.00**. Opt. 4 Tueranschlussdosen ist **Material und Lieferung, keine Fachplanung** → gehoert systematisch ins Elektro-/Tuerbauer-Los, vor Vergabe abgleichen.
  - **Nicht verifizierbare Annahme, ehrlich ausgewiesen:** Opt. 3 + 4 sind auf «ca. 4 elektrisch gesteuerte Tueren» kalkuliert. Diese Zahl laesst sich heute **nicht** pruefen, weil die technischen Spalten der Tuerliste (230V TD, 230V Tuere, ZUKO, Schliessmechanismus) noch **leer** sind und den Vermerk «FINALER STAND PENDENT» tragen — ihre Befuellung ist genau die Leistung, die hier vergeben wird. Beide Optionen skalieren linear: CHF 290.00 je IBN, CHF 544.00 je Tuerdose (2 Teilpositionen a 268.00 + 276.00).
  - **Voraussetzung mit Projektrisiko:** TeKoSi macht die Leistung von einem **genehmigten Brandschutz-, Sicherheits- und Nutzungskonzept** abhaengig (Ziff. 1.3). Das ist derzeit **nicht erfuellt** — die Auflagenbereinigung laeuft, Gruner passt die Brandschutzunterlagen an. Ohne vertragliche Entschaerfung ein Verzugsargument des Fachplaners gegen den eigenen Terminplan. Zweite Voraussetzung ist ein tabellarischer Raumbuch-Export als importierbare Rohdaten.
  - **Nebenbefunde:** Verweisfehler (Pos. 3.1/4.1 verweisen fuer den Stundenansatz auf «Pos. 1.5», das ist die elektrische Einlagenplanung; gemeint ist Ziff. 1.5 der Zahlungsbedingungen), widerspruechliche Gueltigkeit (Seite 1 «04.10.2026» gegen Ziff. 1.8 «3 Monate» = 06.10.2026), keine Vertragsnorm vereinbart, kein Rueckbehalt bis Schlussdokumentation.
  - **Ergebnis A3:** Pruefbericht (md/docx/pdf, 4 Seiten, JANS-Baukasten `jans_docx.py`) abgelegt unter `JANS - 2619-KISPI - Dokumente/3 Umbauprojekt Neu/33.04 BKP/LOS_231.10 IBN Tueren System Gesamt TeKoSi AG/00 Angebot/260719-Pruefbericht-Honorarofferte-TeKoSi-231.10/`. Nichts geloescht, nichts ueberschrieben.
  - **Ergebnis A5:** EIN Draft im Exchange-Konto, Absender rj@, an levi.hiltmann@tekosi.ch, **Cc A. Spahic** (Adresse am Mailverlauf verifiziert, nicht geraten; Spahic ist gemaess KISPI-Governance alleiniger SPOC). Betreff «AW: Umbau Kinderspital Zuerich: Angebot O26.07-06, vier Punkte vor der Auftragsbestaetigung». Inhalt: Vergabebereitschaft signalisiert, vier Klaerungspunkte, Auftragsbestaetigung unmittelbar nach Bestaetigung und Bauherren-Freigabe.
  - **Bewusste Entscheidung — der Pruefbericht ist NICHT angehaengt.** Er enthaelt die interne Vergabeempfehlung, die Markteinordnung des Stundenansatzes («marktgerecht bis guenstig») und die Portunus-Absage; das gehoert nicht in die Hand des Anbieters. Angehaengt sind stattdessen die Tuerliste 260713 als PDF **und als XLSX** — letzteres deckt zugleich die von TeKoSi unter Ziff. 1.3 verlangten importierbaren Rohdaten ab und nimmt dem Fachplaner damit einen Vorbehalt vorweg.
  - **Offen/Grenze:** Ob die Tuerliste 260713 wirklich den vollstaendigen Perimeter der Grundrissplaene 26.06. abbildet, wurde **nicht** am Plan gegengeprueft; die Differenz von 10 Tueren ist deshalb als Frage an TeKoSi formuliert und nicht als Preisforderung.

- **A4 — Register gepflegt** (Zeile 20.07. um den vollstaendigen Pruefbefund, die Ablageorte und den Draft-Stand ergaenzt).

**Nicht ausgefuehrt (bewusst):** RE-00087 (KISPI, CHF 15'000, **94 Tage** ueberfaellig, Mahnung 2, Zahlfrist 15.07. verstrichen) — A1 deckt ausdruecklich nur Mahnstufe 1, Stufe 3 / Betreibung bleibt Entscheid Raphael. **Fix des `ag-gruendung-monitor`** (Umstellung auf Apple Mail als Primaerkanal fuer mail@) — das ist eine Task-Definitions-/Config-Aenderung und steht auf der Verbotsliste; bleibt Vorschlag an Raphael. **Verlaengerung der SharePoint-Zugriffe** (7 Personen, Ablauf 08.08.) — Aenderung von Berechtigungen, ebenfalls nicht Whitelist.

**Kandidat fuer die Whitelist-Erweiterung (Vorschlag, nicht aktiviert):** Loeschen des am 18.07. entstandenen Duplikat-Drafts mit Gedankenstrich im Betreff. Loeschen bleibt Verbotsliste; der Hub kann Duplikate heute nur melden, nicht bereinigen.


**Radar-Lauf (06:55, Sonntag).** Quellen: Fristen-Register + Journal, Konversations-Destillat 19.07., bexio `--verzug`, M365 (Eingang + Sent Items 18.07. 06:00 → heute frueh, gepaart), Apple Mail mail@ + raphaeljans@outlook.com, Kalender 7 Tage, Sync-/Remote-Queues.

**Lagebild: das ruhigste Fenster seit Wochen.** Der M365-Eingang enthaelt genau ZWEI Mails (die eigene Hub-Chef-Briefingmail und eine SharePoint-Systemwarnung), die Sent Items **keine einzige ausgehende RJ-Mail**. Daraus folgt der wichtigste Befund des Laufs: **die am 18.07. vom Hub-Chef erstellten Entwuerfe sind nicht versendet** — weder die Jegen-Rueckmeldung (zehn Punkte, davon sieben mit Marker `[Entscheid Raphael]`) noch die Notariats-Mail. Beide Fristen (TeKoSi Mo 20.07., Jegen Di 21.07.) fallen auf die kommenden zwei Werktage; heute ist Sonntag. Kein Fehler, aber der Radar fuehrt es ausdruecklich als Zustand, nicht als erledigt.

**Neu aufgenommen:**

- **SharePoint-Zugriff KISPI laeuft am 08.08. fuer sieben Personen ab** (Systemmail 19.07. 00:35, 20 Tage Vorwarnung; Mail vollstaendig gelesen, alle sieben Namen aus dem Body und nicht aus der Vorschau entnommen — die Vorschau zeigte nur vier). Betroffen: **B. Kuebler, Y. Cetin, C. Duran, J. Ziegel** (Gruner) sowie **F. Wuersch, M. Spoerri** (KISPI) und **M. Schwander**. Das ist das aktive Projektteam mitten in Auflagenbereinigung und Tuerplanung. **Zwei belegte Verschaerfungen:** (1) F. Wuersch ist bis und mit 09.08. abwesend und kehrt damit **einen Tag nach Ablauf seines eigenen Zugriffs** zurueck; (2) Praezedenzfall — die Gastzugriffe «JANS DATENAUSTAUSCH» sind am 10.07. unbemerkt verstrichen, ohne dass jemand verlaengert hat. Natuerlicher Anlass zur Bereinigung: die Koordinationssitzung 23.07., an der sechs der sieben Betroffenen teilnehmen (per Teilnehmerliste des Termins verifiziert).
- **Ueberwachungsluecke AG-Gruendung bestaetigt und NICHT behoben** (aus dem Konversations-Destillat, Spec-Training Lauf 23). Der Task `ag-gruendung-monitor` liest mail@ ueber den M365-Connector, der dort als rj@ keinen Delegate-Zugriff hat und **still eine leere Antwort** liefert; der gesamte UBS-Strang liegt in mail@. Lauf 22 hatte die Reparatur als «behoben» verbucht — gestuetzt auf einen Satz im Register, nicht auf die Primaerquelle. Die Gegenpruefung zeigt: die Task-Definition ist **unveraendert seit 21.06.2026 14:49**, Schritt 1 lautet weiterhin «mail@ via M365/Outlook-Suche». Genau der Fehlertyp, den Regel 260709 adressiert, hier einmal am eigenen System statt am Kundenbeleg.

**Gegenverifikation (Regel 260709):** Kontext-Diaet-Deliverable stichprobenartig am Dateisystem geprueft — `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/` enthaelt md, docx und pdf (19.07. 02:17), der Gespraechsstand ist damit belegt und nicht bloss behauptet. RE-00087 an bexio `--verzug` gegengeprueft (unveraendert im Verzug, jetzt 94 Tage) — kein Zahlungseingang, also kein Schliessen. Sync-/Remote-Queues leer.

**Unveraendert:** RE-00087 (CHF 15'000, 94 Tage, Mahnung 2, Frist verstrichen) — naechste Stufe Entscheid Raphael, A1 greift bei Stufe 2+ nicht. AG-Gruendung ohne UBS-/Notariats-Eingang. DWG ST1/ST2 an J. Ziegel weiterhin nicht zugestellt. SharePoint-Speicher weiterhin ueber der Grenze.

**Token 18.07.:** MacBook Pro 107.09 Mio. (~135 USD) + Mac Mini 123.75 Mio. (~55 USD) = ~230.8 Mio. (~190 USD Aequivalent). Bemerkenswert und fuer die offene Kontext-Diaet-Entscheidung direkt relevant: **215.9 Mio. davon (93 %) sind reiner Cache-Read** — also Grundlast, die vor jeder Arbeit anfaellt.

## 2026-07-18

**Hub-Chef-Lauf (08:39).** Quellen: Fristen-Register + Logbuch (Horizont 7 Tage), Konversations-Destillat 18.07., Radar-Ergebnis 06:55, bexio `--verzug` + `--abgleich`, M365 Eingang (seit 17.07. 20:00 nichts Neues ausser der Radar-Mail selbst), Kalender 7 Tage, Whitelist v1.

Ausgefuehrte Aktionen:

- **A5 — Mail-Entwurf Notariat (AG-Gruendung).** Ausloeser: Register-Zeile 27.06., «Antwort ans Notariat noch nicht raus», Prio hoch, blockiert die Beurkundungskette. Guards: kein Versand (nur Draft), QS `korrektur` (Rechtschreibung gruen, Layout gelb → eingearbeitet) + `twin`-Fidelity 82 → 89 freigegeben, Empfaenger am Mailverlauf verifiziert (marc.mathies@notariate-zh.ch, Mail 22.06.). Ergebnis: EIN Draft im Exchange-Konto, Absender rj@, Betreff «Gruendung Raphael Jans AG (bisher JANS AG): Firmenname und Word-Dateien», Anhaenge Gruendungsurkunde + Statuten Version 260627 (.docx). **Verifikation der Anhaenge (Pflicht, nicht geraten):** beide Dokumente tragen im INHALT bereits «Raphael Jans AG» (Urkunde Ziff. I, Statuten Art. 1) und die Vollliberierung CHF 100'000 zu 100 % (Urkunde Ziff. IV, Statuten Art. 3) — nur die DATEINAMEN sagen noch «JANS-AG». Kein Blocker. **Nebenbefund:** Statuten mit widerspruechlicher Datierung (Kopfzeile «Fassung vom 21. Juni 2026», Fusszeile «Fassung 27.06.2026») — vor der Beurkundung bereinigen. **Nebenbefund 2:** die HRA-Voranfrage 043830-2026 lief auf «JANS AG» und ist mit dem Namenswechsel gegenstandslos; ob das dem Notariat mitgeteilt wird, ist Entscheid Raphael (im Entwurf bewusst NICHT gesetzt).

- **A3 + A5 — KISPI Los 274.01 Prinzippläne Jegen, Entscheidungsblatt + Mail-Entwurf.** Ausloeser: haerteste Frist im Register (Rueckmeldung bis Di 21.07., danach Materialvorbestellung; Produktionsstart 01.09., Montagestart 12.10.). Guards: Ablage additiv (nichts geloescht/ueberschrieben), kein Versand, QS `korrektur` + `twin`-Fidelity 88. Ergebnis: Entscheidungsblatt (md/docx/pdf, 6 Seiten) unter `JANS - 2619-KISPI - Dokumente/3 Umbauprojekt Neu/33.04 BKP/LOS_274.01 Innere Verglasungen JEGEN/01 Planungsberichte/260718-KISPI-274.01-Prinzipplaene-Jegen-Entscheidblatt/`; Mail-Draft an livdin.bajrami@jegen.ch, Cc Spahic + Spoerri (ohne den bis 09.08. abwesenden Wuersch), PDF angehaengt, zwoelf Marker `[Entscheid Raphael]` bewusst offen.
  - **Belegstand der zehn Punkte: 3 belegt, 7 Entscheid Raphael.** Belegt: (1) Schallschutz Tuerblatt Rw 35 dB und (2) Festverglasung DT-02 Rw 35 dB je Positionsliste Submission 12.06.2026, (8) Magnetkontakte «Reedkontakt DMC 20 U_10m» je Bestandes-Beschlagsliste Pos. 14. Offen: (3) LBW DT-TEH, (4) Typenzuordnung Panels, (5) Panels Eiche furniert, (6) Sturzbrett MDF oder Gifatec RF1, (7) S1 Oberflaeche, (9) Massaufnahme KW 33, (10) Textilbespannung.
  - **NEUER, bisher nicht erfasster Befund — Kettenabhaengigkeit:** Jegen macht die Plananpassung ausdruecklich abhaengig «Nach Erhalt der Tuermatrix / des Tuerbuchs und der Korrex». Das ist eine JANS-Bringschuld und haengt an der Tuerfachplanung TeKoSi (Los 231.10, Angebot O26.07-06), die **noch nicht vergeben** ist. Damit ist die **TeKoSi-Vergabe am 20.07.2026 die eigentliche kritische Weiche**, nicht der 21.07. — die beiden Register-Zeilen 20.07. und 21.07. haengen zusammen.
  - **Materialkollisionen (belegt, nicht geraten):** Textilbespannung Bestand nennt Meteor **2047**, Jegen **6427**, der Plan zusaetzlich **2046**; Schaumstoff Bestand **RF1** gegen Jegen **RF2**. Vor der Vorbestellung zu klaeren, sonst wird falsches Material bestellt.
  - **Fachbefund zu Punkt 3:** Jegen haelt im eigenen Plan fest «Schalldaemmung: keine Pruefzeugnisse» — der geforderte Rw 35 dB fuer die LBW DT-TEH ist damit derzeit nicht bestaetigbar.
  - Korrekturen am Registerstand: die Bajrami-Mail ging **09:45 Lokalzeit** ein (Register fuehrte 07:45 = UTC); Punkt 9 lautet im Original «Massaufnahme in KW 33 **moeglich**» (Machbarkeitsfrage, keine Terminsetzung); RJ hat am 17.07. 12:18 bereits **teilweise geantwortet** (Bloecke A–E: Designtyp, Unterkonstruktion, Elektrifizierung, Massaufnahme delegiert, Plangrundlagen) — der Entwurf baut darauf auf.
  - **Offen/Grenze:** die ZIP «91161 KISPI.zip» (21.8 MB) wurde nicht im Original geoeffnet (ausgewertet wurden die entpackten Werkplaene im Projektordner, inhaltlich deckungsgleich, aber nicht verifiziert); die Auftragserteilung 25.06.2026 ist ein Scan ohne Textebene und koennte Materialvorgaben zu den Punkten 5–7 enthalten.
  - **Aufraeumbedarf Raphael:** beim Korrigieren des Betreffs (er enthielt einen Gedankenstrich, Verstoss gegen `dokument-layout-standard`) ist ein **zweiter Draft** entstanden. Gueltig ist die Fassung mit Doppelpunkt «AW: 91161 KISPI Prinzippläne: Rueckmeldung zu den zehn Punkten»; die Gedankenstrich-Fassung ist zu loeschen (Loeschen ist Verbotsliste, macht der Hub nicht selbst).

- **A4 — Register gepflegt** (Fristen-Zeilen 20.07. und 21.07. um die Kettenabhaengigkeit und die Materialkollisionen ergaenzt).

Nicht ausgefuehrt (bewusst): RE-00087 (KISPI, CHF 15'000, 93 Tage ueberfaellig, aktuell Mahnung 2) — naechste Stufe waere Mahnung 3 / Betreibung; A1 deckt ausdruecklich nur Mahnstufe 1, Stufe 2+ bleibt Entscheid Raphael. `--abgleich` unveraendert (19 Altfaelle ohne Bankbeleg, alle vor 2026, 1 unzugeordneter Eingang 2021 — kein neuer Befund, kein Mahn-Blocker fuer RE-00087).

**Radar-Lauf (06:55).** Quellen: bexio `--verzug`, M365 (Eingang + Sent Items 17.07. 04:00 → heute frueh, gepaart), Apple Mail mail@ + raphaeljans@outlook.com, Kalender 7 Tage, Sync-/Remote-Queues, Konversations-Destillat 18.07.

**Erledigt:** (1) KISPI Los 273.35 — Pruefbericht Geraetepreise Roethlisberger an KISPI raus (17.07. 13:49, Empfehlung Reduktion min. 5'000–8'000, max. 12'000); die im Destillat als geliefert vermerkte Pruefung ist damit auch belegt versendet. (2) Baumackerstrasse 43 — AFB (C. Kovacs) antwortet 17.07.: Nachforderungen am 08.07. via eBaugesuche eingegangen, Gesuch weiter in Vernehmlassung, Fachstellenfristen laufen; das geplante Nachfassen ab 20.07. ist gegenstandslos. (3) Tuer-ID 01.0.300.1 — Funktionsfrage geklaert (automatische Schiebetuere, kein brandfallgesteuertes Tor), Tuerfunktionsblatt geliefert, angepasster Plan zurueck. (4) Albertstrasse 7 — KV-Zusammenstellung, Stunden und Rechnung an R. Steinmann zur Freigabe raus.

**Neu aufgenommen:** (a) **KISPI Prinzippläne Jegen, Rueckmeldefrist Di 21.07.** — zehn Punkte zu definieren/bestaetigen, danach Materialvorbestellung; Produktionsstart 01.09., sonst faellt der Montagestart 12.10. (b) **Selbstfrist Mo 20.07.** fuer die Pruefung der TeKoSi-Tuerfachplanungsofferte (RJ hat es Hiltmann zugesagt). (c) Abwesenheit F. Wuersch (KISPI) 17.07.–09.08. — bremst die KISPI-seitigen Freigaben.

**Unveraendert:** RE-00087 (CHF 15'000, 93 Tage ueberfaellig, Mahnung 2, Frist verstrichen) — naechste Stufe Entscheid Raphael. AG-Gruendung ohne neuen UBS-/Notariats-Eingang. DWG ST1/ST2 an J. Ziegel weiterhin nicht zugestellt.

**Token 17.07.:** MacBook Pro 193.33 Mio. (~215 USD) + Mac Mini 128.75 Mio. (~77 USD) = ~322.1 Mio. (~292 USD Aequivalent).

## 2026-07-17

- **HUB-CHEF-LAUF 08:39 — MIT Befund (ein Deliverable fertiggestellt), EIN kurzes Briefing.**
  Signale nach dem Radar (06:45) gegenverifiziert: bexio `--verzug` unveraendert (nur RE-00087,
  CHF 15'000, **92 Tage**, Mahnung 2, Zahlfrist 15.07. verstrichen, kein Eingang; bexio schlaegt
  Mahnung 3 / Betreibung vor — **A1 greift bei Mahnstufe 2+ NICHT**, Entscheid bleibt bei Raphael,
  keine autonome Mahnaktion), `--abgleich` unveraendert (bekannte Altliste 19 Pos. + 1 Bankeingang
  2021), M365-Posteingang seit 05:30 leer, Sent Items nur das Radar-Briefing selbst,
  outlook.com (Apple Mail) nichts Neues seit 15.07., Kalender bis 24.07. nur die
  Koordinationssitzung 23.07. 13:00-14:00, Sync-/Remote-Queues leer.
- **A3/A5 (Deliverable fertiggestellt): Vergleichsblatt Offerte Staehlin, 2620 Albertstrasse 7,
  BKP 230.** Ausloeser: Registerpunkt mit Frist **heute 17.07.** («A4-Vergleichsblatt nicht erstellt»,
  Session am 15.07. durch das Wochenlimit abgeschnitten; von RJ bestellt).
  - **Beleg-Befund (Regel 260709 — am Beleg statt am Registertext):** die **MD existierte bereits**
    (15.07. 20:49, 2'861 Bytes). Abgeschnitten wurde die Session erst bei der DOCX/PDF-Erzeugung.
    Der Registerstand «nicht erstellt» war also unpraezise — fehlend waren nur die Fassungen
    (Regel 260603: DOCX+PDF immer neben MD).
  - **Ausgefuehrt:** DOCX+PDF erzeugt. Erster Versuch mit dem generischen `md2docx.py` verworfen —
    die Sichtkontrolle (`pdftoppm`) zeigte drei Verstoesse gegen `dokument-layout-standard`:
    sichtbare Tabellenrahmen, Wortumbruch mitten in «Waschmaschinen/Tumbl-er», linksbuendige Zahlen.
    Neu gebaut mit dem JANS-Baukasten `skills/ausschreibung/tools/jans_docx.py`
    (rahmenlos, Spalten 76/30/30/34 = exakt 170 mm, Zahlen rechtsbuendig, Totalzeilen fett,
    Stammdaten am Tab-Stop, nummerierte Liste mit haengendem Einzug, JANS-Footer).
    **Fallgrube dokumentiert:** `table(aligns=...)` erwartet die Kuerzel `l`/`r`/`c` — «left»/«right»
    werden STILL ignoriert (kein Fehler), die Zahlen bleiben linksbuendig.
  - **QS:** `korrektur` gelaufen (Agenten `rechtschreibung` + `layout`, beide gelb). Eingearbeitet:
    Grossschreibung nach Doppelpunkt, `MwSt.` mit Punkt, Kongruenz «beruhen auf», Zahlenschreibung
    132'000.00/133'100.00, Stammdaten-Tab-Stop, haengender Einzug, Titel gekuerzt (brach zweizeilig).
  - **Sachbefund (verifiziert statt geraten):** `rechtschreibung` meldete einen Zahlendreher-Verdacht
    Schluesselleser 5'082.90 vs. 5'832.90. Rechnerisch gegengeprueft: **kein Fehler** —
    1'200.00 + 5'082.90 + 750.00 = 7'032.90 (Tabelle stimmt) und 5'082.90 + 750.00 = 5'832.90
    (= komplettes System inkl. 30 Leser, wie in der Zielgroesse gerechnet: 133'075.55 ≈ 133'100).
    Beide Zahlen korrekt, nur die Beschriftung war missverstaendlich → Wortlaut praezisiert,
    KEINE Zahl geaendert. Ebenso aufgeloest: 148'606.70 (nur Pos. 234 bereinigt) vs. 142'400.00
    (zusaetzlich WZU-Doppel heraus) = Umfangsfrage, kein Widerspruch; im Blatt erklaert.
  - **FIDELITY-GATE FING EINEN ECHTEN RECHENFEHLER (wichtigster Befund des Laufs).** `twin-chef`
    (Fidelity 74, Fachsignatur 68) wies nach, dass die Einordnung im Blatt UND im Briefing sachlich
    falsch war: zwischen den Zieltotalen 148'606.70 und 142'406.65 liegt NICHT «das doppelt
    offerierte WZU-System», sondern der **Contactless Kartenleser (4'735.50, Pos. 231.01) + die
    Steigzone (1'000.00, Pos. 236.02)**; das Schluesselleser-System (5'832.90) bleibt in BEIDEN
    Staenden enthalten (ein WZU-System wird gebraucht). Unabhaengig nachgerechnet und bestaetigt:
    160'899.90 − 133'075.55 = 27'824.35 = 22'088.85 + 4'735.50 + 1'000.00; Delta der Pfade
    (4'735.50 + 1'000.00) × 1.081 = 6'200.05. Der Fehler stammte aus der Urfassung vom 15.07. und
    wurde von `rechtschreibung`/`layout` NICHT gefunden — die pruefen Sprache und Form, nicht die
    Rechnung. **Lehre:** bei gerechneten Erzeugnissen ist das Twin-/Fachsignatur-Gate keine
    Stil-Kosmetik, sondern die einzige Instanz, die die Zahlenlogik gegenliest. Blatt korrigiert
    (Zielgroesse jetzt exakt 142'406.65 statt «rund 142'400», Kartenleser-Variante 131'978.15,
    Ersparnis 25'302.50 ausgewiesen), Briefing entsprechend umgeschrieben.
  - **Guards:** A3 «nie ueberschreiben/nie loeschen» — die Urfassung der MD wurde vor dem Ersetzen
    als Kopie nach `_Archiv/260715-Offertvergleich-Staehlin-0707-1507_urfassung-1507.md` gesichert
    (nichts geloescht). Kein Versand (A5: Entwurf/Ablage, nie autonom senden); der Mail-Entwurf an
    Staehlin bleibt ueberholt, weil RJ am 16.07. 07:54 selbst geantwortet hat.
  - **Ergebnis/Ablage:** `.../2620 ALBERTSTRASSE 7/03 BKP/230.00 Elektroanlagen STAEHLIN AG - Felix/`
    `2620 230.00 04 Offerte UN/260715-Offertvergleich-Staehlin-0707-1507/` (md/docx/pdf, 2 Seiten).
    Registerzeile auf **erledigt** gesetzt (A4).
- **Verbesserungs-Kandidat fuer den Baukasten (nicht selbst aktiviert, Vorschlag an Raphael):**
  `jans_docx.py` hat keine `stamm()`-Helferfunktion (Tab-Stop 1700 DXA) und keinen haengenden Einzug
  fuer nummerierte Listen — beides musste im Build-Skript nachgebaut werden; der `jans_footer` weicht
  vom Standard ab (zentriert, ohne Mail-Adresse, statt links Verfasser/Mail/Datum + rechts Seite X von Y).
- **Briefing an rj@ versendet** (nur der neue Befund + Verweis auf den Radar fuer die unveraenderten
  7-Tage-Punkte, keine Doppelmeldung).

**Radar-Lauf 06:45.** Quellen: Konversations-Destillat 17.07. (34 Sessions, 6 echte Gespraeche), bexio `--verzug`, M365 (Posteingang + Gesendete seit 16.07. 06:00, je 7 Mails, Bodies gelesen), outlook.com via Apple Mail (nichts Neues seit 15.07.), Kalender 7 Tage.

**Erledigt.** Thalwil 2414 / Bohlweg 3: die Antwort an S. Tschopp zur Projektaenderung ist **versendet** (RJ 16.07. 16:21, Bcc P. Weisser) — das Konversations-Destillat kannte sie nur als Entwurf in Apple Mail; die Sent Items belegen den Versand. Punkt ins Archiv, ersetzt durch den Folge-Punkt (Rueckmeldung Bauherr → Umgebungsplan + drei Nachweise + Eingabe ueber E-Plattform).

**Verschaerft.** KISPI/Gruner: J. Ziegel bittet 16.07. 09:40 um einen Anruf zum Stand der Brandschutzunterlagen; das am 15.07. abends zugesagte DWG mit den Tueren ST1/ST2 ist weiterhin nicht zugestellt (zwei Tage offen, Sent Items ohne DWG-Versand). Prio auf **hoch** gesetzt — die CAD-Grundlage liegt seit 16.07. vor, und jeder Tag schiebt die Auflagenbereinigung um Gruners 5-Arbeitstage-Vorlauf weiter.

**Neu aufgenommen.** (1) Baumackerstrasse 43 (B24-00351.02): RJ ersucht 16.07. 09:06 das AFB Team 4 um Auskunft zum Projektstand, M. Sivec ist bis Mo 20.07. abwesend → ab 20.07. Antwort erwarten. (2) Saumstrasse 21: M. Salzmann prueft ab 16.07. rund drei Wochen Massnahmen gegen den Faekalgeruch und bittet um Beobachtung → Rueckmeldung Anfang August.

**Aktualisiert.** TeKoSi (L. Hiltmann) mahnt 16.07. die Auftragsbestaetigung zur Tuerfachplanung an, RJ hat sie an KISPI weitergeleitet — Ball bei KISPI. Roethlisberger (S. Lanz) liefert 16.07. 14:25 das angepasste Kuechenbau-Angebot (an KISPI weitergeleitet); Installationsplaene Elektro/Sanitaer ohne Termin, Projektleiter meldet sich.

**Unveraendert.** RE-00087 (KISPI, CHF 15'000) 92 Tage ueberfaellig, Mahnung-2-Frist seit 15.07. verstrichen, kein Eingang. Albertstrasse-7-Vergleichsblatt (Angebot 2607101) weiterhin nicht erstellt. Kein Kalendereintrag vorgeschlagen; nichts autonom eingetragen.

---

## 2026-07-16

- **HUB-CHEF-LAUF 08:40 — ohne neuen Befund, keine zweite Mail.** Signale nach dem Radar-Briefing
  (07:00) gegenverifiziert: bexio `--verzug` unveraendert (nur RE-00087, 91 Tg, Mahnung 2, Zahlfrist
  15.07. verstrichen; bexio schlaegt neu **Mahnung 3 / Betreibung** vor — A1 greift bei Mahnstufe 2+
  NICHT, Entscheid bleibt bei Raphael, keine autonome Aktion), `--abgleich` unveraendert (Altliste
  19 Pos. + 1 Bankeingang 2021), Mail-Eingang seit 05:30 leer, Kalender bis 23.07. nur die
  Koordinationssitzung 23.07. 13:00-14:00, Sync-/Remote-Queues leer.
- **A4 (Registerpflege):** Ausloeser — Sent-Items-Gegenverifikation zeigt, dass RJ das im Radar-Briefing
  gemeldete **Angebot 2607101 (Elektro-Staehlin, Albertstrasse 7 / Waschtuerme)** um **07:54 selbst
  beantwortet** hat (beanstandet CHF 120K → 160K fuer 4 Geraete mehr; verlangt REAP-Stueckpreise mit
  Prozenten, diese Position optional statt im Total, WZU-Steuerung fuer alle Varianten optional —
  Verdacht Doppel-/Dreifachrechnung). Guards: Beleg gelesen (Mail rj@ → f.staehlin@staehlin-ag.ch,
  16.07. 07:54), eingehend↔ausgehend gepaart, append-only. Ergebnis: Registerzeile von «nachfassen»
  (Angebot pruefen) auf **«beobachten»** (bereinigtes Angebot abwarten → Bestellentscheid).
- **Unveraendert offen:** aktualisiertes DWG ST1/ST2 an J. Ziegel — in den Sent Items weiterhin nicht
  sichtbar → nachfassen.
- **Kein zweites Briefing:** alle 7-Tage-Punkte standen im Radar-Briefing 07:00; die einzige Bewegung
  seither ist RJs eigene Mail — kein Neuentscheid, keine neuen Entwuerfe, keine Whitelist-Aktion moeglich.

- **RADAR-LAUF — mit Briefing.** Register gegen bexio (`--verzug`), Kalender (bis 23.07.),
  Mail-Eingang UND Sent Items (15.07. frueh → 16.07., eingehend↔ausgehend gepaart) und
  Sync-/Remote-Queues abgeglichen.
- **Debitoren (live, `--verzug`):** unveraendert **ein** Verzugsfall — RE-00087 (Kispi, CHF 15'000),
  **Mahnung 2**, Zahlfrist **15.07. gestern verstrichen**, kein Eingang, jetzt **91 Tage** ueberfaellig.
  Frist abgelaufen → naechste Mahnstufe jetzt moeglich (Entscheid Raphael; Automatik greift bei Mahnung 2+ nicht).
- **16.07. frueh kein neuer Mail-Eingang.** Der 15.07.-Nachmittag war ein RJ-getriebener KISPI-
  Koordinationstag, laeuft grossteils ohne haengende JANS-Aktion: ST1/ST2 (Wuersch bestaetigt
  Aufdopplung/Haftmagnet+Federzug; Bajrami liefert S1/S2 als dwg, RJ verlangt Raumbezeichnungs-Korrektur),
  Komponentenintegrationspanel/Signaletik (RJ delegiert offene Fragen an Wuersch), Sanitaerplaene
  (Wuersch gibt Vorlage frei, Wandablauf pruefen), Kueche-Klassifizierung (interne KISPI/Gruner-Klaerung).
- **Lueftungskontrolle:** RJ bestaetigt Kontrolle **naechste Woche mit van Velsen (3-plan)**; zusaetzlich
  Alternative **Schnuepbach** via Kuebler eroeffnet → zwei Wege offen, beobachten. Scherbl-Thread geschlossen.
- **NEU/handlungsrelevant:** F. Staehlin (Elektro-Staehlin AG, 15.07. 14:06) sendet das **ueberarbeitete
  Angebot 2607101** (Albertstrasse-7-/KISPI-Waschtuerme, Schulthess WM/Tumbler) → pruefen/Bestellentscheid.
- **Offene JANS-Aktion:** RJs eigene Zusage «aktualisiertes DWG ST1/ST2 heute Abend 15.07. an Ziegel»
  in den Sent Items noch nicht sichtbar; Ziegel krank, meldet sich 16.07. mit neuem Ablauf → nachfassen.
- **Kalender:** naechster Termin **23.07. 13:00-14:00** (Koordinationssitzung Gruner/Jans/KISPI). Sync-/
  Remote-Queues leer (nur automatischer NAS-Self-Commit).
- **Token gestern (15.07.):** MacBook 131.98 Mio. (~156 USD) + Mini 161.69 Mio. (~80 USD) =
  ~293.7 Mio. (~236 USD Aequivalent).
- **Briefing an rj@ versendet.**

---

## 2026-07-15

- **RADAR-LAUF — mit Briefing.** Register gegen bexio (`--verzug`), Kalender (bis 22.07.),
  Mail-Eingang UND Sent Items (14.07. 05:00 → 15.07. frueh, eingehend↔ausgehend gepaart) und
  Sync-/Remote-Queues abgeglichen.
- **Debitoren (live, `--verzug`):** unveraendert **ein** Verzugsfall — RE-00087 (Kispi, CHF 15'000),
  **Mahnung 2**, Zahlfrist **HEUTE 15.07.2026**, **90 Tage** ueberfaellig, kein Eingang. Naechste Stufe
  erst nach Fristablauf.
- **Sehr produktiver RJ-Tag 14.07. — mehrere offene Punkte durch Sent Items belegt geloest:**
  (1) **SBB-Vordach-Vereinbarung Thalwil 2414 RAUS** — RJ sendet 14.07. 10:36 die nach Bauherren-
  Ruecksprache durchgesehene + ergaenzte Vereinbarung an T. Wiedmer (SBB), Cc Tschopp → die seit
  02.07. offene JANS-Aktion ist erledigt; naechster Schritt SBB-Unterzeichnung (beobachten).
  (2) **KISPI private Kontrolle Lueftung — Kontrolleur-Wechsel:** RJ laedt 14.07. 09:47+10:00 neu
  **3-plan (Stefan van Velsen) ueber die EVEN-Plattform** als privaten Kontrolleur EN105/EN110 ein
  (Scherbl faellt ab 15.07. aus) und liefert die Bauentscheid-Unterlagen. **ABER van Velsen Auto-
  Antwort: Ferien bis 03.08.** → Kontrolle laeuft ueber 3-plan, bearbeitbar erst ab 03.08.
  (3) **KISPI Schiebetueren ST1/ST2:** Spezifikation fixiert (ST1 motorisiert / ST2 Kabelzug),
  S1-EI30 bestaetigt; Jegen liefert Prinzippläne, RJ leitet sie zur KISPI-Freigabe weiter, Wuersch
  bestaetigt «Korrekt» → laeuft, RJ treibt es.
- **NEU/beobachten:** Saumstrasse 21 Geschirrspueler jetzt Konkurrenz (reap-Offerte neben Fust,
  RJ Kampfangebot verlangt + Fotos geliefert); Waschtuerme-Offerte reap an Staehelin; Sanitaerplaene-
  Vorlage an KISPI raus; Thalwil-Plangrundlagen (Gemeinde Steiger) an Tschopp weitergeleitet;
  SYN-02 Spec vorbereitet, Interview auf Zuruf (Task 20.07.).
- **Kalender bis 22.07. leer.** Sync-/Remote-Queues leer (nur automatischer NAS-Self-Commit).
- **Token gestern (14.07.):** MacBook 693.8 Mio. (~517 USD) + Mini 1'034.3 Mio. (~473 USD) =
  ~1'728 Mio. (~990 USD Aequivalent).
- **Briefing an rj@ versendet.**

- **Nachtrag Hub-Chef-Lauf 15.07.2026 (08:39, MIT Befund — zwei KISPI-Mails NACH dem Radar-Briefing
  05:09):** bexio `--verzug`/`--abgleich` unveraendert (nur RE-00087, Mahnung 2, Frist heute 15.07.,
  90 Tg; A1 greift nicht → keine Mahnaktion; Altliste 19 Pos. + 1 Bankeingang 2021). NEU/handlungsrelevant:
  (1) **KISPI ST1/ST2 + Auflagenbereinigung — Zeitplan rutscht.** J. Ziegel (Gruner, 07:14) hat den CAD
  wie von RJ am 14.07. 17:18 gewuenscht **gestoppt** und wartet auf RJs **aktualisiertes DWG heute Abend**;
  er kann eine Lieferung diese Woche aber nicht mehr zusichern (Anpassungen i.d.R. **5 Arbeitstage** →
  Auflagenbereinigung verschiebt sich), ist heute **krank** und meldet sich 16.07. mit neuem Ablauf.
  → JANS-Aktion: RJs offene Zusage, das korrigierte DWG (Tueren korrekt eingezeichnet) **heute Abend
  15.07.** zu liefern; Register auf «nachfassen/verzoegert» gesetzt. (2) **Private Kontrolle Lueftung —
  vor auf naechste Woche.** K. Manz (3-plan, 08:29): van Velsen prueft/fuellt die Kontrolle aus, bis 03.08.
  offiziell in Ferien, **arbeitet naechste Woche sporadisch**; RJ sagt 08:34 zu, die Kontrolle **naechste
  Woche mit van Velsen** zu machen → Register von «erst ab 03.08.» auf «naechste Woche» aktualisiert
  (A4). Keine Whitelist-Aktion moeglich (kein Draft noetig — DWG ist RJs Design-Deliverable, Manz-Mail
  bereits durch RJ beantwortet). Kalender bis 22.07. leer, Sync-/Remote-Queues leer. **EIN kurzes
  Nachtrags-Briefing an rj@ versendet** (nur die zwei neuen Befunde + Verweis auf den Radar fuer die
  unveraenderten 7-Tage-Punkte, keine Doppelmeldung).

---

## 2026-07-14

- **RADAR-LAUF — mit Briefing.** Register gegen bexio (`--verzug`), Kalender (bis 21.07.),
  Mail-Eingang UND Sent Items (13.07. 13:00 → 14.07. frueh) und Sync-/Remote-Queues abgeglichen.
- **Debitoren (live, `--verzug`):** unveraendert **ein** Verzugsfall — RE-00087 (Kispi, CHF 15'000),
  **Mahnung 2**, Zahlfrist **15.07.2026 (MORGEN)**, **89 Tage** ueberfaellig. RE-00098/99 faellig 20.07.
- **Zwei der drei Hub-Chef-Entscheide vom 13.07. sind durch den realen Verkehr desselben Nachmittags
  geloest** (Beleg-Lektuere): (1) **KISPI private Kontrolle Lueftung — Strangschema geliefert.**
  B. Kuebler (Gruner, 13.07. 13:41) haengt die zwei Strangschema-PDFs an (Umbaubereich: Raumnummer,
  Name, Luftmengen, verbaute Bauteile) und sendet direkt auch an G. Scherbl; die Unterlagen lagen seit
  Fr im SharePoint (Misskommunikation). → das seit 22.06. fehlende Dokument ist da. **Offen bleibt nur
  Scherbls Abnahme vor seinen Ferien ab 15.07.** (2) **Verrechnungsadresse Scherbl** durch RJ geklaert
  (13.07. 13:24: zH A. Spahic, KISPI Eleonorenstiftung, Lenggstrasse 30). Offen bleibt Entscheid (c)
  **Fust-Geschirrspueler Saumstrasse 21 bestellen** (Offerte seit 13.07. da).
- **NEU:** KISPI Auflagenbereinigung — J. Ziegel (Gruner, 13.07. 14:13) liefert die Auflagen-Unterlagen
  an RJ, sobald der angepasste CAD-Plan da ist (spaetestens Mi 15./Do 16.07.). Keine JANS-Aktion, beobachten.
- **Weiter offen (unveraendert):** SBB-Vordach-Vereinbarung Thalwil 2414 an T. Wiedmer NICHT raus
  (JANS-Aktion); Besprechung reduzierte Ausschreibung Tschopp.
- **Kalender bis 21.07. leer.** 7-Tage-Fenster: RE-00087 Zahlfrist **15.07.**; RE-00098/99 faellig 20.07.
- **Token gestern (13.07.):** MacBook 1'133 Mio. (~1'051 USD) + Mini 852 Mio. (~395 USD) = ~1'985 Mio.
  (~1'446 USD Aequivalent).
- **Briefing an rj@ versendet.** Sync-/Remote-Task-Queues leer.

- **Nachtrag Hub-Chef-Lauf 14.07.2026 (08:39, ohne Befund, keine zweite Mail):** Signale nach dem
  Radar (der heute frueh 05:01 MIT Briefing lief) gegenverifiziert — bexio `--verzug` unveraendert
  (nur RE-00087, 89 Tg, Mahnung 2, Frist **15.07.** MORGEN; A1 greift nicht, Mahnstufe 2+ nur Entwurf,
  vor Fristablauf nicht faellig; RE-00098/99 faellig 20.07. ohne Verzug). Mail-Eingang seit 06:00 leer
  (juengster Inbox-Eintrag = eigenes Radar-Briefing 05:01; davor nur private me.com-Self-Mails 13.07.
  abend, kein Geschaeftsvorfall). Sent Items: letzte Kundenmail 13.07. (Scherbl-Verrechnungsadresse
  13:24, Strangschema-Kette) → **SBB-Vordach-Vereinbarung Thalwil 2414 an T. Wiedmer weiterhin NICHT
  raus** (bleibt offene JANS-Aktion/nachfassen, im Register). Kalender bis 21.07. leer, Sync-/Remote-
  Queues leer. Keine Whitelist-Aktion moeglich, keine neuen Entwuerfe; alle 7-Tage-Punkte standen im
  Radar-Briefing heute frueh. Kein zweites Briefing (Anti-Doppelmeldung).

---

## 2026-07-13

- **RADAR-LAUF — mit Briefing (Lagebild, kein neuer Kundenverkehr).** Register gegen bexio
  (`--verzug`), Kalender (Outlook, bis 20.07.), Mail-Eingang UND -Ausgang (seit 12.07. frueh) und
  Sync-/Remote-Queues abgeglichen.
- **Debitoren (live, `--verzug`):** unveraendert **ein** Verzugsfall — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **88 Tage ueberfaellig**), **Mahnung 2**, Zahlfrist **15.07.2026** (in 2 Tagen);
  naechste Stufe erst nach Fristablauf. RE-00098/99 (faellig 20.07.) ohne Verzug.
- **Kein neuer Kundenverkehr:** einzige Mail im Fenster ist die eigene VOLLGAS-Radar-Systemmeldung
  (raphaeljans@icloud.com, 12.07. 20:54: MacBook-Pro-headless-CLI «Not logged in», Endlos-Runner
  produziert nichts) — vom VOLLGAS-Radar separat gemeldet, kein Geschaeftsvorfall; nur als Beobachtung.
- **Weiter offen (unveraendert, in Beobachtung):** SBB-Vordach-Vereinbarung Thalwil 2414 an T. Wiedmer
  ist NOCH NICHT raus (Sent Items im Fenster leer) → JANS-Aktion; ebenso Besprechung reduzierte
  Ausschreibung mit Tschopp.
- **7-Tage-Fenster (bis 20.07.):** RE-00087 Zahlfrist **15.07.**; Tueren-Koordinationssitzung
  **HEUTE 13.07. 09:00-10:00** (RJ Organisator, im Kalender bestaetigt). RE-00098/99 faellig 20.07.
- **Token gestern (12.07.):** MacBook 614.8 Mio. (~899 USD) + Mini 205.7 Mio. (~101 USD) = ~1'000 USD
  Aequivalent.
- **Briefing an rj@ versendet.** Sync-/Remote-Task-Queues leer (nur automatische Self-Commit-Tasks).
- **HUB-CHEF-LAUF 14:00 — MIT Befund (neuer Kundenverkehr NACH dem Radar).** Der Radar meldete heute frueh «ruhig»; seit ~06:00 sind mehrere Geschaeftsmails eingegangen, daher hat der Hub-Chef heute echte Befunde. Signale gegenverifiziert: bexio `--verzug`/`--abgleich` unveraendert (RE-00087 Mahnung 2 Frist 15.07.; Altliste 19 Pos. + 1 Bankeingang 2021), Kalender bis 20.07. nur die heutige Tueren-Sitzung (durchgefuehrt), Sync-/Remote-Queues leer.
  - **AKTION A5 (autonom, mit Guards):** Nachfass-Mail-Entwurf an Gruner AG (Duran/Kuebler/Ziegel, Cc Wuersch/Spahic/Scherbl) fuer das fehlende **Lueftungs-Strangschema mit Flaechennutzungen** (KISPI private Kontrolle), Frist 14.07., mit AWEL-Beleg. **Ausloeser:** G. Scherbl (Wintec, 13.07. 14:56) steigt aus (ab 15.07. Ferien), Strangschema fehlt weiterhin, AWEL bestaetigt die Anforderung. **Guards:** A5 = nur Entwurf, kein autonomer Versand; QS bestanden (rechtschreibung gruen, layout 🟡 4 Signatur-Korrekturen uebernommen, twin-chef Fidelity 92). **Ergebnis:** Draft im Postfach (Absender rj@), NICHT versendet.
  - **AKTION A4:** Register aktualisiert — Scherbl/Strangschema-Item eskaliert (Prio hoch, Frist 14.07., Entscheide fuer Raphael vermerkt), Fust-Offerte Saumstrasse 21 als eingetroffen (nachfassen), Keller/reap-Querangebot KISPI Kueche neu (beobachten).
  - **Kein autonomer Mahnschritt:** A1 greift nicht auf RE-00087 (bereits Mahnung 2; Stufe 2+ immer nur Entwurf, hier nicht faellig vor 15.07.).
  - **ENTSCHEIDE fuer Raphael (im Briefing):** (a) Weg private Kontrolle Lueftung (neuer Kontrolleur vs. Eingabe ohne Unterschrift, da Scherbl ab 15.07. weg); (b) Verrechnungsadresse fuer Scherbls Aufwand 2.75 h à CHF 157.00; (c) Fust-Geschirrspueler Saumstrasse 21 bestellen. **Briefing an rj@ versendet** (verweist auf Radar-Briefing 06:57 statt Doppelmeldung des 7-Tage-Bildes).

---

## 2026-07-12

- **RADAR-LAUF — mit Briefing (eine neue Bauherr-Rueckmeldung).** Register gegen bexio (`--verzug`),
  Kalender (Outlook, bis 19.07.), Mail-Eingang UND -Ausgang (seit 11.07. frueh) und Sync-/Remote-Queues
  abgeglichen; neuen Thread inkl. Anhang gegenverifiziert.
- **Debitoren (live, `--verzug`):** unveraendert **ein** Verzugsfall — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **87 Tage ueberfaellig**), **Mahnung 2**, Zahlfrist **15.07.2026** (in 3 Tagen);
  naechste Stufe erst nach Fristablauf. RE-00098/99 (faellig 20.07.) ohne Verzug.
- **NEU / handlungsrelevant — Thalwil 2414 Naeherbaurecht (Vordach):** Bauherr S. Tschopp
  (11.07. 14:47) hat die SBB-Vereinbarung (Vb_NB_Thalwil_Erweiterung-Vordach_20260710.docx) geprueft,
  ist **mit dem Wortlaut einverstanden**, hat **Punkt 3.10 (besonderes Gebaeude 2)** ergaenzt und
  liefert einen fertigen Textvorschlag an SBB-Wiedmer. Bauherr-Abgleich damit erledigt → offene
  JANS-Aktion: **Bestaetigung + aktualisiertes Word an T. Wiedmer (SBB) senden → unterzeichnen**
  (noch nicht raus, Sent Items im Fenster leer; bleibt nachfassen).
- **NEU — Thalwil 2414 reduzierte Ausschreibung:** Tschopp legt im selben Mail seine Wunsch-Unternehmer
  fest (Holzbau Posch, Treppe Koehlmeier, Baumeister/Gartenbau Berberoglu bzw. Nenning Bau, Sanitaer
  R. Preis, Innenausbau Daniel), sieht eine reduzierte Ausschreibung und bittet um Anrufe bei Posch +
  Nenning Bau; «lass uns das besprechen». Als eigene Register-Zeile aufgenommen (besprechen).
- **7-Tage-Fenster (bis 19.07.):** RE-00087 Zahlfrist **15.07.**; Koordinationssitzung Tueren **13.07.
  09:00-10:00** (RJ Organisator, im Kalender bestaetigt). RE-00098/99 faellig 20.07. (knapp ausserhalb).
- **Briefing an rj@ versendet.** Sync-/Remote-Task-Queues leer.
- **HUB-CHEF-LAUF 08:39 — ohne Befund, keine zweite Mail.** Alle Signale nach dem Radar gegenverifiziert:
  bexio `--verzug` unveraendert (nur RE-00087, Mahnung 2, Frist 15.07. — A1 greift nicht, Mahnstufe 2+
  immer nur Entwurf), `--abgleich` unveraendert (Altliste 19 Pos. + 1 Bankeingang 2021), Mail-Eingang
  seit 06:00 leer, Kalender bis 19.07. nur die Tueren-Sitzung 13.07. 09:00-10:00 (RJs eigene, im
  Register), Sync-/Remote-Queues leer. Keine Whitelist-Aktion moeglich, keine neuen Entwuerfe. Die
  aktive SBB-Vordach-Vereinbarung + reduzierte Ausschreibung (Thalwil 2414) standen bereits im
  Radar-Briefing 06:57 — kein zweites Briefing (Doppelmeldung vermieden).

---

## 2026-07-11

- **HUB-CHEF-LAUF — ohne Befund, keine zweite Mail (08:39).** Signale nach dem Radar (mit Briefing)
  selbst gegenverifiziert: bexio `--verzug` unveraendert (nur RE-00087, Kispi, CHF 15'000, **86 Tg**,
  **Mahnung 2**, Frist bis **15.07.** — A1 greift NICHT, Stufe 2+ nur Entwurf/Entscheid Raphael;
  RE-00098/99 faellig 20.07. ohne Verzug); `--abgleich` unveraendert (Altliste 19 Pos., 1 alter
  Bankeingang 2021 — keine neuen Phantom-/Duplikatfaelle); **Mail-Eingang seit 06:00 leer** (Outlook);
  **Kalender bis 18.07.** nur die Koordinationssitzung Tueren **13.07. 09:00–10:00** (RJ Organisator,
  bereits im Register); Sync-/Remote-Task-Queues leer.
  - **Keine Whitelist-Aktion:** A1 nicht anwendbar (RE-00087 bereits Mahnung 2, kein anderer Verzug
    >= 5 Tg). A2 nicht noetig (einziger Termin ist RJs eigene Sitzung, schon im Kalender). Kein neuer
    Ablage-/Registerbedarf (Register durch Radar aktuell), keine neuen Entwuerfe. Die aktive
    SBB-Vordach-Vereinbarung (Thalwil 2414) ist ein Vertragspruef-/Unterzeichnungs-Punkt fuer Raphael
    (nicht Whitelist) und stand bereits im Radar-Briefing heute frueh.
  - **Kein zweites Briefing:** null neue Befunde/Aktionen/Entwuerfe seit dem Radar; dessen Briefing
    heute deckt die neue SBB-Aktion + das 7-Tage-Bild (RE-00087 Frist 15.07., Tueren-Sitzung 13.07.)
    bereits ab. Doppelmeldung waere das von Raphael geflaggte Ueberreporting → nur dieser Journal-Vermerk.
- **RADAR-LAUF — mit Briefing (eine neue JANS-Aktion).** Register gegen bexio (`--verzug`), Kalender
  (Outlook, bis 18.07.), Mail-Eingang UND -Ausgang (seit 10.07.) und Sync-/Remote-Task-Queues
  abgeglichen; je offenem Punkt neuester Thread inkl. Anhaenge geprueft (Gegen-Verifikation,
  eingehend↔ausgehend gepaart).
- **Debitoren (live, `--verzug`):** unveraendert **ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **86 Tage ueberfaellig**) steht auf **Mahnung 2**, Zahlfrist **15.07.2026** —
  naechste Stufe erst nach Fristablauf. RE-00098/99 (faellig 20.07.) ohne Verzug.
- **NEU / handlungsrelevant — Thalwil 2414 Naeherbaurecht (Vordach):** T. Wiedmer (SBB, 10.07. 07:44)
  sendet den **Entwurf der zusaetzlichen Vereinbarung** (Vb_NB_Thalwil_Erweiterung-Vordach_20260710.docx)
  zur Pruefung. Inhalt: Vordach 12.76 m2 in separate Naeherbaurechtsvereinbarung, KEINE zusaetzliche
  Entschaedigung; Anpassungen direkt im Word oder Rueckmeldung zwecks Unterzeichnung. Damit von
  «beobachten» zu **aktiver JANS-Aktion** (Vereinbarung pruefen/mit Bauherr Tschopp abstimmen → SBB
  bestaetigen → unterzeichnen) — Register auf **nachfassen**, ins 7-Tage-Bild.
- **Saumstrasse 21 Geschirrspueler (BKP 258):** Fust (telefonverkauf@fust.ch, 10.07. 16:47) offeriert
  unter Bedingung (ohne Strom-/Wasseranschluss, bauseits vorhanden); RJ bestaetigt 10.07. 17:25 «ja,
  so anbieten» — eingehend↔ausgehend gepaart, eigentliche Offerte weiter abwarten (**beobachten**).
- **Kalender (bis 18.07.):** nur **Koordinationssitzung Tueren 13.07. 09:00–10:00** (RJ Organisator;
  L. Hiltmann/TeKoSi nimmt an) — bereits im Register.
- **SharePoint-Gastzugriff-Ablauf 10.07.** verstrichen (keine Verlaengerung veranlasst) → **Archiv**.
- **Sync-/Remote-Task-Queue:** leer.
- **Briefing an rj@ versendet:** neue SBB-Aktion (Vordach-Vereinbarung pruefen/unterzeichnen) +
  kompaktes 7-Tage-Bild (RE-00087 Frist 15.07., Tueren-Sitzung 13.07.). Unveraenderte Punkte nur als
  Einzeiler in Beobachtung — kein Ueberreporting.

---

## 2026-07-10

- **HUB-CHEF-LAUF — ohne Befund, keine zweite Mail (08:40).** Signale nach dem Radar (05:00) selbst
  gegenverifiziert: bexio `--verzug` unveraendert (nur RE-00087, Kispi, CHF 15'000, **85 Tg**, jetzt
  **Mahnung 2**, Frist laeuft bis **15.07.** — A1 greift NICHT, Stufe 2+ nur Entwurf/Entscheid Raphael;
  RE-00098/99 faellig 20.07. ohne Verzug); `--abgleich` unveraendert (Altliste 19 Pos., 1 alter
  Bankeingang 2021 — keine neuen Phantom-/Duplikatfaelle); **Mail-Eingang seit 06:00 leer** (Outlook);
  **Kalender bis 17.07.** nur die Koordinationssitzung Tueren **13.07. 09:00–10:00** (RJ Organisator,
  bereits im Register); Sync-/Remote-Task-Queues leer.
  - **Keine Whitelist-Aktion:** A1 nicht anwendbar (RE-00087 bereits Mahnung 2, kein anderer Verzug
    >= 5 Tg). A2 nicht noetig (einziger Termin ist RJs eigene Sitzung, schon im Kalender). Kein neuer
    Ablage-/Registerbedarf (Register durch Radar aktuell), keine neuen Entwuerfe.
  - **Kein zweites Briefing:** null neue Befunde/Aktionen/Entwuerfe; alle 7-Tage-Punkte (RE-00087 Frist
    15.07., SharePoint-Gastzugriff 10.07.) standen schon im Radar-Briefing 09.07. Doppelmeldung waere
    das von Raphael geflaggte Ueberreporting → nur dieser Journal-Vermerk.
- **RADAR-LAUF — ohne Briefing-Mail (KEIN Laerm).** Register gegen bexio (`--verzug`), Kalender
  (Outlook, bis 17.07.), Mail-Eingang UND -Ausgang (seit 09.07. Nachmittag) und Sync-/Remote-Task-Queues
  abgeglichen; je offenem Punkt den neuesten Thread inkl. Anhaenge geprueft (Gegen-Verifikation,
  eingehend↔ausgehend gepaart).
- **Debitoren (live, `--verzug`):** unveraendert **ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **85 Tage ueberfaellig**) steht auf **Mahnung 2**, Zahlfrist **15.07.2026** — naechste
  Stufe erst nach Fristablauf. RE-00098/99 (faellig 20.07.) ohne Verzug.
- **Mail — mehrere offene Punkte durch RJ selbst erledigt** (am ausgehenden Beleg geschlossen):
  - **Thalwil 2414 Naeherbaurecht:** RJ sendet 09.07. 16:02 die ergaenzten Plangrundlagen an T. Wiedmer
    (SBB) + S. Tschopp und verlangt das aktualisierte Naeherbaurecht → JANS-Antwort raus, Register auf
    **beobachten** (SBB-Vereinbarung abwarten).
  - **KISPI Los 273.35 Kuechenbau:** F. Wuersch liefert 09.07. 12:29 die KISPI-Antworten; RJ buendelt
    sie und leitet die definitive Anfrage 13:00 an Inniger/Lanz (Schreinermanufaktur) weiter →
    **beobachten** (Inniger kalkuliert).
  - **Jomos Sprinkleranlage:** Auftragsbestaetigung 308115-79 (09.07. 12:39) eingegangen, Auftrag
    erteilt; KISPI (Spoerri) koordiniert Termine direkt → **Archiv**.
  - **Private Kontrolle Lueftung:** C. Duran (Gruner) liefert 09.07. Installationsplan +
    Luftmengenberechnung (SIA); RJ leitet 14:26 an G. Scherbl weiter, verlangt aber 15:03 noch das echte
    **Strangschema** der neuen Anlage (nicht Prinzipschema) → bleibt **offen/nachfassen**.
- **Kalender (bis 17.07.):** neu **Koordinationssitzung Tueren 13.07. 09:00–10:00** (RJ Organisator;
  Bajrami/Jegen, Hiltmann/TeKoSi, Spahic; Spoerri abgesagt/Ferien) — ins Register. Sitzung 09.07. vorbei,
  archiviert.
- **Sync-/Remote-Task-Queue:** leer.
- **Kein Briefing:** das 7-Tage-Bild (RE-00087 Frist 15.07., SharePoint-Gastzugriff-Ablauf 10.07.) stand
  bereits im Radar-Briefing 09.07.; RE-00087 unveraendert, kein Neuentscheid vor 15.07.; einziger neuer
  Termin ist RJs eigene Sitzung. Doppelmeldung waere genau das von Raphael 09.07. geflaggte Ueberreporting
  → nur stille Register-/Journal-Pflege, keine Mail.

---

## 2026-07-09

- **HUB-CHEF-LAUF — A4-Registerpflege, ohne zweite Mail (08:39).** Signale konsolidiert nach dem
  Radar-Briefing (05:00): bexio `--verzug`, `--abgleich`, Fristen-Register + Logbuch, Outlook-Mail
  (seit 06:30) + -Kalender (bis 16.07.), Sync-/Remote-Task-Queues, Whitelist.
  - **Debitoren (live, `--verzug`):** RE-00087 (Kispi, CHF 15'000, 84 Tg ueberfaellig) steht jetzt
    auf **Mahnung 2** mit **neuer Zahlfrist bis 15.07.2026** — die am 08.07. faellige Eskalation ist
    damit **vollzogen**. Der offene Flag «Eskalation Mahnung 2 jetzt faellig, Entscheid bei Raphael»
    ist erledigt; naechste Stufe erst nach Fristablauf 15.07. RE-00098/99 (faellig 20.07.) ohne Verzug.
  - **`--abgleich`:** unveraendert (Altliste 19 Pos., 1 alter Bankeingang 2021) — keine neuen
    Phantom-/Duplikat-Faelle.
  - **Mail:** kein Neueingang seit dem Radar (Outlook 06:30 leer). **Kalender bis 16.07.:** nur die
    Koordinationssitzung **heute 13:00–14:00** (Serientermin, im Register). **Sync-/Remote-Queues:** leer.
  - **A4 (autonom):** Fristen-Register nachgefuehrt — RE-00087-Zeile auf Mahnung 2 / Frist 15.07.
    umgestellt (Status offen → beobachten), Hub-Chef-Nachtrag 09.07. im Register-Kopf eingefuegt.
  - **Keine Whitelist-Aktion:** A1 greift nicht (RE-00087 bereits Mahnung 2; Stufe 2+ nur als
    Entwurf/Entscheid Raphael). A2 nicht noetig (Sitzung 09.07. im Kalender).
  - **Kein zweites Briefing:** die einzige Aenderung (RE-00087 → Mahnung 2) **loest** einen offenen
    Flag statt neue Arbeit zu schaffen; keine neue Mail, kein neuer Termin, kein neuer Verzugsfall,
    keine neuen Entwuerfe. Alle 7-Tage-Punkte stehen im Radar-Briefing 05:00 — gemaess SKILL.md keine
    Doppelmeldung; deckt sich mit Raphaels Rueckmeldung heute frueh (Ueberreporting = Laerm).
- **KORREKTUR nach Raphaels Rueckmeldung (09.07., Nachmittag):** Der Radar hatte zwei laengst
  erledigte Punkte weitergeschleppt, weil er den Mailverkehr nur oberflaechlich abklopfte statt die
  Threads/Anhaenge zu lesen. Am Beleg geschlossen: (1) **RE-00088** ist bezahlt (bexio laengst nicht
  mehr im Verzug), Mahnung 2 gegenstandslos, kein Handlungsbedarf → Archiv; (2) **Lenggstrasse 30
  Schutzraeume-/Ersatzabgaben-Rechnung** ist bezahlt — **belegt durch das ZKB-Buchungsdetail im Anhang**
  der Mail «WG: Zahlungsbestaetigung»: Belastung **CHF 21'000.00**, Valuta/Buchungsdatum **08.07.2026**,
  ab Konto Uni-Kinderspital ZH-El.Stiftung (KISPI) an Stadt Zuerich Finanzverwaltung, Zahlungszweck
  EAG-Objekt 2026/171/0092 (= Verfuegung Lenggstrasse 30), EBICS-Auftrag Z261893557863. **Wichtig zur
  Selbstkorrektur:** urspruenglich falsch begruendet mit einer blossen Absichtserklaerung («wird sofort
  ueberwiesen») — richtig ist der Beleg der effektiv ausgefuehrten Zahlung aus dem Anhang. Baufreigabe
  PPTS folgt nach Eingangsregistrierung bei der Stadt, keine offene JANS-Aktion → Archiv. Das
  Radar-Briefing von heute frueh (05:00 UTC) enthielt beide Punkte faelschlich noch als offen/dringend;
  keine Korrektur-Mail versendet (Raphael hat es selbst geflaggt, waere Laerm).
  **Prozess-Fix hinterlegt** (Radar liest kuenftig je offenem Register-Punkt den neuesten Thread inkl.
  Anhang und schliesst bei Zahlungs-/Erledigungssignalen): scheduled-task `logbuch-radar` SKILL.md +
  Skill `logbuch` SKILL.md + Auto-Verbesserung 09.07.
- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, bis 16.07.), Mail-Eingang
  (seit 08.07. 18:00) und Sync-/Remote-Task-Queues abgeglichen.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **84 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 =
  GESTERN verstrichen**, kein Zahlungseingang → **Eskalation auf Mahnung 2 jetzt faellig** (nicht
  whitelisted; vorher RE-00088-Konflikt klaeren). Keine neuen Verzugsfaelle; RE-00098/99 (faellig
  20.07.) weiter ohne Verzug.
- **Kalender (bis 16.07.):** nur **HEUTE 09.07. 13:00–14:00** Koordinationssitzung Gruner/Jans/KISPI
  (Serientermin, bereits im Register). Keine weiteren Termine im 7-Tage-Fenster.
- **Mail-Eingang (seit 08.07. 18:00):** keine neue Mail (Outlook-Suche leer).
- **Sync-/Remote-Task-Queue:** kein offener Task fuers MacBook Pro; Remote-Pending leer.
- **Naechste 7 Tage / Cutoffs:** RE-00087 Zahlfrist **08.07. verstrichen** (kein Eingang → Eskalation
  Mahnung 2 vorbereiten, RE-00088-Konflikt vorher klaeren); Koordinationssitzung **heute 09.07.**;
  SharePoint-Gastzugriff-Ablauf **10.07. = morgen** (6 Gruner-Personen); Lenggstrasse-30-Schutzraeume-
  Rechnung weiter dringend (Baufreigabe PPTS haengt an der Bezahlung). AG-Gruendung weiter hoch
  (Notariats-Antwort noch nicht raus, UBS-Formular abwarten). Offene Offert-Pruefungen: TeKoSi Los
  231.10, Brunner Los 273.00, Portunus Los 275.00 Schliesssystem.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Cutoffs in den naechsten 7 Tagen).

---

## 2026-07-08

- **HUB-CHEF-LAUF — ohne Befund (keine Mail).** Signale konsolidiert: bexio `--verzug`
  (unveraendert ein Verzugsfall RE-00087, 83 Tg, Mahnung 1, Zahlfrist 08.07. = heute erreicht,
  kein Eingang; RE-00098/99 faellig 20.07. ohne Verzug), bexio `--abgleich` (bekannte Altliste
  19 Pos., 1 alter Bankeingang 2021 — unveraendert), Fristen-Register + heutiges Radar-Briefing
  (05:00 UTC), Mail-Eingang seit 07.07. 18:00, Whitelist, Sync-/Remote-Task-Queues (leer).
  **Mail:** nur Struebi-Absage (bereits erfasst), das eigene Radar-Briefing und EINE neue
  Auto-Bestaetigung (nettoshop, Ticket 2700460 — JANS-Offertanfrage Geschirrspueler-Ersatz
  Saumstrasse 21, BKP 258). Keine handlungsrelevante Kundenmail, keine Notariats-/UBS-Antwort.
  - **A4 (autonom):** Fristen-Register gepflegt — neue Beobachten-Zeile «Saumstrasse 21
    Geschirrspueler-Ersatz (BKP 258), Offertanfrage an nettoshop raus, Offerte abwarten»;
    Hub-Chef-Nachtrag 08.07. im Register-Kopf eingefuegt.
  - **Keine Whitelist-Zahlungs-/Mahnaktion:** A1 greift nicht auf RE-00087 (bereits Mahnung 1;
    Eskalation auf Mahnung 2 nicht whitelisted; RE-00088-Konflikt vorher klaeren; Zahlfrist 08.07.
    laeuft heute noch). A2 nicht noetig (Koordinationssitzung 09.07. bereits im Kalender).
  - **Keine neuen Entwuerfe:** die offenen Offert-Pruefungen (TeKoSi Los 231.10, Brunner Los
    273.00, Portunus Los 275.00) brauchen die Anhang-Sichtung (groesserer Scope, bereits im
    Register gefuehrt); Drafts vom 03.07./07.07. (SBB Wiedmer, Gruner Duran, Inniger) stehen.
  - **Kein zweites Briefing:** alle pressierenden 7-Tage-Punkte (RE-00087 Zahlfrist heute,
    Koordinationssitzung 09.07., SharePoint-Gastzugriff 10.07., Lenggstrasse-30-Schutzraeume)
    stehen bereits im Radar-Briefing von heute frueh. Gemaess SKILL.md keine Doppelmeldung.
    Checkpoint Whitelist v1 weiter offen (Raphael).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, bis 15.07.), Mail-Eingang
  (seit 07.07. 12:00) und Sync-Task-Queue abgeglichen.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **83 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 =
  HEUTE erreicht**, kein Zahlungseingang. Keine neuen Verzugsfaelle; RE-00098/99 (faellig 20.07.)
  weiter ohne Verzug. Bei Ausbleiben Eskalation auf Mahnung 2 (vorher RE-00088-Konflikt klaeren).
- **Kalender (bis 15.07.):** nur **09.07. 13:00–14:00** Koordinationssitzung Gruner/Jans/KISPI
  (Serientermin, bereits im Register). Der TeKoSi-Termin 07.07. ist vorbei → Archiv. Keine neuen Termine.
- **Mail-Eingang (seit 07.07. 12:00, 2 Mails):** (1) J. Struebi (Portunus, 07.07. 18:40) sagt die
  parallel angefragte Los-231.10-Tuerfachplanung ab (bietet keine Tuerfachplanung an, Frist zu kurz) —
  die TeKoSi/Hiltmann-Honorarofferte bleibt damit die massgebende; Register-Zeile ergaenzt. (2) Graphax
  Kreditorenrechnung Nr. 40973503 — reiner Rechnungseingang, kein Handlungsbedarf/keine Frist.
- **Sync-Task-Queue:** kein offener Task fuers MacBook Pro.
- **Naechste 7 Tage / Cutoffs:** RE-00087 Zahlfrist **08.07. = heute** (kein Eingang → Eskalation
  Mahnung 2 vorbereiten, RE-00088-Konflikt vorher klaeren); Koordinationssitzung **09.07.**;
  SharePoint-Gastzugriff-Ablauf **10.07.** (6 Gruner-Personen); Lenggstrasse-30-Schutzraeume-Rechnung
  weiter dringend (Baufreigabe PPTS haengt an der Bezahlung). AG-Gruendung weiter hoch (Notariats-
  Antwort noch nicht raus, UBS-Formular abwarten). Offene Offert-Pruefungen: TeKoSi Los 231.10,
  Brunner Los 273.00, Portunus Los 275.00 Schliesssystem.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Cutoffs in den naechsten 7 Tagen).

---

## 2026-07-07

- **HUB-CHEF-LAUF — mit Befund (Briefing versendet).** Signale konsolidiert: bexio `--verzug`
  (unveraendert ein Verzugsfall RE-00087, 82 Tg, Mahnung 1, Zahlfrist 08.07. = morgen; RE-00098/99
  faellig 20.07. ohne Verzug), bexio `--abgleich` (bekannte Altliste 19 Pos., 1 alter Bankeingang
  2021 — unveraendert), Fristen-Register + heutiges Radar-Briefing (07:00), Mail-Eingang, Whitelist,
  Sync-/Remote-Task-Queues (leer). **NEU seit dem Radar (07:00):** T. Inniger (Schreinermanufaktur)
  hakt 07.07. 07:15 bei Los 273.35 Kuechenbau (KISPI) nach — moechte die Kueche kalkulieren, offen
  ist die gebuendelte JANS/KISPI-Stellungnahme zu seinen acht Gestaltungsfragen.
  - **A4 (autonom):** Fristen-Register nachgefuehrt — Los-273.35-Zeile um den 07.07.-Nachfass ergaenzt
    + Hub-Chef-Nachtrag 07.07. eingefuegt.
  - **A5 (autonom):** Halte-/Koordinations-Entwurf an Inniger (ti@schreinermanufaktur.ch) als **Draft
    im Postfach** bereitgestellt (Zusage: Stellungnahme bis Ende Woche; nicht versendet). QS: `korrektur`
    (rechtschreibung gruen nach Umlaut-Konvertierung; layout zuerst rot wegen unvollstaendiger Signatur
    → auf verbindlichen JANS-Signatur-Standard korrigiert, dann gruen); twin-Voice-Prinzipien direkt
    angewandt (proportional statt 6-Agenten-Fan-out bei Halte-Reply).
  - **Keine Whitelist-Zahlungs-/Mahnaktion:** A1 greift nicht auf RE-00087 (bereits Mahnung 1;
    Eskalation auf Mahnung 2 nicht whitelisted; RE-00088-Konflikt vorher klaeren; Zahlfrist 08.07. laeuft).
  - **Briefing** (Erledigt / Entwurf bereit / Faellig-Droht 7 Tage / Beobachten) an rj@ versendet
    (Apple Mail, Absender rj@, echte Umlaute, sechsstellige Daten). Ueberfaelliges/Termine nur als
    Verweis aufs Radar-Briefing (keine Doppelmeldung). TeKoSi/Brunner-Offerten vom 06.07. als
    «beobachten/Pruefung ausstehend» gefuehrt (brauchen Anhang-Sichtung → Entwurf spaeter).
  - Checkpoint Whitelist v1 weiter offen (Raphael).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, bis 14.07.), Mail-Eingang
  (seit 06.07. 06:00) und Sync-Task-Queue abgeglichen.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **82 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 =
  MORGEN**, kein Zahlungseingang. Keine neuen Verzugsfaelle; RE-00098/99 (faellig 20.07.) ohne Verzug.
- **Mail-Eingang (seit 06.07. 06:00, 11 Mails):** drei relevante Neueingaenge, Rest Auto-Antworten
  (Ziegel/Merci/Spahic) + Garmin/privat.
  - **NEU DRINGEND — Lenggstrasse 30 / KISPI:** A. Soerensen (Stadt ZH, Schutzbauten SRZ, 06.07. 12:03)
    sendet signierte Verfuegung + Gebuehren-/Ersatzabgaben-Rechnungen (Schutzraeume, 2026/171/0092);
    M. Spoerri (KISPI, 06.07. 13:33) leitet an Kreditoren weiter: als dringend einlesen, weil die
    **Baufreigabe der PPTS an der Bezahlung haengt**. Soerensen gibt nach registriertem Zahlungseingang
    frei. Ins Register (hoch/nachfassen).
  - **NEU — TeKoSi-Honorarofferte Los 231.10** (L. Hiltmann, 06.07. 16:00, mit Anhang) eingegangen —
    die nach dem 06.07. erwartete Rueckmeldung. Aktion: pruefen → KISPI zur Freigabe. Register-Punkt
    26.06. (beobachten) damit erledigt, als Aktion neu gefasst.
  - **NEU — Offerte Albertstrasse 7 Los 273.00** (A. Rufer, Brunner Schreinerei, 06.07. 09:05, Anhang;
    Hochschraenke + EI30-Tuere) eingegangen — pruefen. Ins Register (tief/nachfassen). Staehlin (Sanitaer
    BKP 250) wartet noch auf ewz-Rueckmeldung, Angebot folgt — beobachten.
- **Kalender (bis 14.07.):** zwei Termine, beide im Register — **07.07. 16:00–16:30** TeKoSi finale
  Tuer-Ausfuehrungsplanung (RJ Organisator) und **09.07. 13:00–14:00** Koordinationssitzung
  Gruner/Jans/KISPI. **M. Spoerri hat den TeKoSi-Termin heute abgesagt** (interne Verabschiedung
  Lernende), klaert Teilnahme mit F. Wuersch / A. Spahic. Keine neuen Termine.
- **Sync-Task-Queue:** kein offener Task fuers MacBook Pro.
- **Naechste 7 Tage / Cutoffs:** RE-00087 Zahlfrist **08.07.**; TeKoSi-Termin **07.07.** (Spoerri
  abgesagt); Koordinationssitzung **09.07.**; SharePoint-Gastzugriff Ablauf **10.07.** (6 Gruner-
  Personen); Lenggstrasse-Schutzraeume-Rechnung dringend (Baufreigabe PPTS). Steinmann-Cutoff 06.07.
  verstrichen → Archiv. AG-Gruendung weiter hoch (Notariats-Antwort noch nicht raus, UBS-Formular
  abwarten).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Cutoffs in den naechsten 7 Tagen).

---

## 2026-07-06

- **HUB-CHEF-LAUF — ohne Befund (keine Mail).** Signale konsolidiert: bexio `--verzug` (unveraendert
  ein Verzugsfall RE-00087, 81 Tg, Mahnung 1, Zahlfrist 08.07. laeuft noch in 2 Tagen; RE-00098/99
  faellig 20.07. ohne Verzug), bexio `--abgleich` (nur bekannte Altliste 19 Pos., keine neuen Phantom-/
  Duplikat-Faelle, 1 alter Bankeingang 2021 ohne Zuordnung — unveraendert), Mail-Eingang seit 06.07.
  06:00 (keine neue Mail — Outlook-Suche leer), Kalender bis 13.07. (07.07. TeKoSi + 09.07.
  Koordinationssitzung, beide im Register und im Kalender), Sync-/Remote-Task-Queues leer.
  **Keine neuen Befunde, keine Whitelist-Aktion moeglich** (A1 greift nicht: RE-00087 steht bereits auf
  Mahnung 1, Eskalation auf Mahnung 2 nicht whitelisted, Zahlfrist 08.07. laeuft, RE-00088-Konflikt
  vorher zu klaeren; A2 nicht noetig — beide Termine bereits im Kalender), **keine neuen Entwuerfe**
  (Drafts SBB Wiedmer / Gruner Duran vom 03.07. stehen weiter — Wiederholung waere Doppelmeldung).
  Heute pressierende Punkte (Steinmann-Cutoff 06.07. Albertstrasse 7, RE-00087 Zahlfrist 08.07.) sind
  bereits im Radar-Briefing von heute frueh enthalten. Gemaess SKILL.md keine zweite Mail; verweist auf
  das Radar-Briefing. Checkpoint Whitelist v1 + Briefing-Umfang weiter offen (Raphael).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, bis 13.07.), Mail-Eingang
  (seit 05.07. 06:00) und Sync-Task-Queue abgeglichen.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **81 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  2 Tagen**, kein Zahlungseingang. Keine neuen Verzugsfaelle; RE-00098/99 (faellig 20.07.) weiter
  ohne Verzug.
- **Kalender (bis 13.07.):** unveraendert zwei Termine, beide im Register — **07.07. 16:00–16:30**
  TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator) und **09.07. 13:00–14:00**
  Koordinationssitzung Gruner/Jans/KISPI (Serientermin). Keine neuen Termine.
- **Mail-Eingang (seit 05.07. 06:00):** keine neue relevante Mail.
- **Sync-Task-Queue:** kein offener Task fuers MacBook Pro.
- **Naechste 7 Tage / Cutoffs:** R. Steinmann (Nova) Cutoff offene Anliegen **heute 06.07.**
  (Albertstrasse 7, u.a. Schliesssystem Struebi); L. Hiltmann (TeKoSi) ab **heute 06.07.** wieder
  erreichbar (Tuerfachplanung Los 231.10); Termine **07.07.** + **09.07.**; RE-00087 Zahlfrist
  **08.07.**; SharePoint-Gastzugriff Ablauf **10.07.** (6 Gruner-Personen). AG-Gruendung weiter hoch:
  Notariats-Antwort noch nicht raus, UBS-Formular abwarten.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Cutoffs in den naechsten 7 Tagen).

---

## 2026-07-05

- **HUB-CHEF-LAUF — ohne Befund (keine Mail).** Signale konsolidiert: bexio `--verzug` (unveraendert
  ein Verzugsfall RE-00087, 80 Tg, Mahnung 1, Zahlfrist 08.07. laeuft noch; RE-00098/99 ohne Verzug),
  bexio `--abgleich` (nur bekannte Altliste 19 Pos., keine neuen Phantom-/Duplikat-Faelle), Mail-Eingang
  seit 04.07. 12:00 (keine neue relevante Mail — nur das eigene Radar-Briefing 05.07. + die bereits
  registrierte SharePoint-Ablaufwarnung J. Simmen 10.07.), Kalender 7 Tage (07.07. TeKoSi + 09.07.
  Koordinationssitzung, beide im Register), Sync-/Remote-Task-Queues leer. **Keine neuen Befunde, keine
  Whitelist-Aktion moeglich** (A1 greift nicht: RE-00087 steht bereits auf Mahnung 1, Eskalation auf
  Mahnung 2 nicht whitelisted, Zahlfrist 08.07. laeuft, RE-00088-Konflikt vorher zu klaeren; Register
  durch den Radar heute frueh aktuell), **keine neuen Entwuerfe** (Drafts SBB Wiedmer / Gruner Duran vom
  03.07. stehen weiter — Wiederholung waere Doppelmeldung). Gemaess SKILL.md keine zweite Mail. Verweist
  auf das Radar-Briefing von heute frueh. Checkpoint Whitelist v1 + Briefing-Umfang weiter offen (Raphael).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, bis 12.07.), Mail-Eingang
  (seit 04.07. 12:00) und Sync-Task-Queue abgeglichen.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **80 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  3 Tagen**, kein Zahlungseingang. Keine neuen Verzugsfaelle; RE-00098/99 (faellig 20.07.) weiter
  ohne Verzug.
- **Kalender (bis 12.07.):** unveraendert zwei Termine, beide im Register — **07.07. 16:00–16:30**
  TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator) und **09.07. 13:00–14:00**
  Koordinationssitzung Gruner/Jans/KISPI (Serientermin). Keine neuen Termine.
- **Mail-Eingang (seit 04.07. 12:00):** nur die SharePoint-Ablaufwarnung (J. Simmen verliert am
  10.07. den Gastzugriff auf JANS DATENAUSTAUSCH) — bereits im Register. Keine neue relevante Mail.
- **Sync-Task-Queue:** kein offener Task fuers MacBook Pro.
- **Naechste 7 Tage / Cutoffs:** R. Steinmann (Nova) Cutoff offene Anliegen **06.07. = morgen**
  (Albertstrasse 7, u.a. Schliessystem Struebi); L. Hiltmann (TeKoSi) erreichbar ab **06.07.**
  (Tuerfachplanung Los 231.10); Termine **07.07.** + **09.07.**; RE-00087 Zahlfrist **08.07.**;
  SharePoint-Gastzugriff Ablauf **10.07.** (6 Gruner-Personen). AG-Gruendung weiter hoch:
  Notariats-Antwort noch nicht raus, UBS-Formular abwarten.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-07-04

- **HUB-CHEF-LAUF — ohne Befund (keine Mail).** Signale konsolidiert: bexio `--verzug` (unveraendert
  ein Verzugsfall RE-00087, 79 Tg, Mahnung 1, Zahlfrist 08.07. laeuft noch; RE-00098/99 ohne Verzug),
  bexio `--abgleich` (nur bekannte Altliste 19 Pos., keine neuen Phantom-/Duplikat-Faelle), Mail-Eingang
  seit 03.07. 12:00 (keine neue relevante Mail — nur eigenes Radar-Briefing 04.07. + Graphax-Kreditoren-
  rechnung ohne Handlungsbedarf), Kalender 7 Tage (07.07. TeKoSi + 09.07. Koordinationssitzung, beide im
  Register), Sync-/Remote-Task-Queues leer. **Keine neuen Befunde, keine Whitelist-Aktion moeglich**
  (A1 greift nicht: RE-00087 steht bereits auf Mahnung 1, Eskalation auf Mahnung 2 nicht whitelisted,
  Frist laeuft; Register durch den Radar heute frueh aktuell), **keine neuen Entwuerfe** (gestrige Drafts
  SBB Wiedmer / Gruner Duran stehen weiter — Wiederholung waere Doppelmeldung). Gemaess SKILL.md keine
  zweite Mail. Verweist auf das Radar-Briefing von heute frueh. Checkpoint Whitelist v1 + Briefing-Umfang
  weiter offen (Raphael).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, bis 11.07.), Mail-Eingang
  (seit 03.07. 12:00) und Sync-Task-Queue abgeglichen.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **79 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  4 Tagen**, kein Zahlungseingang. Keine neuen Verzugsfaelle; RE-00098/99 (faellig 20.07.) weiter
  ohne Verzug.
- **Kalender (bis 11.07.):** unveraendert zwei Termine, beide im Register — **07.07. 16:00–16:30**
  TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator) und **09.07. 13:00–14:00**
  Koordinationssitzung Gruner/Jans/KISPI (Serientermin). Keine neuen Termine.
- **Mail-Eingang (seit 03.07. 12:00):** nur eine Graphax-Kreditorenrechnung (Nr. 40967593) — reiner
  Rechnungseingang, kein Handlungsbedarf/keine Frist. Keine neue relevante Mail.
- **Sync-Task-Queue:** kein offener Task fuers MacBook Pro.
- **Naechste 7 Tage / Cutoffs:** RE-00087 Zahlfrist **08.07.**; Termine **07.07.** + **09.07.**;
  R. Steinmann (Nova) Cutoff offene Anliegen **06.07.** (Albertstrasse 7, u.a. Schliessystem Struebi);
  L. Hiltmann (TeKoSi) erreichbar ab **06.07.** (Tuerfachplanung Los 231.10); SharePoint-Gastzugriff
  Ablauf **10.07.** (6 Gruner-Personen). AG-Gruendung weiter hoch: Notariats-Antwort noch nicht raus,
  UBS-Formular abwarten.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-07-03

- **HUB-CHEF-LAUF (erster echter Lauf, Review-Checkpoint):** Signale konsolidiert (Fristen-Register,
  Logbuch 7-Tage-Horizont, heutige Morgen-Loops radar/zahlungsabgleich/mahnwesen/ag-monitor,
  bexio `--verzug` + `--abgleich`, Outlook-Mail, Sync-/Remote-Queues, Service-Katalog).
  - **Neue Befunde:** (a) bexio `--verzug` — zwei NEUE offene KISPI-Rechnungen **RE-00098 (CHF 13'600)**
    + **RE-00099 (CHF 3'680)**, beide faellig 20.07., noch kein Verzug (ins Register). (b) `--abgleich`:
    keine neuen Phantom-/Duplikat-Faelle (nur bekannte Altliste 19 Pos.; read-only, Treuhand/bexio-UI).
    (c) Mail-Triage 02.07. (vom Routine-Radar als «andere Projekte» summiert, hier richtig triagiert):
    **Thalwil Naeherbaurecht 2414** — SBB/Wiedmer bestaetigt Vordach in separate Vereinbarung ohne
    Zusatz-Entschaedigung, Bauherr Tschopp gibt gruenes Licht; **Scherbl** praezisiert 4 fehlende
    Lueftungs-Unterlagen fuer die private Kontrolle KISPI; **Steinmann (Nova)** Ferien 08.-20.07.,
    Cutoff 06.07.; **eBaugesuche-Einladung** «Umbau Ladenflaeche» (Jashari/acta-ing); **KISPI-SPOC**
    (Schaefer: A. Spahic alleinige Ansprechperson).
  - **Aktionen (Whitelist):** A4 — Fristen-Register nachgefuehrt (RE-00098/99 + 5 neue Pendenzen aus der
    Mail-Triage). A5 — zwei Antwort-Entwuerfe bereitgestellt (SBB Wiedmer / Gruner Duran) und im
    Briefing eingestellt (NICHT autonom versendet). **Keine A1-Mahnaktion:** RE-00087 steht bereits
    auf Mahnung 1, Eskalation auf Mahnung 2 ist nicht whitelisted (nur Entwurf); Zahlfrist 08.07. noch
    nicht erreicht. Verbotsliste eingehalten (kein Versand ausser Briefing, keine Buchung/Loeschung).
  - **QS (Phase 5):** Briefing + beide Entwuerfe durch `korrektur` (Rechtschreibung 🟢, Layout 🟢) und
    `twin`-Fidelity-Gate (**92**, beide PASS; Register Verfahrens-Sie SBB / respektvoll-Sie Gruner
    KB-belegt korrekt). Zwei optionale Twin-Feinungen uebernommen.
  - **Briefing:** EINE Mail an rj@ versendet (Erledigt/Entwuerfe/Deine Aktion/Faellig/Service/Beobachten
    + Whitelist-Review-Frage). Verweist auf das Radar-Briefing von heute frueh statt Doppelmeldung.
  - **Checkpoint offen:** Raphael bestaetigt/justiert die Aktions-Whitelist v1 und den Briefing-Umfang
    (insb. ob A5-Drafts kuenftig direkt in die Postfach-Entwuerfe statt ins Briefing).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 10.07.)
  und Mail-Eingang (seit 02.07. 17:00) abgeglichen. Sync-Task-Queue: kein offener Task fuer das
  MacBook Pro (nur ein Synobsis-Task fuer den Mac Mini) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **78 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  5 Tagen**, kein Zahlungseingang. Bei Ausbleiben Eskalation auf Mahnung 2 (vorher RE-00088-Konflikt
  klaeren).
- **Kalender naechste 7 Tage (Outlook):** unveraendert zwei Termine, beide bereits im Register —
  **07.07. 16:00–16:30** TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator) und
  **09.07. 13:00–14:00** Koordinationssitzung Gruner/Jans/KISPI (Serientermin). Keine neuen Termine.
- **Mail-Eingang (seit 02.07. 17:00):** keine neue relevante Mail.
- **SharePoint-Gastzugriff:** Ablauf **10.07.** (6 Gruner-Personen) rueckt in das 7-Tage-Fenster —
  bei Bedarf Gastfreigaben verlaengern.
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Zahlfrist **08.07.**), Termine
  07.07. + 09.07., SharePoint-Gastzugriff-Ablauf 10.07., AG-Gruendung (Notariats-Antwort offen).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-07-02

- **HUB-CHEF-HARNESS GEBAUT (Autonomie Stufe 3 autorisiert):** Raphael hat per Spec-Interview
  drei Schluesselentscheide bestaetigt — (1) alle vier Services produktisieren
  (Machbarkeits-Studio, Immobilienbewertung, Ankaufspruefung/TDD, Bauleitungs-Backend →
  `services/KATALOG.md`), (2) Autonomie **Stufe 3** mit Aktions-Whitelist
  (`logbuch/AKTIONS-WHITELIST.md` v1: A1 Mahnstufe 1 mit Guards versandberechtigt, A2 Kalender,
  A3 Ablage, A4 Register, A5 Drafts; Geld/Buchungen/Loeschen IMMER verboten), (3) **Hub-Chef
  taeglich** als Dach-Orchestrator (Skill `skills/hub-chef/SKILL.md`, Loop `hub-chef-taeglich`
  08:35 auf dem MacBook Pro, konsolidiert alle Morgen-Loops zu EINEM Briefing mit fertigen
  Entwuerfen). Spec: `wissen/spec/outputs/2026-07-02_hub-chef-harness_spec.md`. CHECKPOINT:
  Raphael reviewt Whitelist + erstes Briefing am 03.07.
- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 09.07.)
  und Mail-Eingang (seit 01.07. 17:00) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **77 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  6 Tagen**, kein Zahlungseingang. Bei Ausbleiben Eskalation auf Mahnung 2 (vorher RE-00088-Konflikt
  klaeren).
- **Kalender naechste 7 Tage (Outlook):** zwei Termine. **07.07. 16:00–16:30** TeKoSi finale
  Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator, Y. Cetin hat 29.06. abgesagt) — bereits im
  Register. NEU: **09.07. 13:00–14:00** Koordinationssitzung Gruner/Jans/KISPI (Serientermin
  Zwei-Wochen-Rhythmus, Organisatorin M. Valentin/KISPI) — ins Register aufgenommen. FIFA-Museum
  (01.07., privat) vorbei → Archiv.
- **Mail-Eingang (seit 01.07. 17:00):** keine neue relevante Mail.
- **EPROID B26-00705.01:** A. Soerensen (Stadt ZH) ist ab heute (02.07.) wieder im Haus — Antwort
  jetzt erwartbar, ab Ende Woche aktiv nachfassen.
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Zahlfrist **08.07.**), Termine
  07.07. + 09.07., EPROID (Soerensen zurueck → nachfassen), AG-Gruendung (Notariats-Antwort offen).
  Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, KISPI LOS274.01 (def. Offerte Jegen),
  dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp, Freischaltung Merci, Chaled, Jomos,
  Mittagessen Prencipe, Schliesssystem Struebi, Kuechenbau LOS 273.35.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-07-01

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 08.07.)
  und Mail-Eingang (seit 30.06. 17:00) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** nur noch **ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **76 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  7 Tagen**, kein Zahlungseingang. Bei Ausbleiben Eskalation auf Mahnung 2 (vorher RE-00088-Konflikt
  klaeren). **RE-00097 (Hofer, CHF 500)** ist aus der bexio-Verzugsliste verschwunden (bezahlt/
  abgeglichen) — Eskalation auf Mahnung 1 gegenstandslos; ins Archiv verschoben.
- **Kalender naechste 7 Tage (Outlook):** unveraendert nur zwei Termine, beide bereits im Register —
  **01.07.** FIFA-Museum «Fuehrung, Food & Faenen» (privat, 15:45–21:00) und **07.07. 16:00–16:30**
  TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator). Y. Cetin (Gruner) hat
  29.06. abgesagt.
- **Mail-Eingang (seit 30.06. 17:00):** nur eine relevante Mail — S. Sonderegger (KISPI, 30.06. 20:25)
  gibt zur LOS 273.35 Kuechenbau-Vergabe Rueckmeldung mit Anpassungspunkten (Gestaltung ok, Anordnung
  Moebel/Geraete, Arbeitsplatte); als Update in die bestehende LOS-273.35-Pendenz uebernommen. Sonst
  nur Werbung (Sunrise).
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Zahlfrist **08.07.**), Termine
  01.07. + 07.07., EPROID B26-00705.01 (A. Soerensen ab 02.07. zurueck → nachfassen), AG-Gruendung
  (Notariats-Antwort offen). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, KISPI
  LOS274.01 (def. Offerte Jegen), dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp,
  Freischaltung Merci, Chaled, Jomos, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-30

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 07.07.)
  und Mail-Eingang (seit 29.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** weiter zwei Verzugsfaelle, aber Statuswechsel bei RE-00087
  (Kispi, CHF 15'000, faellig 16.04., **75 Tage ueberfaellig**): neu auf **Mahnung 1 (Stufe 2)**
  eskaliert (bexio level 2), neue Zahlfrist **08.07.2026**. Bei Ausbleiben Eskalation auf Mahnung 2
  (vorher RE-00088-Konflikt klaeren). RE-00097 (Hofer, CHF 500, faellig 16.06., **14 Tage
  ueberfaellig**, Mahnstufe 1) — Zahlungserinnerung-Frist **30.06. = heute erreicht**, Eskalation
  auf Mahnung 1 faellig. Kein Zahlungseingang seit dem letzten Lauf.
- **Kalender neu:** **07.07. 16:00–16:30** TeKoSi — Vorgehen finale Tuer-Ausfuehrungsplanung (Teams,
  KISPI; RJ Organisator). Y. Cetin (Gruner) hat 29.06. abgesagt. Ins Register aufgenommen. 01.07.
  FIFA-Museum (privat) unveraendert.
- **Mail-Eingang (seit 29.06.):** drei neue weiche Pendenzen — J. Struebi (Portunus) sendet 30.06.
  das Schliesssystem-Angebot Albertstr. 7 (BKP 275.00, Pruefung offen); Schreinermanufaktur sendet
  30.06. den Kuechenbau-Entwurf LOS 273.35 (Rueckmeldung erbeten); C. Bopp meldet 30.06. die
  versandte Baulinien-Einwendung Giebelweg 12 (Info, keine JANS-Aktion). F. Wuersch (KISPI, 30.06.)
  liefert B. Kuebler die Infos zur Offertstellung Fachbauleitung HLKSE/GA (RJ cc, Info).
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Frist 08.07.), RE-00097
  (Erinnerungs-Frist heute erreicht, Eskalation faellig), Termine 01.07. + 07.07., AG-Gruendung
  (Notariats-Antwort offen). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01 (ab 02.07.), KISPI LOS274.01 (def. Offerte Jegen), dwg Ramminger, Unterlagen
  Scherbl, Status/Beton Tschopp, Freischaltung Merci, Chaled, Jomos, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-29

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 06.07.)
  und Mail-Eingang (seit 28.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **74 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist 28.06. ueberschritten, die
  Eskalation auf Stufe 2 (Mahnung 1) ist damit **ueberfaellig** (vor dem Versand mit dem
  RE-00088-Konflikt abgleichen). RE-00097 (Hofer, CHF 500, faellig 16.06., **13 Tage ueberfaellig**,
  Mahnstufe 1) — naechste Frist **30.06. = morgen**. Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (unveraendert hoch):** HRA-Voranfrage «JANS AG» (Geschaeft 043830-2026) liegt bei
  der zustaendigen Abteilung — kein Bescheid eingegangen. Namensentscheid + UBS-Unterschrift bleiben
  blockiert, bis der HRA-Bescheid vorliegt. Beide Zeilen bleiben offen/nachfassen.
- **Mail-Eingang (seit 28.06., kein neues Frist-Item):** nur zwei Zahlungsbelege STUDIO 3DSIXTY
  (Stripe/HubSpot, CHF 54.05 — Info, keine JANS-Frist) und das gestrige eigene Logbuch-Briefing.
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00. Beide bereits im Register.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation **ueberfaellig**), RE-00097 (30.06. morgen),
  AG-Gruendung (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01
  (definitive Offerte verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher,
  bexio-Doppelimport, EPROID B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl,
  Status/Beton Tschopp, Freischaltung Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-28

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 05.07.)
  und Mail-Eingang (seit 27.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **73 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist **28.06. = HEUTE erreicht**,
  die Eskalation auf Stufe 2 (Mahnung 1) ist damit faellig (vor dem Versand mit dem RE-00088-Konflikt
  abgleichen). RE-00097 (Hofer, CHF 500, faellig 16.06., **12 Tage ueberfaellig**, Mahnstufe 1) —
  naechste Frist **30.06.** = in 2 Tagen. Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (unveraendert hoch):** HRA-Voranfrage «JANS AG» (Geschaeft 043830-2026) liegt bei
  der zustaendigen Abteilung — kein Bescheid eingegangen. Namensentscheid + UBS-Unterschrift bleiben
  blockiert, bis der HRA-Bescheid vorliegt. Beide Zeilen bleiben offen/nachfassen.
- **Mail-Eingang (seit 27.06., kein neues Frist-Item):** SharePoint-Ablaufwarnung 28.06. (J. Simmen u.a.
  verlieren Zugriff am 10.07. — bereits im Register); H. Paltanovich (27.06.) bestaetigt, das
  WP-Migrate-Plugin auf raphaeljans.ch koenne deaktiviert/geloescht werden (Info, keine JANS-Frist).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00. Beide bereits im Register.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation **heute** 28.06. faellig), RE-00097 (30.06.),
  AG-Gruendung (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01
  (definitive Offerte verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher,
  bexio-Doppelimport, EPROID B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl,
  Status/Beton Tschopp, Freischaltung Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-27

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 04.07.)
  und Mail-Eingang (seit 26.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **72 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist **28.06.**, d.h. die
  Eskalation auf Stufe 2 (Mahnung 1) ist jetzt **morgen** faellig. RE-00097 (Hofer, CHF 500,
  faellig 16.06., **11 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist **30.06.** = in 3 Tagen.
  Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (unveraendert hoch):** HRA-Voranfrage «JANS AG» (Geschaeft 043830-2026) liegt bei
  der zustaendigen Abteilung — kein Bescheid eingegangen. Namensentscheid + UBS-Unterschrift bleiben
  blockiert, bis der HRA-Bescheid vorliegt. Beide Zeilen bleiben offen/nachfassen.
- **NEU — KISPI Los 231.10 Tuerfachplanung:** Abwesenheits-Antwort L. Hiltmann (Tekosi) auf die
  JANS-Honorarofferte-Anfrage — ausser Haus bis 05.07., erreichbar ab 06.07.; Rueckmeldung erst
  danach erwarten. Als beobachten-Pendenz (tief) ins Register.
- **Mail-Hinweise (Info, kein Frist-Item):** Marco Schwander (Gastro-Online) Korrespondenz LOS_273.35
  Kuechenbau laeuft (Masse ergaenzt); IncaMail Passwort-Ruecksetzung + -Aenderung (26.06., mutmasslich
  durch Raphael selbst ausgeloest — kein Item, aber notiert).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation **morgen** 28.06.), RE-00097 (30.06.),
  AG-Gruendung (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01
  (definitive Offerte verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher,
  bexio-Doppelimport, EPROID B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl,
  Status/Beton Tschopp, Freischaltung Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-26

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 03.07.)
  und Mail-Eingang (seit 25.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, wird vom Runner abgearbeitet) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **71 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 jetzt **in 2 Tagen**) und RE-00097 (Hofer, CHF 500, faellig 16.06., **10 Tage ueberfaellig**,
  Mahnstufe 1, naechste Frist **30.06.** = in 4 Tagen). Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (NEU, hoch):** HRA ZH hat die **Voranfrage zur Zulaessigkeit der Firma «JANS AG»**
  bestaetigt (Empfangsbestaetigung kanzlei.hra@ji.zh.ch, 26.06. 04:49, Geschaeft 043830-2026) — Anfrage
  liegt bei der zustaendigen Abteilung. Namensentscheid und UBS-Unterschrift bleiben offen, bis der
  HRA-Bescheid vorliegt. Beide AG-Zeilen bleiben offen/nachfassen.
- **NEU — KISPI LOS274.01 Innere Verglasung:** R. Grob (Jegen) liefert 25.06. das bereinigte Angebot
  (6 % Rabatt, 2 % Skonto); M. Spoerri (KISPI) bittet, die definitive Offerte zu verlangen, KISPI gibt
  sie dann sogleich frei — als nachfassen-Pendenz (mittel) ins Register.
- **NEU — Jomos (25.06.):** fragt nach dem Stand ihres Angebots vom 03.06. (KISPI) — kurze
  Status-Rueckmeldung, als nachfassen-Pendenz (tief) ins Register.
- **EPROID B26-00705.01 (Update):** A. Soerensen (Stadt ZH) per Abwesenheits-Antwort ausser Haus bis
  02.07., beantwortet ab dann — Antwort erst nach dem 02.07. erwarten; Zeile aktualisiert.
- **Mail-Hinweise (Info):** Honorarofferten-Anfrage M. Spoerri an D. Buechler (Gruner) fuer KISPI
  Umnutzung 1.OG (rj cc, kein JANS-Frist-Item); Brandmeldeplan-Abstimmung Cetin/Ziegel (Gruner) laeuft;
  SharePoint-Massenloesch-Hinweis 25.06. (Folge des Speicher-Cleanups, kein neues Item); SIA-Mitteilung
  Wechsel operative Leitung (Info).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation 28.06.), RE-00097 (30.06.), AG-Gruendung
  (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01 (definitive Offerte
  verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp, Freischaltung
  Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-25

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 02.07.)
  und Mail-Eingang (seit 24.06.) abgeglichen. Sync-Task-Queue leer (keine offenen Tasks fuer beide
  Stationen) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **70 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 jetzt **in 3 Tagen**) und RE-00097 (Hofer, CHF 500, faellig 16.06., **9 Tage ueberfaellig**,
  Mahnstufe 1, naechste Frist **30.06.** = in 5 Tagen). Kein Zahlungseingang seit dem letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **AG-Gruendung (unveraendert hoch):** UBS-Vertragsdokumente liegen vor (Video-ID + Unterschrift +
  Ruecksendung), Firmenname «JANS AG» vom Notariat als gefaehrdet gemeldet — Namensentscheid VOR der
  Unterschrift klaeren. Beide Zeilen bleiben offen/nachfassen.
- **NEU — L. Merci (KISPI, 24.06.):** kommt nicht auf den Plangrundlagen-Ordner (Tekosi-Pfad im Teams
  nicht sichtbar), bittet um Freischaltung — als nachfassen-Pendenz (mittel) ins Register.
- **NEU — S. Tschopp (24.06.):** Nachtrag zur Aufstockung — fragt zum Aussenbereich-Beton (GRID Straight
  + ORGANIC Lily), ob er die JANS-Anforderungen direkt dem Lieferanten zustellen darf. An die bestehende
  Tschopp-Pendenz angehaengt.
- **Mail-Hinweise (Info):** SharePoint-Speicher-Warnung erneut 24.06. (nun 1055.04 / 1054 GB) — bleibt
  offener Blocker, Wert im Register aktualisiert. C. Duran (Gruner, 24.06.): aktualisierter Abbruchplan
  im SharePoint abgelegt (Info). Brandmeldeplan-Abstimmung Cetin/Ziegel (Gruner) laeuft (Info, kein
  Frist-Item).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00. KISPI PPTS Brandschutz vom 24.06. ist vorbei
  → ins Archiv.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation 28.06.), RE-00097 (30.06.), AG-Gruendung
  (UBS-Dokumente + Namensentscheid). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01, dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp, Freischaltung Merci,
  Rueckmeldung Chaled, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-23

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang (seit 22.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini liegt vor (vom Macbook Pro, wird vom Runner abgearbeitet) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **68 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 pruefen, jetzt in den naechsten 7 Tagen) und RE-00097 (Hofer, CHF 500, faellig 16.06.,
  **7 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **30.06.**). Kein Zahlungseingang seit dem
  letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **NEU — Notariat AG-Gruendung (M. Mathies, Notariate ZH, 22.06.):** die erwartete Antwort auf die
  Beurkundungs-Terminanfrage liegt vor; Dossier vorgeprueft. HR-Recherche zeigt bereits eine
  bestehende «JANS ...»-Firma — Namens-/Verwechslungsfrage (Zefix) klaeren, bevor der Beurkundungstermin
  fixiert wird. Bestehende AG-Notariat-Zeile entsprechend aktualisiert (Prio hoch, nachfassen).
- **NEU — N. Ramminger (KISPI, 22.06.):** Raumnummern bestaetigt/freigegeben, bittet um das
  ueberarbeitete dwg-File — als nachfassen-Pendenz (mittel) ins Register.
- **NEU — G. Scherbl (Wintec, 22.06.):** fuer die private Kontrolle (Heizung/Sanitaer Umnutzung) braucht
  er Strangschemas mit ersichtlicher Umnutzung + Grundrisspläne; Formulare noch unvollstaendig —
  Unterlagen nachreichen (nachfassen, mittel).
- **NEU — Dr. D. Chaled (22.06.):** zum KV Dachausbau/Folgekosten Bahnhofstrasse; zwei Banken
  bestaetigen den Preis (~2.9-3.16 Mio) — Rueckmeldung/naechster Schritt offen (nachfassen, tief).
- **S. Sonderegger (Reduit/Strom):** A. Spahic (22.06.) leitet die Steckdosen-/Schalter-Frage an
  M. Spoerri (raeumliche Begehung) — jetzt in interner KISPI-Klaerung, Status auf «beobachten».
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** neu **24.06. 09:00–09:30 KISPI PPTS Brandschutz
  Auflagebereinigung** (Teams, mit L. Merci/KISPI + J. Ziegel/Gruner) — als Termin ins Register. Die
  beiden 22.06.-Termine (Lueftung EVEN, Schliessanlage Albertstrasse) sind vorbei → ins Archiv.
- **Mail-Hinweise (Info):** SharePoint-Speicher-Warnung erneut 22.06. (nun 1056.96 / 1054 GB) — bleibt
  offener Blocker, Wert im Register aktualisiert. M. Spoerri (22.06.): Auftrag Sprinkleranlage-Anpassung
  an Jomos (T. Harder) erteilt (Info). Zefix (22.06.): Doku-Link Public REST API (kein Frist-Item).
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation 28.06.), RE-00097 (30.06.), KISPI PPTS Brandschutz
  (24.06.), AG-Gruendung UBS-Vertragsdokumente / Notariat-Namensfrage (~25.06.), Mittagessen M. Prencipe
  (23.06.). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID B26-00705.01, dwg Ramminger,
  Unterlagen Scherbl, Status Tschopp, Rueckmeldung Chaled.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-22

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang (seit 21.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini liegt vor (vom Macbook Pro, wird vom Runner abgearbeitet) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **67 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 pruefen) und RE-00097 (Hofer, CHF 500, faellig 16.06., **6 Tage ueberfaellig**, Mahnstufe 1,
  naechste Frist 30.06.). Kein Zahlungseingang seit dem letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **NEU — S. Tschopp (Mail 21.06.):** bittet um Status-Update zum Aufstockungs-Projekt (Freigabe
  Grundriss/Ansichten + Umgebungsplan), will im August/September mit der Ausfuehrung beginnen und
  weist auf den Vorlauf der Gewerk-Koordination hin. Als nachfassen-Pendenz (mittel) ins Register.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** nur die zwei bereits erfassten Termine HEUTE
  22.06. — 09:00–09:30 Kontrolle Lueftung EVEN (privat einladen, F. Wuersch/KISPI + C. Duran/Gruner)
  und 15:00–16:00 Besprechung Schliessanlage Albertstrasse (BKP 275.00, Teams, R. Steinmann/Nova +
  Struebi/Portunus). Beide im Register, kein neuer Eintrag noetig.
- **Mail-Hinweise (Info):** Zefix (bj.admin.ch, 22.06.) liefert Doku-Link zur Public REST API —
  bringt den Zefix-Connector voran (kein Frist-Item). SharePoint-Speicher-Warnung (21.06.) bestaetigt
  den Stand 1057.02 / 1054 GB — bleibt offener Blocker, bereits im Register.
- **Offen/nachfassen:** RE-00087 (Eskalation 28.06.), SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01, S. Sonderegger (Reduit/Strom), S. Tschopp (Aufstockung), Mittagessen M. Prencipe
  (23.06.), AG-Gruendung (UBS-Vertragsdokumente / Notariat-Termin, ~25.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-21

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang (seit 19.06.) abgeglichen. Keine offenen Sync-Tasks (macbook-pro / mac-mini leer).
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **66 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 pruefen) und RE-00097 (Hofer, CHF 500, faellig 16.06., **5 Tage ueberfaellig**, Mahnstufe 1,
  naechste Frist 30.06.). Kein Zahlungseingang seit dem letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **Erledigt/ins Archiv:** Ausmass Malerarbeiten MIRO (Albertstrasse, 20.06. 09:00–09:30) ist vorbei.
- **NEU — SharePoint «JANS DATENAUSTAUSCH»:** Microsoft-Warnung (21.06.) — 6 Gruner-Personen
  (J. Simmen, M. Eren, B. Kuebler u.a.) verlieren am **10.07.** den Gastzugriff. Als beobachten-Pendenz
  (tief) ins Register; bei Bedarf Gastfreigaben verlaengern.
- **SharePoint-Speicher (laeuft weiter):** neue Warnung 20.06. — nun **1057.0 / 1054 GB** belegt
  (zuvor 1056.8). Bleibt offener Blocker fuer die OneDrive-Output-Ablage; Speicher aufstocken/aufraeumen.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** 22.06. 09:00–09:30 Kontrolle Lueftung EVEN
  (privat einladen, F. Wuersch/KISPI + C. Duran/Gruner); 22.06. 15:00–16:00 Besprechung Schliessanlage
  Albertstrasse (BKP 275.00, Teams, R. Steinmann/Nova + Struebi/Portunus). Beide im Register, kein
  Eintrag noetig.
- **Mail-Hinweise:** A. Spahic (Kispi, 19.06.) — Angebot Kuechenbau LOS_273.35 abgelegt (Info).
  M. Spoerri (Kispi, 19.06.) — Schutzraumbaupflicht-Dokument als Scan, kommt zusaetzlich in Papierform
  (Info, B26-00705.01-Kontext). S. Sonderegger (19.06.) — zwei offene Fragen (Reduit Tuer/offen,
  Strom-Planung) weiterhin offen.
- **Offen/nachfassen:** SharePoint-Speicher, bexio-Doppelimport, EPROID B26-00705.01 (20.06.),
  S. Sonderegger (Reduit/Strom), Mittagessen M. Prencipe (23.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-19

- **Radar-Lauf:** Register gegen bexio (`--verzug`/`--offen`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang abgeglichen.
- **Debitoren (live, `--verzug`/`--offen`):** noch zwei offene Rechnungen — RE-00087 (Kispi,
  CHF 15'000, faellig 16.04., **64 Tage ueberfaellig**, Mahnstufe 1, naechste Frist 28.06.) und
  RE-00097 (Hofer, CHF 500, faellig 16.06., **3 Tage ueberfaellig**, Mahnstufe 1, naechste Frist 30.06.).
- **Erledigt/ins Archiv:** RE-00089 (Kispi, CHF 15'000, war faellig 18.06.) ist nicht mehr offen in
  bexio (bezahlt/abgeglichen) und damit aus dem Faelligkeits-Radar — gestern noch «beobachten».
- **RE-00088-Konflikt (bleibt «zu pruefen»):** weiterhin nicht offen in bexio, keine neue
  Korrespondenz heute. Mahnung 2 vom 13.06. bleibt gegenstandslos; vor Reaktion final verifizieren.
- **NEU — SharePoint-Speicher voll:** Microsoft-Warnung (18.06. 18:19) «out of SharePoint Online
  storage space», 1054 / 1054 GB belegt. Blockiert die OneDrive-Output-Ablage (30 JANS AI HUB OUTPUT)
  und das Hochladen aus Word. Als operative Pendenz (mittel) ins Register; Speicher aufstocken oder
  Altdaten aufraeumen.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** 19.06. 19:00–21:00 Besichtigung David
  (Bahnhofstrasse 27, HEUTE); 22.06. 15:00–16:00 Besprechung Schliessanlage Albertstrasse 7 (BKP
  275.00, Teams, R. Steinmann/Nova + Struebi/Portunus). Beide bereits im Kalender, kein Eintrag noetig.
- **Mail-Hinweise:** C. Duran (Gruner, 18.06.) bestaetigt, dass EN 105/EN 110 im EVEN-Portal erfasst
  sind — fliesst in die EPROID-Nachfass-Pendenz (20.06.) ein. R. Steinmann (Nova, 18.06.) liefert zur
  Albertstrasse die UG-Schrankanordnung (BKP 273) — Vorbereitungsmaterial fuer die Besprechung 22.06.
- **Offen/nachfassen:** SharePoint-Speicher (18.06.), bexio-Doppelimport (Kontaktformular), EPROID
  B26-00705.01 (20.06.), Mittagessen M. Prencipe (23.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-18

- **Radar-Lauf:** Register gegen bexio (`--verzug`/`--offen`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang abgeglichen.
- **Debitoren (live, `--offen`):** drei offene Rechnungen — RE-00087 (Kispi, CHF 15'000, faellig
  16.04., **63 Tage ueberfaellig**, Mahnstufe 1 Zahlungserinnerung, naechste Frist 28.06.),
  RE-00089 (Kispi, CHF 15'000, **faellig heute 18.06.**, noch nicht ueberfaellig), RE-00097 (Hofer,
  CHF 500, faellig 16.06., **2 Tage ueberfaellig**).
- **Aenderung RE-00097:** ist nun in Verzug und hat **Mahnstufe 1 (Zahlungserinnerung)** mit naechster
  Frist 30.06. (gestern noch ohne Mahnstufe) — Register aktualisiert. Tiefe Prio (CHF 500).
- **RE-00088-Konflikt (bleibt «zu pruefen»):** weiterhin nicht offen in bexio, keine neue
  Korrespondenz dazu heute. Die am 13.06. versendete Mahnung 2 bleibt gegenstandslos — ggf.
  zuruecknehmen/entschuldigen. Vor Reaktion final verifizieren.
- **Erledigt/ins Archiv:** Sitzung KISPI PPTS Brandschutz vom 17.06. (vergangen); Y. Cetin (Gruner)
  lieferte 17.06. die unterzeichneten Elektro-Brandlast-Dokumente.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** 19.06. 19:00–21:00 Besichtigung David
  (Bahnhofstrasse 27); 22.06. 15:00–16:00 Besprechung Schliessanlage Albertstrasse 7 (BKP 275.00,
  Teams, R. Steinmann/Nova + Struebi/Portunus). Beide Termine bereits im Kalender, kein Eintrag noetig.
- **Mail-Hinweise:** R. Zuercher (Stadt ZH, 17.06.) — Formular EN-ZH-005 entfaellt, ersetzt durch
  Anmeldung auf der EVEN-Plattform (Support beim Kanton); fliesst in die EPROID-Nachfass-Pendenz
  (20.06.) ein. F. Wuersch (Kispi, 17.06.) — Schutzplatz-Situation B26-00705.01 (psychosomatische
  Abteilung) an R. Schroeder, beobachten. E. Feldmann AG liefert mehrere Albertstrasse-Offerten
  (BKP 272/275, u.a. Schliessanlage) — Grundlage fuer die Besprechung am 22.06. M. Prencipe (17.06.)
  schlaegt Mittagessen am 23.06. vor — Antwort offen, als tiefe Pendenz aufgenommen.
- **Offen/nachfassen:** bexio-Doppelimport (Kontaktformular, 18.06.), EPROID B26-00705.01 (20.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-17

- **Radar-Lauf:** Register gegen bexio (`--offen`/`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang abgeglichen.
- **Debitoren (live, `--offen`):** drei offene Rechnungen — RE-00087 (Kispi, CHF 15'000, faellig
  16.04., **62 Tage ueberfaellig**, Mahnstufe 1 Zahlungserinnerung, naechste Frist 28.06.),
  RE-00089 (Kispi, CHF 15'000, faellig morgen 18.06.), RE-00097 (Hofer, CHF 500, faellig 16.06.,
  jetzt **1 Tag ueberfaellig**, noch keine Mahnstufe).
- **Erledigt heute:** RE-00096 (Tschopp, CHF 6'000, war faellig 16.06.) ist nicht mehr offen in
  bexio (bezahlt) und aus dem Verzug raus — ins Archiv verschoben.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** weiterhin nicht offen in bexio. M. Spoerri (Kispi)
  bestaetigt per Mail 16.06.: «Habe soeben die Rechnung (15000.-) kontiert und weitergeschickt zur
  Verarbeitung.» Die am 13.06. versendete Mahnung 2 bleibt damit gegenstandslos — ggf. zuruecknehmen/
  entschuldigen. Vor Reaktion final verifizieren.
- **Kalender naechste 7 Tage:** 17.06. 10:00 Sitzung KISPI PPTS Brandschutz (Teams, HEUTE); 19.06.
  19:00–21:00 Besichtigung David, Bahnhofstrasse 27; **neu 22.06. 15:00–16:00 Besprechung
  Schliessanlage Albertstrasse 7** (BKP 275.00, Teams, R. Steinmann/Nova + Struebi/Portunus) — ins
  Register aufgenommen. (R. Steinmann fragte 16.06. «vor Ort oder digital»; Termin steht nun als
  Teams-Besprechung.)
- **Mail-Hinweise:** Gruner (C. Duran) liefert 16.06. die Energieformulare EN-105/EN-110-ZH fuer die
  KISPI-Umnutzung (Grundlage Aenderungseingabe); C. Bopp (Giebelweg 12) bittet um Minderwert-
  Berechnung des Worst-Case-Szenarios der Baulinien-Revision (kein hartes Datum, beobachten).
- **Offen/nachfassen:** bexio-Doppelimport (Kontaktformular, 18.06.), EPROID B26-00705.01 (20.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-16

- **Radar-Lauf:** Register gegen bexio (`--offen`/`--verzug`/`--mahnstufe`), Kalender (M365) und
  Mail-Eingang abgeglichen. Live-Bild hat sich gegenueber gestern deutlich veraendert.
- **Debitoren (live, `--offen`):** vier offene Rechnungen — RE-00087 (Kispi, CHF 15'000, faellig
  16.04., **61 Tage ueberfaellig**, Mahnstufe 1 Zahlungserinnerung, naechste Frist 28.06.),
  RE-00089 (Kispi, CHF 15'000, faellig 18.06.), RE-00096 (Tschopp, CHF 6'000, faellig heute 16.06.),
  RE-00097 (Hofer, CHF 500, faellig heute 16.06.).
- **RE-00088-Konflikt (wichtig):** RE-00088 ist in bexio NICHT mehr offen (bezahlt/abgeglichen).
  M. Baumgartner (Kispi) meldet per Mail (15.06.): «RE-00088 haben wir am 02.06.26 bezahlt». Die am
  13.06. versendete **Mahnung 2 auf RE-00088 war damit gegenstandslos** — die Phantom-Zahlung, die
  wir geloescht hatten, entsprach einer echten Kispi-Zahlung. Als aktive Pendenz «zu pruefen»
  uebernommen (Mahnung ggf. zuruecknehmen/entschuldigen). Zweite Kispi-Mail (11:42) widerspricht
  teils (Rechnung «stecken geblieben») — vor einer Reaktion verifizieren.
- **Neuer Verzug:** RE-00087 (Kispi, CHF 15'000, faellig 16.04.) taucht neu als ueberfaellig auf,
  61 Tage, erst Mahnstufe 1. In Register als hohe Prio aufgenommen.
- **Kalender naechste 7 Tage:** 17.06. 10:00 Sitzung KISPI PPTS (Brandschutz, Teams); 19.06.
  Besichtigung David, Bahnhofstrasse 27. **Korrektur:** der Live-Kalender weist die Besichtigung
  auf 19:00–21:00 aus (nicht 14:00 wie bisher notiert) — Register angepasst.
- **Mail-Hinweis 17.06.:** J. Ziegel (Gruner) meldet am 16.06. krankheitsbedingte Abwesenheit (ab
  17.06. wieder im Dienst); BS-Plan/Brandlastberechnung als Sitzungsgrundlage noch offen, Brandlast
  laut Ziegel nicht von ihm zu unterzeichnen. Am 17.06.-Termin vermerkt.
- **Offen/nachfassen:** bexio-Doppelimport (Kontaktformular, 18.06.), EPROID B26-00705.01 (20.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Konflikt in den naechsten 7 Tagen).

---

## 2026-06-15

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365) und Mail-Eingang abgeglichen.
  In Verzug weiterhin nur RE-00088 (Kispi, CHF 15'000, jetzt 26 Tage ueberfaellig, Mahnung 2,
  Zahlungsfrist 19.06.). RE-00096 (Tschopp), RE-00097 (Hofer) je 16.06. und RE-00089 (Kispi) 18.06.
  noch nicht ueberfaellig, bleiben auf «beobachten».
- **Kalender naechste 7 Tage:** keine neuen Termine; die zwei bekannten bestaetigt — 17.06. 10:00
  Sitzung KISPI PPTS (Brandschutz, Teams), 19.06. 14:00 Besichtigung David, Bahnhofstrasse 27.
- **Mail-Erkenntnis 1 (bexio):** Auto-Antwort vom 13.06. — support@bexio.com wird nicht mehr genutzt.
  Die Doppelimport-Anfrage erreichte damit keinen aktiven Support. Register-Eintrag 18.06. von
  «Antwort pruefen» auf «Anfrage neu ueber bexio-Kontaktformular einreichen» (Status offen) geaendert.
- **Mail-Erkenntnis 2 (KISPI):** J. Ziegel (Gruner) liefert heute (bis 12:00) den angepassten
  Brandschutzplan aus dem CAD als Grundlage fuer die Stellungnahme/Aenderungseingabe — fliesst in die
  Sitzung am 17.06. ein; am 17.06.-Eintrag vermerkt.
- **Keine Erledigungen heute.** Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges in 7 Tagen).

---

## 2026-06-14

- **Radar-Lauf:** Register gegen bexio (`--verzug`) und Kalender abgeglichen. In Verzug aktuell
  nur RE-00088 (Kispi, CHF 15'000, 25 Tage ueberfaellig, Mahnung 2, Zahlungsfrist 19.06.). RE-00096
  (Tschopp), RE-00097 (Hofer) und RE-00089 (Kispi) noch nicht ueberfaellig, bleiben auf «beobachten».
- **Kalender naechste 7 Tage:** zwei Termine ergaenzt — 17.06. 10:00 Sitzung KISPI PPTS Koordination
  LBW/Innere Verglasung (Brandschutz, Teams); 19.06. 14:00 Besichtigung David, Bahnhofstrasse 27.
- **Offen/nachfassen:** bexio-Doppelimport (Antwort Support, 18.06.) und EPROID-Anfrage B26-00705.01
  (20.06.). Keine Erledigungen heute (Sonntag).
- Briefing-Mail an rj@ versendet (Faelliges in den naechsten 7 Tagen vorhanden).

---

## 2026-06-13

- **2619 KISPI / EPROID:** Anfrage von Nadia Petti Kunz (BD Kt. ZH, Datenlogistik) zur EPROID
  fuer Baugesuch B26-00705.01 (Lenggstrasse 30, Umbau Buero zu Klinik 1. OG) verarbeitet.
  Kanton nicht zustaendig (Stadt ZH fuehrt eigenes GWR) -> EPROID-Anfrage portalfertig erstellt
  (QS durch korrektur), Einreichung durch RJ via eBaugesucheZH im Verfahren B26-00705.01.
  EPROID fuer Energienachweis (EVEN). Fachstelle bei Nicht-Herausgabe: Statistik Stadt ZH.
- **Neue Hub-Faehigkeit:** GWR-Connector `gwr-bund.mjs` (Planungsgrundlagen) gebaut + validiert —
  amtliche GWR-Gebaeudedaten per EGID/Adresse/EGRID (Volumen/EBF/Energie, Codes dekodiert).
  Belegt: EPROID NICHT login-frei beziehbar (madd/eCH-0206 brauchen Auth) -> kein EPROID-Auto-Bezug.
- **Mahnwesen/Debitoren:** RE-00088 (Kispi, CHF 15'000) war faelschlich als bezahlt gebucht
  (Phantom-Zahlung ohne Bankbeleg). Korrigiert: Zahlung geloescht, Mahnung 2 erzeugt und an
  Marc Tobler + kreditoren@kispi.uzh.ch versendet, an allen drei Orten abgelegt. Frist 19.06.
- **bexio-Hygiene:** UBS-Feed doppelt importiert (rund 105 Phantom-Duplikate). bexio-Support
  angeschrieben, den Doppelimport gesamthaft zu entfernen. Antwort ausstehend (nachfassen 18.06).
- **Neue Hub-Faehigkeiten gebaut:** Connector `bexio.mjs` (Debitoren/Mahnwesen/Bankabgleich),
  Skills `mahnwesen` + `zahlungsabgleich`, Scheduled Tasks `mahnwesen-verzugscheck` (werktags)
  und `zahlungsabgleich-check` (taeglich). Debitoren-Seite jetzt auf verifizierten Daten.
- **Kontroll-Schicht initiiert:** Logbuch + Fristen-Register + Agent `logbuch` angelegt — der Hub
  wird vom ausfuehrenden Werkzeug zur Aufsichts-/Qualitaetsinstanz.

- 2026-07-24 22:40 (Nachtschicht Mac Mini): baurecht Buch-Run 51 — Anhang 6 LSV beschafft+verifiziert, Wiki/QUESTIONS/Drills/PROGRAMM/CHANGELOG nachgefuehrt (0 Korrekturen). Aenderungen NICHT committet: `git commit` haengt wiederholt ueber SMB, dabei blieb ein STALES `.git/index.lock` zurueck (Permission-System verweigert Claude das Entfernen sensibler Dateien) — muss manuell geloescht werden, bevor der naechste Commit (auch nas-selfcommit) durchgeht. Budget erschoepft, Zyklus hier beendet.
- 2026-07-25 03:30 (Nachtschicht Mac Mini): Prioritaeten 1-4 heute Nacht bereits von frueheren Laeufen erschoepft (Sync-Queues leer, Synobsis/planungsgrundlagen/energie bereits bedient, normen DIN/VSS/RAL komplett auf allen 4 Vertiefungsstufen). Kunde-Bopp-QUESTIONS (Ebmatingen/Romanshorn/Rechnungsadresse) brauchen Mail-Volltextsuche ohne Filter-API — zu offen fuer das Nachtschicht-Budget, daher stattdessen dritter Wissens-Health-Check auf `wissen/kunde-bopp` (aeltestes Audit-Datum unter den nicht heute schon geprueften KBs). Ergebnis: KB bleibt inhaltlich sauber (0 Widersprueche/unbelegte Claims/Schreibregel-Verstoesse); neuer Fund: der Profil-Artikel-Abschnitt zu Giebelweg 12 ist vom eigenen, 24.07. erstellten Detailartikel ueberholt (Phase-2-Fix, klein). Report `wissen/kunde-bopp/outputs/2026-07-25_health-check.md`, CHANGELOG+INDEX nachgefuehrt. Kein Versand/Publikation/Buchung.
- 2026-07-25 04:30 (Nachtschicht Mac Mini): Prioritaet 1 (Sync-Queues) bereits vom Runner selbst erledigt (Commit-Task Batch-60-twin-mail-training war schon committet+gepusht, `7b66f33d`, nur Task-Datei noch nicht nach done/ verschoben — Runner nachgeholt, Queue jetzt leer). Prioritaeten 2-4 heute Nacht bereits erschoepft (Synobsis Stufe 1+2 seit 02.07. saettigend/idle, energie+planungsgrundlagen bereits heute trainiert, normen-DIN/VSS/RAL-Loop bewusst stillgelegt seit 17.07.). Daher vierter Wissens-Health-Check des Fensters, auf `wissen/architekten-synobsis` (aeltestes Audit-Datum 21.07. unter den heute noch nicht geprueften KBs; wettbewerbs-dna gleich alt, aber MacBook-Pro-Scope). Ergebnis: Scan unveraendert 853/853 (13. ergebnisloser Nachtlauf in Folge, Pausier-Empfehlung 13x wiederholt, weiter nicht umgesetzt); Umlaut-Ersatzschreibungs-Befund vom 21.07. in der Wiki-Schicht weiterhin unkorrigiert (INDEX.md 180/QUESTIONS.md 56/THEMEN.md 9 Treffer), aber der 24.07. direkt verfasste `wiki/RAUMTYPOLOGIEN.md` ist umlautsauber — Root-Cause-Fix (dispatch-run.sh Locale) bestaetigt wirksam fuer Hauptmodell-Artikel, Bestand bleibt Phase-2-Aufgabe. 1 QUESTIONS-Punkt (1 Selection) sauber als erledigt verifiziert. Report `wissen/architekten-synobsis/outputs/2026-07-25_health-check.md`, CHANGELOG nachgefuehrt. Nichts selbst korrigiert (Phase 1), kein Versand/Publikation/Buchung.
- 2026-07-25 05:30 (Nachtschicht Mac Mini): Prioritaeten 1-4 erneut erschoepft (Sync-Queues leer, Synobsis idle, energie+planungsgrundlagen-Training + normen DIN/VSS/RAL heute schon gelaufen). Fuenfter Wissens-Health-Check des Fensters, auf `wissen/planungsgrundlagen` (aeltestes Audit-Datum 21.07. unter den Mac-Mini-Scope-KBs, noch nicht heute geprueft). **Wichtigster Fund:** KB-weiter Umlaut-Ersatzschreibungs-Befund (ae/oe/ue statt ä/ö/ü) in praktisch allen 40 Wiki-Artikeln — auch im erst heute Nacht verfassten `energie-pv-eignung-typenwahl.md` — deutlich groesser als der punktuelle Befund bei architekten-synobsis; als QUESTIONS.md M4 festgehalten, NICHT selbst gefixt (Blind-Ersetzung riskant, braucht beaufsichtigten korrektur-Lauf). Weitere Funde: 2 Artikel ohne YAML-Frontmatter, 2 echte Coverage-Luecken (noch nicht geschriebene, aber referenzierte Energie-Artikel), 0 Orphans, 0 Widersprueche in der Stichprobe, QUESTIONS-Backlog fast leer (91/92 geschlossen). Report `wissen/planungsgrundlagen/outputs/2026-07-25_health-check.md`, CHANGELOG+QUESTIONS nachgefuehrt. Kein Versand/Publikation/Buchung.
- 2026-07-25 06:30 (Nachtschicht Mac Mini): Sync-Task Macbookpro (wissen/twin + rules/jans-dna.md) war schon vom NAS-Selfcommit erledigt, nach done/ verschoben. Synobsis/Fristen/Training heute bereits erschoepft. Wissenscheck Phase 1 auf `wissen/entwurfs-referenzen`: 2 bisher unentdeckte Funde direkt behoben — ae/oe/ue-Bug im neuen Artikel `typologien/bildung.md` (104 Woerter) und veraltete Seed-Import-Formulierung in `raw/_INGESTED.md`. Report `wissen/entwurfs-referenzen/outputs/2026-07-25_health-check.md`. Kein Versand/Publikation/Buchung.
- 2026-07-25 07:30 (Nachtschicht Mac Mini): Prioritaeten 1-4 erneut erschoepft (Queues leer, Synobsis idle, energie+planungsgrundlagen-Training heute schon gelaufen). Naeher geprueft: der wiederholt in Health-Checks aufgetauchte KB-uebergreifende Umlaut-Ersatzschreibungs-Bug (ae/oe/ue statt ä/ö/ü, Root-Cause dispatch-run.sh-Locale seit 22.07 gefixt, Bestand betroffen) — empirischer Scope-Check (grep-Sweep wissen/*/wiki/) bestaetigt: deutlich groesser als einzelne Health-Check-Funde vermuten liessen (planungsgrundlagen 38, immobilienbewertung 18, wettbewerbs-dna 16, baurecht 12 betroffene Dateien; teils hunderte Einzeltreffer pro Datei, z.B. THEMEN.md architekten-synobsis). Wichtiger Befund: das Thema ist bereits vollstaendig auf koordination-Ebene registriert (`wissen/koordination/outputs/2026-07-22_wissens-chef-run12.md`, Cross-KB-Beobachtung) als **nicht autonom ausfuehrbare** Bestandskorrektur fuer hub-chef/Raphael — bewusst NICHT selbst angefasst (Blind-Ersetzung riskant: Sweep zeigt echte Fremdwoerter/Eigennamen mit ae/oe/ue, z.B. "Rue", "Goeteborg/Göteborg", "Bibliotheque", "Prague", "Misericordiae", die nicht blind konvertiert werden duerfen). Keine neue Doppelmeldung noetig, Fund ist Bestaetigung des bestehenden Trackings, keine neue KB-Aenderung. Kein Versand/Publikation/Buchung. Zyklus bewusst schlank beendet (~2 von 5 USD), da alle sinnvollen autonomen Prioritaeten fuer dieses Fenster erschoepft/blockiert sind.
- 2026-07-25 08:30 (Nachtschicht Mac Mini): Prioritaeten 1-4 erneut erschoepft (Queues leer, Synobsis seit 13. ergebnislosem Nachtlauf saettigend, Training/Radar heute schon bedient). Prioritaet 5 (offene QUESTIONS.md recherchieren) gezogen: Backlog-Punkt "Verwaltungsrat: Pflichten/Haftung/Konstituierung" aus `wissen/firmengruendung-ch` (kleiner, klar abgegrenzter Scope, passend zum Budget) recherchiert und als neuer Artikel `wiki/verwaltungsrat.md` kompiliert. Alle OR-Artikel (707, 710, 712, 714-719, 725-725b, 754-760) direkt am Fedlex-Filestore-Volltext SR 220 verifiziert (Methode Rule auto-verbesserungen 260721), keine Sekundaerquellen. Kernbefunde: Amtsdauer 3/max. 6 Jahre bei nicht kotierten AG, 8 unuebertragbare Kernaufgaben (Art. 716a), Vertretung + Schriftformpflicht bei Insichgeschaeften > CHF 1'000 (Art. 718b, relevant fuer die Ein-Personen-AG), die drei seit der Aktienrechtsrevision 2023 kodifizierten Ueberwachungspflichten Liquiditaet/Kapitalverlust/Ueberschuldung (Art. 725-725b, inkl. Revisionspflicht im Kapitalverlustfall trotz Opting-out), Haftung/Solidarhaftung/Verjaehrung (Art. 754/759/760). INDEX.md (12→13 Artikel, Coverage-Luecken 1→0), QUESTIONS.md (Punkt ins Archiv verschoben) und CHANGELOG nachgefuehrt. Letzte verbliebene Backlog-Luecke der KB damit geschlossen. Kein Versand/Publikation/Buchung.
- 2026-07-25 18:30 (Nachtschicht Mac Mini): Sync-Task Macbookpro (wissen/twin + rules/jans-dna.md/anrede-kontakte.md) war schon vom NAS-Selfcommit erledigt, nach done/ verschoben. Trainings-Prioritaet (4) uebersprungen: alle 7 KBs mit training/PROGRAMM.md wurden im laufenden Vollgas-Fenster (seit 12:45, Drossel aufgehoben) bereits in den letzten 1-2 Stunden trainiert — hohes Kollisionsrisiko. Synobsis Stufe 2 (Prioritaet 2) laeuft seit 03.07. autonom per launchd, kein offener Bedarf. Wissenscheck Phase 1 (Prioritaet 6) auf `wissen/projekt-lessons` — aeltestes Audit (22.07.) unter den KBs ohne aktiven Trainings-Loop/Schreibzugriff gerade jetzt. Fund: KB nicht mehr leer seit 23.07. (erster Artikel `kispi-lbw-rohdichte-800`, established) — INDEX.md-Statistik und QUESTIONS.md-Kopfzeile waren dabei nicht nachgefuehrt worden, hier korrigiert (nicht-destruktive Bestandspflege). Kleiner Schema-Befund (Artikeltyp "Verifikation" vs. CLAUDE.md-Vorgabe "Fehlerfall") in QUESTIONS.md vermerkt, nicht gefixt (kein Muster bei n=1). Bootstrap-Pendenz aus logbuch/fristen.md (22.07.) bleibt offen, dort Teilfortschritt nachgetragen. Report `wissen/projekt-lessons/outputs/2026-07-25_health-check.md`. Kein Versand/Publikation/Buchung.
- 2026-07-25 19:30 (Nachtschicht Mac Mini): Zyklus schlank zurueckgetreten. Befund: exakt zeitgleicher Doppelstart derselben Nachtschicht-Aufgabe (zwei Dispatch-Instanzen zur selben Sekunde) sowie zwei parallele Vollgas-Runner-Prozesse und ein separater energie-training-Lauf auf demselben Host. Sync-Queues leer, alle 7 Trainings-KBs bereits im laufenden Vollgas-Fenster trainiert, die zwei aeltesten wissenscheck-Kandidaten (twin, baurecht) gerade selbst aktiv beschrieben — hohes Schreibkonflikt-Risiko. Gemaess Rule 260724 (host-interne Zweitinstanz) keine Register-Edits. Hinweis an Raphael: die exakt gleichzeitige Doppelausloesung deutet auf ein Scheduling-Problem hin, verdoppelt potenziell das Budget je Zeitfenster — lohnt sich zu pruefen.
- 2026-07-25 20:30 (Nachtschicht Mac Mini): Sync-Task Macbookpro (wissen/twin, 20:08) war schon vom NAS-Selfcommit (20:15) erfasst, nach done/ verschoben. Synobsis: Stufe 1 komplett (853/853), 14. ergebnisloser Batch-Lauf in Folge, Pausier-Empfehlung weiterhin nicht umgesetzt (Raphaels Entscheid) — kein eigener Bedarf. Fristen-Radar: keine neuen Funde ggue. dem 19:00-Lauf. Trainings-KBs alle in den letzten 1-2h vom parallel laufenden Vollgas-Runner (2 Instanzen, energie-training aktiv) bedient — Kollisionsrisiko, uebersprungen. Wissenscheck-Kandidaten twin/baurecht weiterhin aktiv beschrieben. Stattdessen Prioritaet 5 gezogen: kleiner, klar abgegrenzter Teilbefund aus `wissen/planungsgrundlagen/wiki/QUESTIONS.md` M4 bearbeitet (2 Artikel angeblich ohne YAML-Frontmatter) — `kartenportale-naturgefahren-objektschutz.md` hatte sie bereits (reine Registerlücke korrigiert), `kartenportale-sharepoint-ablage.md` tatsaechlich noch mit inline `**Status:**` — auf YAML-Frontmatter umgestellt. Umlaut-Ersatzschreibungs-Teilbefund von M4 bleibt bewusst unangetastet (zu gross/riskant fuer Nachtschicht). CHANGELOG+QUESTIONS nachgefuehrt, keine Kollision mit dem laufenden Kartenportale/Energie-Trainingsloop (andere Datei). Kein Versand/Publikation/Buchung. Zyklus schlank beendet (~2.4 von 5 USD).
- 2026-07-25 22:41 (Nachtschicht Mac Mini): Sync-Queues leer, Fristen-Radar ohne Neues seit 20:30, alle sieben Trainings-KBs (baurecht/energie/grobkosten/planungsgrundlagen/normen/wettbewerbs-dna) wurden waehrend des Laufs live von parallelen Vollgas-Prozessen beschrieben (verifiziert per `ps`) — dort nicht eingegriffen. Offene QUESTIONS.md-Punkte in den ruhigen KBs (kunde-bopp, auflagebereinigung, entwurfs-referenzen) sind entweder bereits als "braucht dedizierten Lauf" markiert oder reine Entscheidungsfragen an Raphael. Daher Prioritaet 6: Wissenscheck Phase 1 auf `wissen/twin` (aeltestes Audit 22.07., aktuell kein aktiver Trainingsprozess). Ergebnis: A1 · B3 · C0 · D1 (schwerwiegend) · E0 · F2 · G2. Wichtigster Fund: RAW-Coverage hat sich seit dem letzten Check verschlechtert (nur noch 37% der in `_INGESTED.md` registrierten Quelldateien liegen physisch in `raw/`, 45 fehlen — v.a. Batch 54-68 der letzten drei Tage); alle vier Findings vom 22.07. bestehen unveraendert fort (Phase 2/Aktionen laeuft nur interaktiv). Report `wissen/twin/outputs/2026-07-25_health-check.md`, CHANGELOG nachgefuehrt. Kein Versand/Publikation/Buchung. Zyklus beendet (~3.4 von 5 USD, davon 2 im Wissenscheck-Subagenten).
- 2026-07-25 23:30 (Nachtschicht Mac Mini): Sync-Queues (2 Commit-Anfragen Macbookpro, wissen/twin-Fidelity+Mail-Batch-69) waren schon vom NAS-Selfcommit 23:15 erfasst, nach done/ verschoben. Synobsis Stufe 2 gesaettigt (14. ergebnisloser Lauf, Empfehlung Pausierung unveraendert offen). Fristen-Radar bereits heute in gewohnter Tiefe versendet, nichts Neues zu entwerfen. Alle Trainings-KBs mit CHANGELOG-Eintrag von heute. Offene QUESTIONS.md-Punkte in den ruhigen KBs (kunde-bopp, auflagebereinigung, entwurfs-referenzen, firmengruendung-ch) sind entweder heute schon geschlossen worden (firmengruendung-ch: Verwaltungsrat) oder explizit als "braucht dedizierten Lauf"/API-Grenze markiert. Daher Prioritaet 6: Wissenscheck Phase 1 auf `wissen/wettbewerbs-dna` (aeltestes Audit 21.07., kein aktiver Schreibzugriff waehrend der Pruefung). Ergebnis: A1 · B15 · C0 · D1 · E0 · F2 · G1 — der zentrale 21.07.-Befund (2206-Schoental-GF-Widerspruch) ist unveraendert offen und jetzt sogar als Selbst-Widerspruch innerhalb von QUESTIONS.md nachgewiesen; alle 7 kaputten Board-DNA-Backlinks und 5 Orphans bestehen unveraendert. Positiv: die 19 seit 21.07. neu hinzugekommenen Healthcare-Artikel sind sauber verlinkt, keine Regression. Report `wissen/wettbewerbs-dna/outputs/2026-07-26_health-check.md`, CHANGELOG nachgefuehrt. Kein Versand/Publikation/Buchung. Zyklus beendet (~3.7 von 5 USD).
- 2026-07-27 21:30 (Nachtschicht Mac Mini): Sync-Task Macbookpro (wissen/twin, 21:29) war schon vom NAS-Selfcommit 21:30 erfasst, nach done/ verschoben. Synobsis Stufe 2 weiterhin gesaettigt (853/853). Trainings-Prioritaet 4: planungsgrundlagen (aeltester CHANGELOG-Stand unter den sieben Trainings-KBs, 45h) gepruft — Run 91 (26.07.) hatte bereits den letzten offenen Registerpunkt M4 geschlossen und war seither nur im CHANGELOG, nicht in curriculum.md registriert; Registrierungsluecke nachgetragen, Freshness-Retest bestaetigt weiterhin 0 neue Dateien in allen vier PL-Ordnern. Kein Run 92 gefahren (waere 25. identischer Nullbefund) und Ruecktaktungs-Empfehlung (2-Tages-Turnus statt Vollgas) an Raphael in CHANGELOG vermerkt, analog zur bereits bestehenden grobkosten-Empfehlung. grobkosten ebenfalls als gesaettigt bestaetigt (23 Nullbefunde in Folge, Root-Cause-Fix Run 33 bereits erledigt). Fristen-Radar: heutiger Stand (27.07. Abo-Auslastungs-Nachtrag) bereits in gewohnter Tiefe im Register, keine neue Recherche/kein neuer Entwurf noetig (Vermeidung von Doppelarbeit zum Tages-Radar). Kein Versand/Publikation/Buchung. Zyklus beendet (~2.7 von 5 USD).
- 2026-07-27 22:58 (Nachtschicht Mac Mini): EG-GSchG-Nachzug baurecht fortgesetzt, 12/15 Fundorte korrigiert (WsG-Volltext gegengelesen), Register nachgefuehrt.
- 2026-07-28 00:30 (Nachtschicht Mac Mini): remote-tasks/pending und sync-tasks/mac-mini leer. Parallel lief ein zweiter, dedizierter Dispatch-Lauf (Budget 25 USD) fuer das Planungsgrundlagen-Training — dort nicht eingegriffen. Baurecht wurde eben erst (23:59) fertig bearbeitet. Stattdessen Prioritaet 5 gezogen: die seit 22.07./25.07. offene Bootstrap-Pendenz von `wissen/projekt-lessons` (KB blieb duenn befuellt) mit den zwei im Logbuch namentlich vorgeschlagenen Kandidaten fortgesetzt — `roethlisberger-geraetepreis-pruefung-273-35.md` (KISPI Los 273.35, Geraete-Nachtrag 36'461 auf 82'378 CHF, Lesson: Mehrumfang und Marktpreis-Aufschlag pro Geraet getrennt pruefen) und `sbb-naeherbaurecht-thalwil-2414-vordach.md` (12.76 m2 Vordach im SBB-Naeherbaurechtsperimeter loest eigene Vereinbarung + JANS-Bringschuld aus) aus Logbuch-Journal und Konversations-Destillaten kompiliert und mit Quellen belegt. INDEX/QUESTIONS/CHANGELOG nachgefuehrt (KB jetzt 3 Artikel statt 1), via `nas-commit-now.sh` committet und verifiziert gelandet (`13ca7e6e`). Kein Versand/Publikation/Buchung. Zyklus beendet (~2.4 von 5 USD).
- 2026-07-28 04:30 (Nachtschicht Mac Mini): Ursache fuer die drei ergebnislosen Vorlaeufe (01:44/02:14/03:32) gefunden und behoben — `destillat-lauf.sh` wurde jeweils per Hintergrundprozess gestartet und die Session danach vorzeitig ("warte auf Benachrichtigung") beendet; der Kindprozess stirbt mit der Session, Phase 1/2 kamen nie durch. Diesmal synchron im Vordergrund gefahren: Phase 0 fuer `bauprodukte` abgeschlossen (37/37 Sektionen, 214 Dateien inventarisiert), erster Artikel `wiki/dachbegruenung-systeme.md` destilliert (Materialrecherche Christian Kerez Zuerich, Stand 2002, unverifiziert), eine Fehltriage entdeckt und korrigiert ("Leuchtenauswahl Nasszellen.pdf" ist ein Katalog-Scrapbook, keine Feuchtraum-Klassifizierung). INDEX/QUESTIONS/CHANGELOG nachgefuehrt, Report `wissen/bauprodukte/outputs/2026-07-28_destillat-lauf1.md`. Kein Versand/Publikation/Buchung. Zyklus beendet (~3.5 von 5 USD).
- 2026-07-28 05:30 (Nachtschicht Mac Mini): remote-tasks/sync-tasks leer, Synobsis gesaettigt/deaktiviert, alle Trainings-KBs erst gestern/heute trainiert (kein faelliges Delta). Stattdessen die im 04:30-Lauf offen gebliebene Kurator-Stufe (Phase 3) fuer die vier zwischenzeitlich per Fliessarbeit destillierten `bauprodukte`-Artikel (PU-Beschichtung, ERCO Ratgeber Teil 1, BKP-261-Aufzuege, Chromstahltreppe) nachgeholt: zwei Artikel (PU-Beschichtung, Chromstahltreppe) vollstaendig gegen ihre `.doc`-Rohquellen gegengelesen, alle Zahlen wortgetreu bestaetigt, keine unbelegte Aussage gefunden. Cross-KB-Fund verwoben: `wissen/normen` haelt in [[sia-500-2009]] Ziff. 3.7.3 die massgebliche Schweizer Aufzugs-Kabinenmindestmasse (SN EN 81-70) bereits verifiziert vor — gerechneter Abgleich zeigt, dass die AS-Winner-Kabine (1250x1460mm) die SIA-500-Standardmasse (1.10x1.40m) rechnerisch uebertrifft, obwohl der Hersteller sie nur als "bedingt rollstuhlgaengig" fuehrt (Lehre: Kabinenmass immer gegen die Norm-Tabelle rechnen, nicht die Herstellerkategorie uebernehmen). Backlinks beidseitig gesetzt. Keine Status-Hebung (alle vier bleiben `emerging`, keine Zweitquelle). Report `wissen/bauprodukte/outputs/2026-07-28_destillat-lauf2-kurator.md`, CHANGELOG nachgefuehrt. Kein Versand/Publikation/Buchung. Zyklus beendet (~2.9 von 5 USD).
- 2026-07-28 06:30 (Nachtschicht Mac Mini): remote-tasks/sync-tasks leer, Synobsis gesaettigt/deaktiviert, alle Trainings-KBs bereits heute trainiert. Naechste P1-triagierte Inventarposition destilliert: Gruppe `273 Schreinerarbeiten/Zusammenzieher/` (3 zusammengehoerige OPO-Oeschger-Katalogausdrucke vom 07.02.2011) zu einem neuen Artikel `wiki/arbeitsplatten-verbinder-schreinerei.md` (status emerging) — Systemvergleich dreier Arbeitsplatten-Verbinder (Kunststoff-Exzenter, HETTICH AVB 5, Zip Bold Mini) nach Werkstoff/Bohr-Ø/Montagewerkzeug/Preis. Alle Zahlen gegen die drei Quell-PDFs zurueckgeprueft, keine Abweichung. BKP 273.3 gegen die CRB-Liste verifiziert. INDEX/QUESTIONS/CHANGELOG/Inventar nachgefuehrt. Report `wissen/bauprodukte/outputs/2026-07-28_destillat-lauf3-273-schreinerarbeiten.md`. Kein Versand/Publikation/Buchung. Zyklus beendet (~2.2 von 5 USD).
- 2026-07-28 23:30 (Nachtschicht Mac Mini): remote-tasks/sync-tasks leer. Synobsis gesaettigt/deaktiviert; grobkosten UND immobilienbewertung haben in ihren eigenen Registern explizit um Lauf-Pause gebeten (wiederholte Delta-Null-Serien, Blocker nur durch Raphael oder neues Material loesbar) — beide bewusst nicht als Trainingslauf gewaehlt (Rule 260727 Leerlauf-Waechter). Stattdessen eine konkret benannte, kleine offene Luecke aus `immobilienbewertung` geschlossen: **T-Eidgenossen-Rendite** (seit Run 51 offen, nur undatierte Web-Snapshots verfuegbar) — SNB-Quartalsheft 2/2026 (publ. 24.06.2026) per WebSearch+WebFetch+pdftotext gefunden und verifiziert: 10-j. Eidgenossen-Rendite 0.39 % Mitte Juni 2026 (0.34 % Mitte Maerz). `wiki/investorenmarkt-makro.md` + `wiki/wissensluecken.md` + `training/curriculum.md` + CHANGELOG nachgefuehrt, Report `wissen/immobilienbewertung/outputs/2026-07-28_training-run52.md`. Kein Versand/Publikation/Buchung, kein Fan-out (1 WebSearch + 1 WebFetch). Zyklus beendet (~4.3 von 5 USD).
- 2026-07-29 05:30 (Nachtschicht Mac Mini): remote-tasks/sync-tasks leer. Synobsis bereits am 28.07. korrekt deaktiviert (Registry-Luecke geschlossen, 853/853 gesaettigt) — nichts zu tun. Trainings-KBs baurecht/energie/normen/planungsgrundlagen/koordination/bauprodukte bereits heute (29.07.) vom Dauerschicht-Loop bedient; grobkosten/immobilienbewertung weiterhin bewusst pausiert; spec seit 11 Verifikationslaeufen ohne neue Spec trocken. Daher Prioritaet 5 gezogen: letzte offene needs-verification-Luecke aus `wissen/firmengruendung-ch/wiki/QUESTIONS.md` geschlossen — revidiertes Aktienrecht 2023 (Kapitalband Art. 653s-653v OR, Aktienkapital in Fremdwaehrung Art. 621 OR), direkt am Fedlex-Volltext (Filestore-Methode, Stand 01.01.2026) verifiziert, kein Sekundaerquellen-Fallback noetig. Neuer Artikel `wiki/kapitalband-und-fremdwaehrung.md`, needs-verification-Vermerke in `wiki/statuten-ag.md` + `wiki/kapital-und-liberierung.md` entfernt und verlinkt, INDEX/QUESTIONS/CHANGELOG nachgefuehrt, Report `wissen/firmengruendung-ch/outputs/2026-07-29_kapitalband-fremdwaehrung.md`. Verbleibende Luecke der KB nur noch Gruendungskosten-Richtwerte (aktuelle Offerten, braucht echte Marktrecherche). Kein Versand/Publikation/Buchung, kein Fan-out. Zyklus beendet (~2.9 von 5 USD).
- 2026-07-29 13:30 (Nachtschicht Mac Mini, Versuchs-Slot): remote-tasks/sync-tasks leer. Prioritaet 4 (Trainingslektion) war 33 Min. zuvor (12:57) bereits vom Dauerschicht-Loop bedient (Statuskoepfe wettbewerbs-dna/spec/immobilienbewertung); Prioritaet 3 (Fristen-Radar) bereits um 08:39 vom Hub-Chef-Lauf umfassend mit Befund + Mail-Entwurf abgedeckt, kein neues Signal seither, daher keine Doppelrecherche. Stattdessen Prioritaet 5 gezogen: die seit 28.07. offene Bootstrap-Pendenz von `wissen/projekt-lessons` einen Fall weitergefuehrt — neuer Artikel `wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md` (Fokus-Bereich Koordination & Kommunikation, bisher leer): UGZ-Zustaendigkeit lag wegen Einrichtungsgroesse nicht bei R. Zuercher sondern bei Hansen/Zala, AFB-Kreisarchitektur wechselte von Hottinger zu Furrer (Team 5) — beide Wechsel erst reaktiv sichtbar geworden. Direkt aus dem bereits verifizierten Logbuch-Journal (24./25./27.07.) kompiliert, kein Raw-Material/Recherche noetig. INDEX (3→4 Artikel) und QUESTIONS (naechster Kandidat: Kosten-&-Termine-Fall aus der RE-00087-Mahnkaskade) nachgefuehrt, CHANGELOG-Eintrag gesetzt. Kein Versand/Publikation/Buchung, kein Fan-out. Zyklus beendet (~2.1 von 5 USD).
