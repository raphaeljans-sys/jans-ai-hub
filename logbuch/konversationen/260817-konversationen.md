# Konversations-Destillat 17.08.2026

Abdeckung: MacBook Pro 38 Sessions · Mac Mini 12 Sessions · Cloud/Dispatch 5 (fünf
Nachtschicht-Läufe Mac Mini, deckungsgleich mit fünf der Mini-Sessions; keine neuen
Remote-Task-Ergebnisse, `remote-tasks/results/` im Fenster leer) — Fenster 26 h, Stand
17.08.2026 06:13 (beide Extraktionen rc=0, auch die via `ssh mini`).

**Das Wichtigste zuerst: im Fenster hat Raphael kein einziges Gespräch geführt.** Alle
Benutzer-Eingaben, die der Digest zeigt, stammen aus Sessions, die inhaltlich Tage bis
Wochen zurückliegen und längst destilliert sind. Das ist kein Nullbefund, sondern ein
Messfehler der Extraktion — er ist der einzige neue Punkt dieses Laufs und steht als
erster Block. Der operative Ertrag der Nacht liegt vollständig bei den Loops.

---

## Die Extraktion misst mtime statt Gesprächszeit — 21 von 38 MacBook-Pro-Sessions liegen ausserhalb des Fensters (MacBook Pro, gemessen 17.08.2026 06:20)

- **Kern/Befund:** `scripts/konversations-extract.sh` wählt die Transkripte über
  `find -mmin` (Zeile 27), also über die **Änderungszeit der Datei**, nicht über den
  Zeitstempel der letzten Nachricht darin. Wird ein altes Transkript aus irgendeinem Grund
  angefasst, rückt es ins Fenster und erscheint als frisches Gespräch. Gemessen am heutigen
  Lauf, je Session der letzte Nachrichten-Zeitstempel gegen die mtime gehalten:

  | Inhaltsdatum | MacBook Pro | Mac Mini |
  |---|---|---|
  | 31.07.2026 | 2 | 0 |
  | 14.08.2026 | 6 | 2 |
  | 15.08.2026 | 13 | 1 |
  | 16.08.2026 | 13 | 5 |
  | 17.08.2026 | 4 | 4 |

  Das Fenster beginnt am **16.08. 04:13**. Damit liegen auf dem MacBook Pro **21 von 38
  Sessions (55 %)** und auf dem Mac Mini **3 von 12** ausserhalb dessen, was sie zu
  beschreiben vorgeben. Ein Block von **27 Dateien trägt die identische mtime 17.08. 05:15**,
  zwei weitere 05:43 und 05:56 — das sind Schreibspuren, keine Sitzungen.

- **Die beiden Extremfälle, beide bereits destilliert:** Session `f84b87ea` (Elektroanschluss
  Geschirrspüler/Kühlschrank, NIN SN 411000) trägt die mtime 17.08. 05:56, ihre letzte
  Nachricht datiert auf **31.07.2026 09:23** — destilliert am 01.08. als Punkt 6. Session
  `0a1a25ee` (Durchkämmen der sechs IMMO-Ordner gegen die KB `immobilienbewertung`) trägt
  die mtime 17.08. 05:43, läuft inhaltlich vom **27.07. 22:17 bis 31.07. 00:28** und steckt
  vollständig im Register: der Rechenfehler **Controlling Niederhasli** (ausgelieferte
  Fassung des Modells B unterstellt faktisch 33 % variable Kosten statt der deklarierten
  30 %, Grafik folgt der fehlerhaften Fassung) steht als Zeile 2033, der widerlegte
  Sättigungsbefund samt Wüest-Bewertungsbericht EFH Langenthal, Marktwert **CHF 971'000**,
  als Zeile 2127.

- **Warum das zählt:** Ohne diese Gegenprobe hätte das heutige Destillat drei Wochen alte
  Vorgänge als Ereignisse der letzten Nacht gemeldet — darunter einen Rechenfehler in einem
  Dokument, das beim Kunden liegt. Der Radar (06:55) und der Hub-Chef (08:39) hätten sie als
  neu übernommen. Der Fehler wirkt bisher nur in eine Richtung (zu viel, nicht zu wenig);
  er kann aber jederzeit auch verdecken, weil ein nicht angefasstes Transkript ebenso aus
  dem Fenster fallen kann. Verwandt mit Rule `auto-verbesserungen` 260730b: ein Datumsartefakt
  ist zuerst eine Aussage über das Messwerkzeug.

- **Zweiter, kleinerer Messfehler im selben Digest:** Bild-Ergebnisse des Read-Werkzeugs
  erscheinen als `RAPHAEL: [Image: original 2480x3509 …]`, weil sie technisch
  User-Nachrichten sind. Im `normen-training`-Lauf Run 54 sind das allein 13 Zeilen — es
  sieht aus, als hätte Raphael nachts Scans übergeben, tatsächlich hat der Lauf eigene
  PDF-Renderings gelesen. Ein Destillat, das «RAPHAEL:» ungeprüft als Gespräch zählt, erfindet
  Sitzungen.

- **Offene Punkte / Folgeaktionen:** Auswahl auf den letzten Nachrichten-Zeitstempel im
  JSONL umstellen (mtime höchstens als Vorfilter), und die Bild-Platzhalter aus der
  `RAPHAEL:`-Ausgabe herausfiltern. **Wahrscheinlicher Verursacher des 05:15-Blocks ist
  benannt, aber nicht bewiesen:** der launchd-Job `ch.jans.claude-autoupdate` steht auf
  **täglich 05:15** (Plist geprüft) — dieselbe Uhrzeit, zu der am 15.08. der CLI-Wedge
  entstand. Die Transcript-Rotation (`ch.jans.transcript-rotation`, wöchentlich So 04:00)
  ist es **nicht**, ihr letzter Lauf war der 16.08. 04:00. Der Zusammenhang gehört
  nachgemessen, bevor die Auswahl umgestellt wird, denn dieselbe Berührung hebelt auch die
  Rotation aus: sie wählt ebenfalls über mtime und archiviert eine täglich angefasste Datei
  nie — was erklärt, warum Transkripte vom 31.07. drei Wochen später noch im Projektordner
  liegen.

- **Radar-relevant: ja** — Pendenz an der Messkette, die Radar und Hub-Chef speist. Keine
  Frist, kein Geldbetrag. Als neue Registerzeile eingetragen.

---

## Nachtschicht Mac Mini: Korpus `buero-projekte` angelegt und eine still gestrandete Pipeline repariert (Mac Mini, 16.08. 05:31 / 13:30 / 23:30, 17.08. 02:30 / 05:31)

- **Kern/Ergebnis:** Fünf Zyklen im Fenster, alle mit **exit_code 0**. Der Strang: Am 16.08.
  05:31 wurde die Korpus-Spec `skills/wissens-destillat/specs/buero-projekte-spec.md`
  geschrieben (Korpus 2, 22 historische Büroprojekte, Ziel-KB `projekt-lessons`) und der Lauf
  regelkonform beendet — kein Destillat ohne Spec. Am 16.08. 23:30 folgte Phase 0: alle 21
  Sektionen inventarisiert, **812 Zeilen, 807 offen, 6 begründet übersprungen**, Budget
  1.37 von 5 USD. Nebenbefund dort: die angenommene Standard-Ordnerstruktur
  (`01_Plaene`/`11_Bildablage`) gilt nur bei 4 von 21 Projekten.
- **Der eigentliche Fund kam am 17.08. 05:31:** Die im 02:30-Zyklus gestartete Hintergrund-
  Pipeline hatte ihre Haiku-Triage beendet (**39 Positionen klassifiziert**) und war danach
  **still in Phase 2 stehengeblieben — kein einziges Destillat geschrieben**. Der 05:31-Lauf
  hat das erkannt, die P1-Quelle (`nerves_baukosten_v2.pdf`, Baukostenübersicht 2015) selbst
  gelesen und den Artikel `wissen/projekt-lessons/wiki/nerves-2015-kv-nebengewerke-unterschaetzt.md`
  geschrieben. Dessen Lehre: Der KV traf die beiden grossen Gewerke (Holzbau, Küche) nahezu
  exakt, lag aber bei drei technischen Nebengewerken (Elektro, Sanitär, Gipser) um
  **76 bis 322 %** daneben, während das Total nur mild driftete und die Abweichung verdeckte.
- **Ebenfalls am 17.08. 05:31 korrigiert:** `bauprodukte` hatte seine Endbedingung am 15.08.
  erreicht, trug in `training/PROGRAMM.md` aber weiterhin «STATUS: AKTIV» — bereinigt, damit
  die Nachtschicht die gesättigte KB nicht erneut als gültiges Ziel wählt (gleiche Behandlung
  wie `grobkosten`).
- **Offene Punkte:** 16 triagierte Positionen des Korpus bleiben für einen Folgelauf offen.
  Dass eine budgetgedeckelte Hintergrund-Pipeline **ohne Fehlermeldung** ergebnislos endet,
  ist der berichtenswerte Betriebsbefund — sie hat sich nicht selbst gemeldet, der Folgelauf
  hat sie gefunden.
- **Radar-relevant: nein** — Hub-intern, kein Aussenbezug, keine Frist. Der Lauf hat CHANGELOG,
  `KORPUS-QUEUE.md` und Logbuch selbst nachgeführt.

---

## Twin-Fidelity-Review: ein bisher blinder Echo-Kanal entdeckt (MacBook Pro, 17.08. bis 06:04, Commit `1c564e19`)

- **Kern/Ergebnis:** Gesamt-Fidelity **35** (Vorläufe 36 / 36 / 38, Basislinie hält). Fenster
  15.–21.06.2026, sechs Mails im Volltext, davon zwei als Goldprobe gewertet und **zwei als
  Zwillingstext entlarvt**. Facetten: Beziehungsregister 45, Stimme 42, Denken 35,
  Arbeitsweise 32, Fachsignatur 28, Haltung 25.
- **Der Fund ist mechanisch und betrifft den Echo-Schutz insgesamt:** Eine Mail vom 15.06. an
  **Roman Steinmann** trägt im HTML Tailwind-Utility-Klassen einer Web-Oberfläche am Link —
  kein Mailclient erzeugt so etwas; der Text wurde aus einem Chat-Fenster kopiert und aus
  Outlook gesendet. **Alle vier bisherigen Echo-Detektoren halten diese Mail für authentisch**,
  auch die erst tags zuvor eingeführte Signatur-Erkennung, weil Outlook die eigene Signatur
  beim Senden anhängt. Als fünfzehnte Falle aufgenommen, Reichweite an zwei Kontrollmails
  geprüft (dort nicht vorhanden). Sechs Do-Blöcke korrigiert, DNA neu kompiliert (29'971 B,
  29 B unter dem Riegel).
- **Inhaltliche Kern-Drift:** **Christoph Bopp** fragte, ob er einen Baurechtler beiziehen
  soll. Raphael antwortet mit einem Auswahlkriterium und schickt ihn hin; die Blindfassung
  machte daraus eine bezifferte eigene Prüfleistung — also genau gegen die Haltungsregel
  «ehrlich vor Auftrag».
- **Radar-relevant: nein** — Qualitätsmessung am Zwilling, ohne Aussenwirkung und ohne Frist.

---

## Normen-Training Run 54: die Refuter-Richtung ist am realen Bestand blind (MacBook Pro, 17.08. 01:51, Push `0a660c67` um 01:49:55)

- **Kern/Ergebnis:** Übergabepunkt N53-2 geschlossen — die Abdeckungsrichtung ist auf den
  beiden bis dahin ungeprüften Dritteln von `sia-416-1-2007` nachgeholt (sieben
  Segment-Agenten über S. 4–22 und S. 26–40, alles am 300-dpi-Rendering; die Datei ist ein
  reiner Scan, `pdftotext` liefert 40 Byte). Gefunden: **37 Kern- und 20 Nebenlücken** auf
  denselben 34 Seiten, auf denen die Refuter-Richtung eine Nacht zuvor 93 Aussagen bestätigt
  und nur 2 widerlegt hatte. **Kein einziger falscher Wert — durchgehend fehlender Inhalt.**
- **Warum das über den Loop hinaus zählt:** Die gewichtigsten Lücken sind rechnungsrelevant,
  etwa die **τ-über-10-%-Schwelle** in der Definition von Ag (ohne sie ist der Glasanteil
  nicht rechenbar) und die **Treppenauge-5-m²-Regel**. Das stützt Rule `normen-referenz`
  Ziffer 1b: ein Destillat ist erst mit geprüftem Status zitierfähig. Bei SIA 215 zusätzlich
  eine überdehnte Verallgemeinerung korrigiert — die Prüfalter «24 h / 48 h / 28 Tage» gelten
  nur für Zement, Baugips hat als einziges Prüfalter **7 Tage**.
- **Nebenbefund zur Betriebsdisziplin:** Der Vorrang-Auftrag im Task-Prompt war **zum sechsten
  Mal überholt** (erledigt in Run 38, seither von den Runs 49–54 je einzeln zurückgemeldet)
  und wurde erneut nicht ausgeführt. Ausserdem vier veraltete Registerstellen korrigiert.
- **Radar-relevant: nein** — Wissens-Layer, keine Frist. Der Vorrang-Auftrag im Prompt gehört
  bereinigt, damit nicht ein siebter Lauf dieselbe Rückmeldung schreibt.

---

## Wissens-Chef Run 34: die Doppeldestillation hat eine Ursache, keine Einzelfälle (MacBook Pro, 16.08.)

- **Kern/Ergebnis:** Fünf Melder und zwei Refuter über ein Delta von 62 Dateien / 115 Commits,
  1.25 Mio Token in 8.6 Minuten, 10 Meldungen, 9 hielten. Nachdem Run 33 eine Doppeldestillation
  (Dachbegrünung) und dieser Lauf zwei weitere (PCB-Fugendichtungsmassen,
  Raumtemperatur-Richtlinie) fand, wurde statt eines dritten Einzelfalls die Ursache gemessen:
  von **25 `energie`-Destillaten aus dem AHB-Ordner «Projektadmin AHB» ist genau eines in
  `planungsgrundlagen` genannt**, obwohl dort ein 1'439-zeiliger Artikel denselben Ordner
  auswertet. Härteste Messung: neun `ahb-zuerich-gt-rl1..9`-Destillate (03.08.) gegen §12/§13
  des pg-Artikels (14./25.07.) — dieselben neun Quell-PDF, neun Tage auseinander, **null
  Kanten**. Eine Führungszeile für den Korpus wurde gesetzt.
- **Nicht nur Verschwendung:** Bei PCB sind die beiden Fassungen unterschiedlich vollständig —
  `energie` las die Grundlage ganz, `planungsgrundlagen` nur S. 1–4.
- **Radar-relevant: nein** — Wissens-Layer, vom Loop selbst behoben.

---

## Routine

Zwölf weitere Loop-Läufe im Fenster ohne eigenen Meldebedarf: `logbuch-radar`,
`hub-chef-taeglich` (Mail an rj@ am 16.08. 08:57:05), `vollgas-chef-radar`,
`vollgas-fruehwarnung`, `synergie-lauf-taeglich`, `tenant-hygiene-weekly`,
`zahlungsabgleich-check`, `twin-mail-training`, `wettbewerbs-dna-training`,
`claude-abo-auslastung` und `energie-training` (Mac Mini).

**Zwei laufende Störungen berührten diese Läufe, beide bereits im Register und dort
aktueller als hier — deshalb keine neue Zeile:**

- `zahlungsabgleich-check` scheiterte erneut zweimal mit **rc=2, bexio HTTP 401**
  (`~/.bexio.env` unverändert seit 13.06.2026, Token gültig bis 13.12.2026, Session
  serverseitig beendet). Die Debitoren-Aufsicht steht damit weiter still, betroffen ist die
  **Mahnfrist RE-00101 (Tschopp, CHF 6'000)**. Register Zeile 93, mit täglich
  nachgemessenem Stand.
- Der **CLI-Wedge des MacBook Pro** (Homebrew-Cask `claude-code` 2.1.223 → 2.1.224 am
  **15.08. 05:15**, jeder Aufruf blockiert, auch `claude --version`, rc=137) wirkt weiter.
  Register Zeile 2176, inklusive der empfohlenen Abhilfe über die funktionierende
  App-CLI 2.1.229 und der Einordnung, dass die MacBook-CLI seit 03.08. keinen produktiven
  Loop mehr trägt.

Der einzige Fehllauf der Nachtschicht-Reihe — Mac Mini 16.08. 02:30, Abbruch bei
`budget_exhausted` (5.07 von 5 USD, exit 1, ohne Ergebnis) — liegt vor Fensterbeginn und ist
bereits im Destillat vom 16.08. vermerkt. Innerhalb des Fensters lief kein Nachtschicht-Zyklus
mit rc≠0.

Zwei MacBook-Pro-Sessions bestanden nur aus «Antworte nur mit: OK» (16.08. 13:02 und 17.08.
00:58) — CLI-Funktionstests im Umfeld des Wedge, kein Gesprächsinhalt.

Zwei Läufe endeten ohne Ergebnis, ohne dass daraus ein eigener Befund folgt: die
DESTILLAT-Stufe des `wissens-destillat` auf dem Mac Mini wurde mit «[Request interrupted by
user]» abgebrochen, und die oben beschriebene 02:30-Hintergrundpipeline blieb still stehen.
Beide wurden von Folgeläufen aufgefangen.

---

## Register-Abgleich dieses Laufs

**Neu eingetragen:** eine Zeile zum Messfehler der Konversations-Extraktion.

**Geprüft und bewusst NICHT eingetragen, weil bereits im Register und dort aktueller:**

- Rechenfehler Controlling Niederhasli (Modell B, 33 % statt 30 % variable Kosten) — Zeile 2033
- Widerlegter Sättigungsbefund KB `immobilienbewertung`, rund 2'600 nie registrierte Dateien,
  Wüest-Bewertungsbericht Langenthal CHF 971'000 — Zeile 2127
- Speicherplatz MacBook Pro, Dropbox online-only, zwei Bedienschritte bei Raphael — Zeile 2177
- Quarantäne-Ordner `~/.claude-quarantaene-260814/session-env/` — Zeile 306
- KISPI Türkonzept/Türbuch, Rückmeldung Architektur im Protokoll-CI und Terminfindung
  (Mac Mini, Inhalt 14.08.) — im Destillat vom 16.08. behandelt, Registerzeilen dort gesetzt
- bexio HTTP 401 / Mahnfrist RE-00101 (Tschopp, CHF 6'000) — Zeile 93
- CLI-Wedge MacBook Pro, Cask `claude-code` 2.1.224 — Zeile 2176

**Ein Punkt aus diesem Themenkreis ist heute terminlich scharf, steht aber bereits vollständig
im Register und braucht von hier keine Zeile:** der Teams-Termin «KISPI PPTS: Türkonzeptplan
und Türbuch, Besprechung Rückmeldungen» steht **heute, Montag 17.08., 10:30 bis 11:00** im
Kalender; von TeKoSi (L. Hiltmann, R. Otschkowski) lag bis Freitag 09:05 **weder Zu- noch
Absage** vor, eine Absage einer weiteren Person ist bereits eingegangen. Der Registerstand
(Zeilen 185 bis 190) trägt dafür ausdrücklich «beobachten, Lage Montag früh prüfen» — das
greift mit dem Radar-Lauf um 06:55, rund 40 Minuten nach diesem Destillat.

**Nicht umdatiert:** Die Sessions mit Inhaltsdatum 31.07., 14.08. und 15.08. behalten ihre
Datierung; die frische mtime ist nach Rule `auto-verbesserungen` 260730b kein Beleg für neue
Arbeit, sondern für eine Berührung der Datei.
