# CHANGELOG — Wissensbasis Projekt-Lessons

Jede Änderung des Bibliothekars, datiert (JJJJ-MM-TT), **neueste zuoberst**.
Im Zweifel, was geändert wurde: dieses CHANGELOG ist die Wahrheit.

## 2026-08-17 (Mac Mini Nachtschicht 05:30) — Korpus `buero-projekte`: P1-Position destilliert, Phase-2-Rest der Triage von 02:32 offen

Der 02:30-Lauf hatte Phase 1 (Triage, Haiku) für die nächsten 40 Positionen abgeschlossen
(39 klassifiziert: P1: 1, P2: 16, P3: 3, übersprungen: 19; Protokoll
`skills/wissens-destillat/training/buero-projekte-lauf-20260817-0232.md`) und danach Phase 2
(Destillation) im Hintergrund gestartet — der Hintergrundlauf ist ohne Ergebnis stehen
geblieben (Protokolldatei seit 02:39 unverändert, keine Fertigstellungsmeldung). Dieser Lauf
hat die einzige P1-Position selbst gelesen und destilliert:

**[[nerves-2015-kv-nebengewerke-unterschaetzt]]** (Quelle: `00_Allgemein/Nerves_Binz_DatenMisc/nerves_baukosten_v2.pdf`,
Baukostenübersicht ARCHmark Hofstetter, Referenzfall Nerves Büroumbau 2015) — Holzbau- und
Küchen-Gewerk trafen die grobe KV fast exakt (+3,3 % / −0,3 %), drei technische Nebengewerke
(Elektro, Sanitär, Gipser) lagen 76 bis 322 % über der KV, während die Gesamtsumme nur moderat
(+8,8 %) driftete und die Einzelabweichungen dadurch verdeckte. Status `emerging`.
`training/buero-projekte-inventar.md` Zeile auf `[x]` gesetzt, `wiki/INDEX.md` nachgeführt
(6 Artikel).

Die 16 P2-/P3-Positionen aus derselben Triage bleiben `[t]` offen für einen Folgelauf —
Budget-Disziplin, ein Artikel pro Nachtschicht-Slot bei diesem Korpus-Anlauf.

## 2026-08-16 (Mac Mini Nachtschicht 23:30) — Korpus `buero-projekte` Inventar Phase 0 abgeschlossen

Fortsetzung des 05:31-Laufs (Spec stand, Inventar war offen). `bash
skills/wissens-destillat/tools/inventar.sh buero-projekte` über alle 21 Sektionen
(22 Projektordner minus `180716 Schilder.pln`, lose Datei ohne Verzeichnis) durchlaufen
lassen: `training/buero-projekte-sektionen.md` (21/21) und `training/buero-projekte-inventar.md`
(812 Zeilen: 807 `[ ]` offen, 5 `[-]` pauschal für Projekte mit exakt benannten
`01_Plaene`/`11_Bildablage`-Ordnern, 1 `[-]` für den Sonderfall `180716 Schilder.pln`)
neu angelegt. `korpus.conf` um die Ausschluss-Teilstrings `/01_Plaene/,/11_Bildablage/`
für `buero-projekte` ergänzt (spec-konform: diese Klassen nicht dateiweise auflisten) —
erwies sich als grösstenteils redundant zur ohnehin bestehenden Extensions-Whitelist
(`pdf,docx,doc,md,txt` filtert Bild-/CAD-Ordner unabhängig vom Namen), griff aber nur bei
4 der 21 Projekte, weil die übrigen 17 völlig andere Ordnernamen führen (`Fotos`, `CAD`,
`Skizzen`, `Plaene` ohne Präfix u.a.) — Befund und Konsequenz für Phase 1 (keine pauschale
Ordnerklassen-Triage möglich, Sektion/Datei bleibt die Einheit) in
`skills/wissens-destillat/specs/buero-projekte-spec.md` unter «Plan» nachgetragen.
`KORPUS-QUEUE.md` Standspalte aktualisiert. Nächster Schritt: Triage Phase 1 (Haiku) je
Sektion — grösste ungeprüfte Sektionen `1318_Lorraine_Kueche` (262 Dateien),
`1527_EH Europe GmbH` (229), `1012_Ardez` (82), `1011_Lorrainestr_4` (71), `00_Allgemein`
(58). Kein Destillat-Lauf (Phase 2) in diesem Zyklus — Budget-Disziplin, Phase 0 ist ein
eigener abgeschlossener Schritt.

## 2026-08-16 (Mac Mini Nachtschicht 05:31) — Korpus-Spec `buero-projekte` geschrieben, Destillat-Lauf startet als Nächstes

`skills/wissens-destillat/specs/buero-projekte-spec.md` angelegt (Skill `wissens-destillat`
verlangt: kein Destillat ohne Spec, erster Lauf schreibt sie und endet). Anlass: Korpus 1
(`bauprodukte`) wurde am 15.08.2026 als `erledigt` markiert (Inventar 214/214, 0 offen),
`buero-projekte` (Quelle `/Volumes/daten/04_Buero/02_Projekte`, 22 Projektordner, ca. 17 GB)
ist gemäss `KORPUS-QUEUE.md` nachgerückt. Ziel, Abgrenzung und Artikelschnitt direkt aus der
bereits bestehenden `CLAUDE.md` dieser KB und dem Goldstandard-Artikel
`kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087.md` abgeleitet (kein Widerspruch,
keine Neuerfindung). Abgrenzung priorisiert die vier ergiebigen Ordnerklassen je Projekt
(`12_Schriftverkehr`, `02_Berichte`, `04_Kosten`, `13_Recherche`/`15_Referenzen`) gegenüber
`01_Plaene`/`11_Bildablage` (CAD/Bild ohne Fliesstext, pauschal `[-]`); zwei Sonderfälle
vermerkt (`1115_Kostenberechnung` ist ein Einzeldokument kein Projekt, `180716 Schilder.pln`
eine lose CAD-Datei ohne erkennbaren Projektbezug). **Pflicht-Zusatzauftrag aus der Spec
übernommen:** aus diesem Korpus zusätzlich die Bürohaltung zu bevorzugten Systemen ableiten,
Ergebnis als Entwurf `wissen/bauprodukte/wiki/bevorzugte-systeme-jans.md`, Status zwingend
`emerging`, Raphael zur Bestätigung vorlegen (Entscheid Raphael 31.07.2026). Kein
Destillat-Lauf (Phasen 0-2) in diesem Zyklus — das ist gemäss SKILL.md der nächste Schritt
eines Folgelaufs; Budget bewusst nicht auf einen unvollständigen Pipeline-Start verwendet
(Nachtschicht-Budgetdisziplin).

## 2026-08-14 — Rücklauf aus 2619 KISPI PPTS: Türfachplanung, Vorabzug-Prüfmethode

Neuer Report `outputs/2026-08-14_tuerfachplanung-vorabzug-pruefmethode.md` (interaktive
Session, Rule `wissens-ruecklauf`). Vier belegte Lehren aus der Architektur-Prüfung des
TeKoSi-Vorabzugs (LOS 231.10): Tür-ID-Duplikate am PDF-Textlayer prüfen (drei Duplikate
gefunden, keines in der Bauherren-Rückmeldung); Türbuch-Vorabzug ohne Türmatrix ist nicht
freigabefähig; Grundlagenstand des Fachplaners vor Detailkorrekturen verifizieren;
ID-Systematik mit dem FM-System der Bauherrschaft abgleichen.

## 2026-08-08 — Rücklauf aus 2619 KISPI PPTS: Küchenlüftung und Nutzungseinstufung

Neuer Report `outputs/2026-08-08_kuechenlueftung-planervorbehalt-und-nutzungseinstufung.md`
(Hub-Chef-Lauf, Rule `wissens-ruecklauf`). Vier verallgemeinerbare Lehren, alle am Original belegt:
die Abluftangabe in der Geräteliste des Gastroplaners trägt einen ausdrücklichen Planervorbehalt
und ist keine Berechnung; die Nutzungseinstufung (gewerbliche Küche gegen Wohnraum-/Teeküche)
entscheidet über Volumenstrom und Kostenspanne, wird aber an der Bestückung gemessen; die
Einstufung steht meist bereits in der Baueingabe und ist dort zu holen statt neu zu behaupten;
Pflichtinhalt eines Betriebskonzepts Küchenbetrieb, dessen Engpass die beim Nutzer zu erhebenden
Betriebsdaten sind, nicht die Technik. Kein Wiki-Artikel angelegt (Promotion erst nach dem
zweiten Fall, KB-Regel).

## 2026-08-05 (Nachtschicht Mac Mini) — Truninger-DS3 als dritte Quelle geprüft: Fokus «Bauen im Betrieb» weiterhin ohne Kandidat

- Kein neuer Fall, kein neuer Wiki-Artikel. Gemäss Empfehlung vom 04.08. den Projektraum auf
  ds3.data-share.ch nach Etappierung/Baulogistik-Material durchsucht (`connectors/
  truninger-ds3.mjs`, read-only): Volltextsuche «Etappierung» liefert genau einen Treffer
  (Etappierungszonen-Planwerk, keine Story), `01.01.14 Baulogistik` und `01.01.04
  Sondersitzungen` ohne Betriebs-/Etappenthema. Nicht geöffnet aus Budgetgründen: `01.01.24
  Baujournale Bauleitung` (Nord/Süd, Jahresordner 2018-2024) — voraussichtlich der ergiebigste
  verbleibende Ort, aber zu gross für diesen geteilten Nachtschicht-Zyklus.
- Damit sind alle drei in `training/PROGRAMM.md` benannten Quellen (Projektordner, Mail, DS3)
  für die naheliegenden Pfade ohne Treffer. Empfehlung in `wiki/QUESTIONS.md` präzisiert: ein
  künftiger Lauf sollte die Baujournale als dedizierten, vollbudgetierten Einzellauf angehen
  (jahrweise, gezielt nach Nachtarbeit/Lärm/Etappenwechsel), statt weiter in die Breite zu
  suchen. Kein Versand/Publikation/Buchung. Budget dieses Blocks ca. 1.3 USD.

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Thalwil 2414: Zeiger ins Baurecht gesetzt

- **`wiki/sbb-naeherbaurecht-thalwil-2414-vordach.md`** — der Artikel zum laufenden Fall 2414
  Thalwil trug keinen Link ins Baurecht; die dortige Arbeitsanweisung fuer Thalwiler Eingaben
  erreichte ihn nicht. Neu: Frontmatter `links:` (war leer) und ein kurzer Abschnitt «Querbezug»
  auf `wissen/baurecht/wiki/negative-vorwirkung-und-bzo-revision.md` Ziff. 6 — der Fall laeuft in
  einer Gemeinde mit haengiger BZO-Revision.
- ⚠ **Bewusst nur ein Zeiger, kein Rechtsinhalt.** Diese KB fuehrt keine generischen Kennwerte und
  keine Rechtsaussagen; der Stand der Vorwirkung aendert sich mit Genehmigung und Inkrafttreten
  und wird deshalb ausdruecklich **nicht** hier wiedergegeben, sondern nur verlinkt. Fuehrend ist
  `baurecht`.

## 2026-08-04 (Nachtschicht Mac Mini) — Fokus-Bereich «Bauen im Betrieb»: erweiterter Nullbefund

- Kein neuer Fall. Nach dem Logbuch-Nullbefund vom 03.08. diesmal direkt den KISPI-
  Projektordner (OneDrive) und Mail durchsucht (Etappierung/Provisorium/Nachtarbeit/Laerm) —
  nur technische Dokumentation ohne Entscheid-Story gefunden (Etappierungszonen-Sprinkler-
  plaene, Bauprovisorium-Baustromprotokolle). Naeheste Sachnaehe ist der generische,
  bereits bestehende Artikel `auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md`
  (Ausserbetriebsetzungs-Pflicht Brandmelde-/Sprinkleranlagen) — kein eigenstaendiger
  KISPI-Lesson-Kandidat, daher nicht uebernommen. Befund + Empfehlung (Truninger-DS3 als
  naechste Quelle) in `wiki/QUESTIONS.md` dokumentiert, damit kuenftige Laeufe den bereits
  durchsuchten Dateibaum nicht wiederholen.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F1 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Ein B-Befund: toter Backlink `[[[sbb-naeherbaurecht-thalwil-2414-vordach]]` (Klammer-Tippfehler) in `wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md` — derselbe Fehlertyp wie in auflagebereinigung. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Nachtschicht Mac Mini, Versuchs-Slot 13:30) — RE-00087 nachgeführt: Duplikat-Flag als zweiter Blocker, offene QUESTIONS-Frage teilbeantwortet

- Priorität 3 (Fristen-Radar) und Priorität 4 (Trainings-KB) geprüft: fristen.md zeigt 58
  `offen`-Einträge, alle innert der letzten Woche aktiv bearbeitet (nichts Überfälliges/
  Vergessenes über die bestehende Cockpit-Praxis 31.07. hinaus) — kein Entwurf nötig.
  `projekt-lessons` ist die am längsten unberührte freie Trainings-KB (Wiki zuletzt 31.07.,
  vor `bauprodukte`/`grobkosten` 01.08.). Gesuchter Kandidat für den fehlenden Fokus-Bereich
  «Bauen im Betrieb» im Logbuch-Journal nicht gefunden (Nullbefund, siehe `wiki/QUESTIONS.md`
  — bleibt offen für einen Lauf mit Zugriff auf die gesperrte Projektordner-Pipeline).
- Stattdessen frisches, hochrelevantes Material zur bestehenden Lesson
  [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] entdeckt: ein Mail-Thread vom
  03.08.2026 (rj@raphaeljans.ch ↔ Michael Spörri, KISPI HLKKS) zeigt, dass RE-00087 zwischen-
  zeitlich bereits Mahnstufe 3 erreicht hatte (09.07., vom bisherigen KB-Stand nicht erfasst)
  und dass der Direktkontakt zu einem benannten technischen Ansprechpartner zwei der drei
  offenen Rechnungen (RE-00098/99) binnen einer Stunde löste. RE-00087 selbst zeigt einen
  neuen, konkreteren Blocker: KISPIs Buchhaltungsprogramm führt sie als Duplikat einer
  Rechnung «BC304304495»; Auflösung steht aus (Cornelia Schäfer). Raphael hat parallel eine
  Zahlungsnachforschung über die UBS eröffnet.
- Neues Destillat `raw/260803-kispi-re00087-zahlungsnachforschung.md` (Stufe A, 4 belegte
  Aussagen, Spannung zur bestehenden Auftragsbestätigungs-These offen benannt statt
  aufgelöst). Bestehender Artikel um Abschnitt «Update 03.08.2026» ergänzt (status bleibt
  `emerging` — neue Ursache ist noch nicht verifiziert), `sources` im Frontmatter ergänzt.
  `wiki/QUESTIONS.md` nachgeführt: alte Frage teilbeantwortet, neue offene Frage (Duplikat
  BC304304495 real oder Fehleintrag?) gesetzt — bexio-Gegenprüfung auf dieser Station mangels
  `~/.bexio.env` nicht möglich.
- Quelle bewusst der Live-Mail-Thread (verifizierbare Primärquelle über `mdfind`/OneDrive),
  nicht die gesperrte KISPI-Projektordner-Pipeline (`training/PROGRAMM.md`, Abschnitt
  «Freigabe» — weiterhin unangetastet). OneDrive-Pfade mit `–`-Sonderzeichen über Symlink
  `/tmp/onedrive-jans` gelesen (Rule `osascript-apple-apps.md`); `.eml`-Dateien liessen sich
  wegen Unicode-Normalisierung (NFC/NFD) nur über `os.listdir`-Glob öffnen, nicht über
  getippte Pfade — für künftige Läufe gegen dieselbe OneDrive-Struktur relevant.
  Kein Versand/Publikation/Buchung. Zyklus ~3.9 von 5 USD, via `nas-commit-now.sh` committet.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D1 · E0 · F11 · G0

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Dreifach-Klammer-Tippfehler in `kispi-behoerden-zustaendigkeitswechsel-1171-26. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — Erst-Verlinkung zu bauprodukte: der KISPI-Fall loest eine blockierte Frage

- **[erst-pruefung] Das Paar `bauprodukte ↔ projekt-lessons` stand seit Run 21 mit der Notiz
  «Abgrenzung ungeklaert» auf der Rotationsliste. Die Notiz war falsch:** die Abgrenzung ist
  dreifach gesetzt (zwei Matrix-Zeilen plus `bauprodukte/CLAUDE.md`). Beide gemeldeten
  Doppelspur-Befunde wurden in der Verifikation **widerlegt** — diese KB fuehrt kein unzulaessiges
  generisches Produktwissen; der KISPI-Fall ist eine belegte Einzelfall-Beweiskette, und genau das
  ist ihre Rolle.
- **[querverlinkung] Der echte Mangel war teurer als die vermutete Doppelspur.** Auf Artikelebene
  existierte in **keiner Richtung** eine Verbindung zu `bauprodukte`. Das ist deshalb bitter, weil
  jene KB ihren Artikel zu Trockenbau/Bekleidungen (QUESTIONS Punkt 9) **mangels Quellmaterial
  blockiert** hat — die Korpus-Ordner `214 Montagebau in Holz` und `271 Gipserarbeiten` enthalten
  null Dateien —, waehrend `kispi-lbw-rohdichte-800.md` den einzigen belegten Praxisfall des Hubs
  zu genau diesem Gegenstand fuehrt. Die blockierte KB und ihre Loesung standen unverbunden
  nebeneinander.
- **Gesetzt:** neuer Abschnitt «Abnehmer in anderen KBs» in `wiki/kispi-lbw-rohdichte-800.md` mit
  der Rollenabgrenzung (Einzelfall hier · Norm-Kennwerte `normen` · generisches Produkt-/Systemwissen
  `bauprodukte`); Gegenrichtung als Teil-Antwort in `bauprodukte/wiki/QUESTIONS.md` Punkt 9. Das
  Frontmatter-Feld `links` blieb **unveraendert** — es zeigt nach Schema auf Artikel, nicht auf
  QUESTIONS-Listen; der Eintrag folgt, sobald der `bauprodukte`-Artikel existiert.

## 2026-07-31 (Nachtschicht-Zyklus Mac Mini) — Fuenfter Lesson-Artikel: fehlende Auftragsbestaetigung als verdeckte Mahnkaskaden-Ursache (KISPI RE-00087)
- Neues Destillat `raw/260731-kispi-fehlende-auftragsbestaetigung-mahnkaskade.md` (Stufe A,
  5 belegte Aussagen aus `logbuch/LOGBUCH.md` + `logbuch/fristen.md`, Zeitraum 16.06.-31.07.2026).
  Quelle bewusst das bereits verifizierte Logbuch-Journal, NICHT die KISPI-Projektordner-Pipeline
  (die haengt weiterhin auf Freigabe Raphael, siehe `training/PROGRAMM.md` Abschnitt «Freigabe»).
- Neuer Artikel [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] (Fokus-Bereich
  Kosten & Termine, bisher leer, damit 4 von 5 Fokus-Bereichen belegt): RE-00087 (KISPI,
  CHF 15'000, faellig 16.04.) stand ueber drei Monate auf Mahnstufe 2, ohne dass der
  Mahnwesen-Automatismus je die Ursache diagnostizierte (nur Tage-Zaehler + Whitelist-Grenze
  A1); erst Raphaels eigene gebuendelte Mail am 21.07. benannte die fehlende
  Auftragsbestaetigung als Kern. Zwei unabhaengige Nebenbelege im selben Mandat (Gruner AG:
  kein Vertrag mit JANS; TeKoSi: Auftragsbestaetigung Tuerfachplanung offen) stuetzen
  `status: emerging`. Lesson: bei Verzug ueber eine Mahnstufe hinaus die Auftragsgrundlage
  aktiv pruefen statt nur Tage zu zaehlen — als Ampel-Zusatzfeld im Fristen-Register, keine
  neue autonome Aktion.
- Stufe C (Gegenpruefung, selbst durchgefuehrt): alle 5 Zitate gegen `LOGBUCH.md`/`fristen.md`
  wortgetreu verifiziert (Zeilen 1226, 1491, 1833, 1949/1835/1684/1674/1535, 2871; fristen.md:14+26)
  — keine Widerlegung, keine Korrektur noetig.
- `wiki/INDEX.md` (4→5 Artikel, Statistik-Datum), `wiki/QUESTIONS.md` (Bootstrap-Fortschritt
  5/5, offene Nachpruef-Frage: wurde die Auftragsbestaetigung inzwischen nachgereicht),
  `training/PROGRAMM.md` (Tracker-Zeile Lauf 2) nachgefuehrt. Kein Fan-out, kein Versand,
  kein Eingriff in die gesperrte KISPI-Projektordner-Pipeline. Budget ca. 2.4 von 5 USD.

## 2026-07-29 (Nachlauf Run 20, Freigabe Raphael) — Titel und H1 geschaerft
- **[Entscheid C1]** `kispi-behoerden-zustaendigkeitswechsel-1171-26`: Titel neu «KISPI 1171/26:
  Zustaendigkeiten bei Behoerden aendern sich **ohne proaktive Mitteilung** — am zuletzt bekannten
  Kontakt festhalten kostet Zeit» (vorher «unangekuendigt»), H1 neu «… wechselt mitten im Verfahren,
  **und man erfaehrt es nur auf Nachfrage**». Grund: «unangekuendigt» ist fuer die Ursachenebene
  richtig, fuer die AfB aber verkuerzt — dort kam auf Nachfrage doch eine Amtsmitteilung. Der Titel
  ist zugleich der Ort, den ein Folgelauf zuerst liest.
- **Dateiname/Slug unveraendert**, damit die Verweise aus `sbb-naeherbaurecht-thalwil-2414-vordach`
  und aus `auflagebereinigung/wiki/aemter-stadt-zuerich.md` nicht brechen.


## 2026-07-29 (Wissens-Chef Run 20, Cross-KB) — Chronologie des neuen Lesson-Artikels korrigiert, Anschluss an die fuehrenden KBs gesetzt
- **[korrektur, materiell, mit belegter Gegenquelle] `kispi-behoerden-zustaendigkeitswechsel-1171-26`
  schrieb, der AfB-Wechsel sei erst am 27.07. sichtbar geworden und «nicht durch eine Mitteilung des
  Amts».** Belegt ist das Gegenteil aus dem **twin-Korpus**: am **24.07.** adressierte RJ «Guten Tag
  Herr Furrer (AfB)», eingefuehrt als neue Ansprechperson fuer Team 5 durch Hottinger (AfB) selbst
  (`twin/wiki/beziehungsregister.md:386-395`). Datum und Halbsatz korrigiert, zweite Quelle in die
  Frontmatter-`sources` aufgenommen.
- **[nicht entschaerft, bewusst]** Die verallgemeinernde Zeile «Beides geschieht ohne proaktive
  Mitteilung — man erfaehrt es erst reaktiv» bleibt **unangetastet**. Der Verifikations-Agent hat
  belegt, dass sie auch fuer die AfB korrekt ist: die Information kam nur, weil RJ bei der inzwischen
  falschen Stelle die Kontaktstellenliste nachfragte. Das ist die tragende Lesson und haette durch
  eine Entschaerfung Schaden genommen.
- **[verlinkung, materiell] Die neuen Amts-/Kontaktfakten hatten die fuehrende KB
  `auflagebereinigung` nicht erreicht** — dort ist die Kontaktstellen-Luecke seit dem **04.06.** offen
  ausgewiesen, und beide betroffenen Adressaten (AfB, UGZ) stehen ohne Kenntnis des Wechsels.
  Bidirektional verlinkt, mit der Praezisierung, dass die Namen dort nur als **datierter, gebiets-/
  fallbezogener Stand** erscheinen — sonst tauscht die KB eine veraltete Personenangabe gegen die
  naechste. Ausdruecklich **nicht** geschrieben, A. Hottinger sei «nicht mehr zustaendig»: der Wechsel
  ist gebietsbezogen, und die Rule `anrede-kontakte` fuehrt sie weiter als Kreisarchitektin AfB.
- **[begriffsanschluss] Fristbegriff harmonisiert, nicht ersetzt:** «vor Baufreigabe» ist nicht falsch,
  nur unnormiert — normseitig eine auf den **Baubeginn** gestellte Nebenbestimmung nach **§ 326 lit. a
  PBG**, wobei die schriftliche Baufreigabe diesen Zustand bestaetigt. Ein blosses Ersetzen haette die
  operative Tatsache geloescht, dass das AfB real eine Baufreigabe verlangt. **Derselbe Anschluss im
  Schwester-Artikel `sbb-naeherbaurecht-thalwil-2414-vordach` nachgezogen**, damit die KB im
  Fristbegriff nicht in sich auseinanderlaeuft. § 318 PBG wurde ausdruecklich **nicht** als
  Rechtsgrundlage der Gebiets-/Teamzuteilung ausgegeben — er regelt, welches Organ Baubehoerde ist.
- **[widerlegt]** Zwei weitere Vorwuerfe hielten der Gegenpruefung nicht stand: ein
  UGZ-Zeitstempel-Widerspruch und die Behauptung, die generische Prozessregel entstehe hier statt im
  fuehrenden Prozess-Artikel.
- Geaendert: `wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md`,
  `wiki/sbb-naeherbaurecht-thalwil-2414-vordach.md`.


## 2026-07-29 (interaktive Session, nach zwei gescheiterten Remote-Dispatch-Versuchen) — Ingest-Programm Lauf 1: Wurzelpfad verifiziert, erstes Destillat
- **Wurzelpfad 2619 KISPI korrigiert:** der in `training/PROGRAMM.md` genannte NAS-Kandidat
  `/Volumes/daten/04_Buero/02_Projekte/2619_KINDERSPITAL/` existiert nicht (dort liegt ein
  anderes, älteres Archiv, Projektnummern 10xx–16xx). Tatsächlicher Wurzelpfad ist SharePoint/
  OneDrive: `.../OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/`
  (Ebene «Projekt» gemäss Rule `projekt-ablage-stand`, nicht NAS). Im PROGRAMM nachgetragen.
- **`training/quellen-inventar.md` neu angelegt** (36 Zeilen): Sichtung von
  `02_Korrespondenz` (Schwerpunkt Gruners GT Planer/Brandschutzexperte Ziegel, Behörden),
  eines LOS aus `03_BKP` (Röthlisberger), Ausschnitten aus `09_Dokumente` sowie der
  Truninger-DS3-Sammlungsstruktur (Tiefe 1, Login ohne Rückfrage möglich). Zwei Zeilen als
  `[-]` markiert (bereits verarbeitetes bzw. nicht einschlägiges Material), der Rest offen für
  Folgeläufe. Mail (rj@/kispi@) in diesem Lauf nicht gesichtet — offen vermerkt.
- **Erstes Destillat (Stufe A):** `raw/260729-kispi-rueckweisung-installationsplan-lueftung.md`
  — QS-Brandschutzexperte weist den Lüftungs-Installationsplan des HLK-Fachplaners zurück
  (beide Gruner AG, unterschiedliche Teams), mit wörtlichen Zitaten aus Mailthread und der
  Stellungnahme Brandschutz vom 23.07.2026 (S. 9). `raw/_INGESTED.md` nachgeführt.
- **Bewusst NICHT ausgeführt:** Stufe B (Kompilat) und Stufe C (adversarische Verifikation) —
  Lauf 1 endet regelkonform nach dem einen Destillat, das Raphael von Hand gegen das Original
  liest (Rule `wissens-bibliothekar`, PROGRAMM.md Abschnitt «Freigabe»). Tracker in
  `training/PROGRAMM.md` (Zeile Lauf 1) nachgeführt, inkl. Hinweis auf die zwei gescheiterten
  Remote-Dispatch-Vorversuche.

## 2026-07-29 (Nachtschicht-Zyklus Mac Mini, 13:30-Versuchsslot) — Vierter Lesson-Artikel: Behörden-Zuständigkeitswechsel KISPI 1171/26
- Neuer Artikel [[kispi-behoerden-zustaendigkeitswechsel-1171-26]] (Fokus-Bereich
  Koordination & Kommunikation, bisher leer): UGZ-Zuständigkeit lag wegen der Grösse der
  Einrichtung nicht bei R. Zuercher, sondern bei Hr. Hansen/Stellvertreter Shyam Zala;
  AFB-Kreisarchitektur wechselte von A. Hottinger zu L. Furrer (Team 5, Gebiet Weinegg) —
  beide Wechsel wurden erst reaktiv sichtbar, nicht durch Mitteilung des Amts. Quelle:
  Logbuch-Journal 24./25./27.07.2026 (`logbuch/fristen.md`). INDEX.md (Statistik 3→4
  Artikel) und QUESTIONS.md (Bootstrap-Fortschritt, verbleibender Kandidat «Kosten &
  Termine»: fehlende Auftragsbestätigung KISPI↔JANS als Ursache der RE-00087-Mahnkaskade)
  nachgeführt. Kein Raw-Material nötig — direkt aus dem bereits verifizierten
  Logbuch-Journal kompiliert.

## 2026-07-28 — Wissens-Chef Run 19 (Cross-KB): BKP-Feld praezisiert, Haupt-Vorwurf WIDERLEGT
- **[korrektur] `wiki/roethlisberger-geraetepreis-pruefung-273-35.md`, Frontmatter `bkp`.** Das Feld
  trug «273.35» — einen Code, den die **BKP-2017-Liste nicht kennt** (dort existiert nur 273.3
  «Allgemeine Schreinerarbeiten»). Kuechen-/Gastroeinrichtungen sind **BKP 258 Kuecheneinrichtungen**;
  «273.35» ist die **projektinterne Los-Nummer** KISPI. Feld entsprechend praezisiert (Rule
  `bkp-2017-referenz`). Titel und Fliesstext bleiben unveraendert — dort ist «Los 273.35» korrekt.
- **[WIDERLEGT, mit deutlichem Abstand]** Der Vorwurf, `sbb-naeherbaurecht-thalwil-2414-vordach.md`
  erhebe den Einzelfall zur ausnahmslosen Regel und uebergehe die von `baurecht` gefuehrte
  Unterscheidung projektbezogenes/generelles Naeherbaurecht, kippt an vier unabhaengigen Gruenden:
  die Lesson erhebt **gar keine Rechtsbehauptung**, sie dokumentiert einen belegten Projektverlauf
  (03.-20.07.2026), und die zitierte Gegenstelle sagt das Behauptete nicht. **Der Vorschlag haette
  Schaden angerichtet:** er wollte ein «Vorsprungsprivileg § 260 Abs. 3 PBG» in die Lesson schreiben,
  das im geltenden Hauptteil des PBG einen anderen Gegenstand hat. Artikel bleibt unveraendert.
- Die beim Gegenlesen gefundenen zwei echten Maengel liegen in `baurecht`, nicht hier — dort gemeldet.
- Bericht: `koordination/outputs/2026-07-28_wissens-chef-run19.md`.

Format: `- [aktion] Beschreibung (Artikel/Datei)`

## 2026-07-28 — Bootstrap fortgesetzt: zwei neue Lesson-Artikel (Nachtschicht Mac Mini)
- **[neu] `wiki/roethlisberger-geraetepreis-pruefung-273-35.md`** (status established).
  KISPI Los 273.35 Therapieküche: Geräte-Nachtrag verdoppelt die Offertsumme
  (36'461 → 82'378 CHF exkl. MwSt); Lesson: Mehrumfang und Preisaufschlag pro Gerät
  getrennt gegen echte Marktpreise (mindestens zwei Quellen) prüfen, nie den ganzen
  Sprung pauschal als Mehrumfang akzeptieren. Quelle: Konversations-Destillat 260718
  (Abschnitt Roethlisberger Therapieküche) + Logbuch-Journal 09./17./21.07.2026.
- **[neu] `wiki/sbb-naeherbaurecht-thalwil-2414-vordach.md`** (status established).
  Projekt 2414 Thalwil: ein 12.76 m² Vordach im SBB-Näherbaurechtsperimeter löst eine
  eigene, erweiternde Vereinbarung mit der SBB aus, die zur JANS-Bringschuld in der
  Auflagebereinigung wird; Lesson: bei jeder Projektänderung im Näherbaurechtsperimeter
  frühzeitig aktiv die SBB-Vereinbarung erweitern lassen. Quelle: Logbuch-Journal
  03./09./10./20.07.2026 (Abschnitte Thalwil 2414 Näherbaurecht).
- **[INDEX]** Beide Artikel unter «Bauleitung / Ausführung» bzw. «Behörden & Bewilligungen»
  registriert; Statistik auf 3 Artikel aktualisiert.
- **[QUESTIONS]** Bootstrap-Pendenz als teilweise erledigt vermerkt (3 von 3-5
  Ziel-Faellen); «Kosten & Termine» und «Koordination & Kommunikation» bleiben leere
  Fokus-Bereiche, naechster Kandidat offen.
- Damit sind die beiden im Logbuch (Eintraege 22.07./25.07.) namentlich vorgeschlagenen
  Bootstrap-Kandidaten (Roethlisberger-Preischeck Los 273.35, SBB-Naeherbaurecht Thalwil
  2414) abgearbeitet — keine Doppelarbeit mit anderen Loops (dieser Lauf ist der erste
  echte Bootstrap-Beitrag, vorherige Health-Checks haben die Pendenz nur wiederholt).

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB, ERST-PRUEFUNG dieser KB)
- **[korrektur] KB-eigene Schreibregel war im einzigen Artikel nicht umgesetzt.** `CLAUDE.md` verlangt, jede Lesson mit Gewerk/BKP, SIA-Phase und den betroffenen Skills zu taggen — genau der Mechanismus, ueber den Erkenntnisse in die Skills zurueckfliessen. `wiki/kispi-lbw-rohdichte-800.md` fuehrte `links: []`, keine SIA-Phase, keinen Skill-Tag; der Health-Check vom 25.07. hat das Frontmatter dennoch als «korrekt» abgenommen. → Frontmatter nachgezogen (Gewerk BRA/ARC, BKP 271.10/271.13, SIA-Phase 5, Skills brandschutz/unternehmerkontrolle/ausschreibung, links auf beide Cross-KB-Ziele).
- **[verlinkung, Erst-Verlinkung] Lesson und `auflagebereinigung` dokumentierten denselben Vorgang, ohne voneinander zu wissen** — die Auflage **II.19** «Detailplaene brandschutzrel. Innenwaende (Material/Aufbau)» am selben Projekt 2619 KISPI. → bidirektional verlinkt mit Rollentrennung: `auflagebereinigung` fuehrt Auflagen-Ziffer/Amt/Frist, `projekt-lessons` die Beweiskette der Material-Substanz.
- **[kennzeichnung] Generische VKF-/Produktwerte im Fazit** (Typ-A-GKB 776 kg/m3 / VKF 18151, Duraline Vario 1'003 / VKF 22636) stehen identisch im fuehrenden `wissen/normen/wiki/en-520-gipsplattentypen.md`. Nicht geloescht (sie tragen die Fallargumentation), aber als **abgeleitet** gekennzeichnet, damit eine spaetere Korrektur in `normen` nicht an dieser Lesson vorbeilaeuft.
- **[matrix]** Neue Zeile im Koordinations-Register: `projekt-lessons` fuehrt die **Beweiskette des Einzelfalls**, nie generische Kennwerte oder Normfundstellen.
- **[offen]** Pruefung F des Health-Checks um die Tagging-Regel erweitern (`links: []` bei belegten Cross-KB-Bezuegen ist kein korrektes Frontmatter) — Aenderung am Pruefprogramm, gehoert nicht in einen Cross-Lauf.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25
- [health-check] Wissens-Health-Check Phase 1 (Nachtschicht Mac Mini): A0·B0·C0·D0·E0·F1·G1
  — erster Inhalt seit Anlage (kispi-lbw-rohdichte-800, established), sauber belegt.
  Funde: State-Files (INDEX-Statistik, QUESTIONS-Kopfzeile) waren seit dem Artikel-Neuzugang
  veraltet, hier nachgefuehrt; Artikelstruktur weicht als "Verifikation" statt "Fehlerfall"
  leicht vom CLAUDE.md-Schema ab (Beobachtung, kein Fix bei n=1). Bootstrap-Pendenz aus
  logbuch/fristen.md bleibt offen. Report: outputs/2026-07-25_health-check.md
- [fix] `wiki/INDEX.md` Statistik-Fusszeile nachgefuehrt (1 Artikel statt 0, Stand 25.07.).
- [fix] `wiki/QUESTIONS.md` Kopfzeile "Offene Wissenslücken" nachgefuehrt (nicht mehr
  "frisch angelegt, kein Material"), Schema-Frage aus Health-Check ergaenzt.

## 2026-07-23
- [neu] Erster Lesson-Artikel `kispi-lbw-rohdichte-800` angelegt (Herkunftsklärung der
  Ziegel-Vorgabe Rohdichte 800 kg/m³, Beweiskette über Truninger-DS3: Bestands-LV 271.13
  Typ DFIR → EN 520 Typ D → Materialdeklaration Duraline/Habito) und im INDEX unter
  Bauleitung/Ausführung registriert. Report: outputs/2026-07-23_kispi-rohdichte-800-herkunft.md.
  Norm-Grundlage als Schwester-Artikel in wissen/normen (en-520-gipsplattentypen).

## 2026-07-22
- [health-check] Wissens-Health-Check Phase 1 (Nachtschicht Mac Mini): A0·B0·C0·D0·E0·F0·G0 — Delta-Null seit 01.07., KB weiterhin leer (0 Artikel, raw/ leer). Neu: konkrete Bootstrap-Quellenhinweise (Logbuch-Faelle KISPI Los 273.35 Roethlisberger, SBB-Naeherbaurecht Thalwil 2414) als Pendenz in logbuch/fristen.md gemeldet, da Befund zweimal folgenlos blieb. Report: outputs/2026-07-22_health-check.md

## 2026-07-01
- [health-check] Wissens-Health-Check Phase 1: A0·B0·C0·D0·E0·F0·G0 — KB weiterhin leer (0 Artikel), kerngesund, Handlungsbedarf nur Befüllung (Material in raw/). Report: outputs/2026-07-01_health-check.md

## 2026-06-02
- [setup] KB Projekt-Lessons angelegt (raw/ wiki/ outputs/, CLAUDE.md, State-Files). Noch leer — bereit zur Befüllung.
