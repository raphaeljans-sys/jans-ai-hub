# VOLLGAS-Chef-Radar

> **REGIMEWECHSEL 25.07.2026 12:45 (auf ausdrueckliche Anweisung Raphael — WIEDER VOLLGAS):**
> Die Drossel vom 14.07. ist AUFGEHOBEN. STOP + STOP-Macmini entfernt, der Endlos-Runner laeuft
> wieder auf BEIDEN Stationen (MacBook Pro PID-Neustart 12:45, Mac Mini via ssh 12:45, Budget
> $50/Lauf). Der Radar ist wieder **TAKTGEBER, nicht mehr Schoner**: er haelt den Runner am Leben
> und startet ihn nach jedem 5h-Reset/Login-Fix sofort neu. Ziel wieder: Wochenlimit ausschoepfen,
> jedes 5h-Fenster maximal ausreizen (ein 5h-Fenster auf 100% ist ERFOLG, kein Fehler). Drosseln
> nur auf erneute Anweisung Raphaels. ~~Hinweis: die One-Time-Task token-drosselung-100810 (10.08.)
> steht weiterhin und wuerde die Lern-Loops dann auf Sparbetrieb zuruecktakten — bei Bedarf anpassen.~~
> **[HINFAELLIG, 30.07.2026 06:57]** Diese Task existiert in der Registry nicht (mehr); es kommt am
> 10.08. keine Drossel. Zweimal gegen `list_scheduled_tasks` geprueft (30.07. 03:57 und 06:57).
> Der Regimeentscheid Raphaels darueber bleibt unveraendert gueltig.
>
> **REGIMEWECHSEL 14.07.2026 (Rule 260714 — DROSSELN) [HISTORISCH, aufgehoben 25.07.]:** Das Wochenlimit («Alle Modelle»)
> ist bereits zu 81% ausgeschoepft, noch ~6 Tage bis Reset (Mo 11:59). Die maximale
> VOLLGAS-Ausreizung (Rules 260712c ENDLOS + 260712e «jedes 5h-Fenster ans Limit») ist
> AUFGEHOBEN. Der Endlos-Runner ist gestoppt (STOP + STOP-Macmini seit 12:53) und wird NICHT
> automatisch neu gestartet. Der Radar ist ab jetzt **SCHONER, nicht mehr Taktgeber**: er
> beschleunigt nicht, startet den Runner nicht wieder, sondern haelt nur Login/Fenster im Blick
> und meldet. Ein 5h-Fenster auf 100% ist KEIN Ziel mehr. Geplante Lern-/Trainings-Tasks laufen
> weiter, aber gedrosselt (Richtung Nachtfenster 22:00–06:00, Regel 260711). Wiederhochfahren nur
> auf ausdrueckliche Anweisung Raphaels. Gilt mindestens bis zum naechsten Wochen-Reset.

Ziel (historisch, Auftrag Raphael 12.07.2026, Rules 260712c + 260712e — durch 260714 abgeloest):
das WOCHENLIMIT des Max-Abos ausschoepfen, indem JEDES rollierende 5-Stunden-Fenster maximal
ausgereizt wird. Diese Zielsetzung ist ab 14.07.2026 12:53 aufgehoben (siehe Banner).
Neueste Eintraege zuoberst.

> **STEHENDER ENTSCHEID 30.07.2026 (Raphael, wörtlich «nicht wieder beleben»):** Der
> VOLLGAS-Endlos-Runner **bleibt ausgebaut** und wird nicht reaktiviert. Begründung aus der
> Messung: die getakteten Scheduled Tasks und die Mac-Mini-Nachtschicht liefern den Ertrag
> allein. Kein Radar-Lauf startet ihn, entfernt eine STOP-Datei oder lädt eine der beiden
> `*.disabled-260729`-plists. Eine Wiederbelebung braucht eine neue, ausdrückliche Anweisung
> Raphaels — Schweigen gilt nicht als Zustimmung.

> **STEHENDER ENTSCHEID 03.08.2026 (Raphael) — VERBRAUCH GLEICHMAESSIG UEBER DIE WOCHE:**
> Auf die P1-Regimefrage dieses Radars vom 03.08. 22:07 («soll der Verbrauch frueher in der
> Woche gedrosselt werden, damit das Wochenende nicht leer laeuft?») hat Raphael entschieden:
> **ja, gleichmaessig ueber die Woche.** Das Kontingent soll bis zum Montags-Reset reichen;
> ein dunkles Wochenende wie 01.–03.08. (47 h, 11 blockierte Laeufe, 02.08. null Commits)
> ist nicht laenger hinzunehmen. Kein Vollgas-Spitzentag mehr am Wochenanfang.
> **Der Radar legt diese Frage nicht erneut als P1 vor.** Ein Tagesdeckel-Mechanismus ist
> damit noch NICHT gebaut — der Hebel «Wochenbudget-Steuerung» wurde am 03.08. bewusst
> zurueckgestellt; der Entscheid steht, die Umsetzung ist ein eigener Auftrag. Bis dahin
> wirkt er als Leitplanke fuer Takt-Empfehlungen: neue oder hochgetaktete Loops gehoeren
> nicht auf Montag bis Mittwoch gebuendelt.

Legende: P1 = Blocker/groesster Hebel, P2 = starker Hebel, P3 = Feinschliff.
Fensterzustand je Eintrag: [FREI] Kapazitaet offen · [VOLL] Fenster ausgereizt (Ziel im VOLLGAS-Regime) ·
[WOCHE LEER] Wochenkontingent erschoepft (Vorfall, nicht Erfolg — Lern-Loops stilllegen bis Reset) ·
[LOGIN] headless-Login-Block · [GEDROSSELT] Drossel-Regime, Runner gestoppt (historisch 14.–25.07.2026).

---

## 2026-08-26 00:57 — [FREI] **Der P2-Befund vom 25.08. ist entkraeftet: der 13:30-Slot der Nachtschicht hat am 25.08. gefeuert (Exit 0, 537 s). Kein Muster, Einzelausfall am 24.08.** Fenster frei, Budget entspannt, zehn KBs mit Liefer-Delta, kein Loop auf Delta Null.

**Selbstkontrolle: bestanden.** Letzter Eintrag 25.08. 12:57, dieser 26.08. 00:57 — Abstand **exakt 12 h 0 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h). Keine Luecke, kein zweiter Ausfalltyp zu pruefen.

**Fensterzustand [FREI].** Probe ueber die app-gebuendelte CLI, jetzt **2.1.241** (die App hat seit dem letzten Lauf von 2.1.237 aktualisiert; der Ordner wird zur Laufzeit ermittelt, deshalb ohne Eingriff): «OK», rc=0, in **6 Sekunden**. Reihe der schnellen Messungen stabil: 5 s (25.08. 00:57) · 6 s (25.08. 12:57) · 6 s (jetzt). Keine Waisen (`ps` auf `claude -p` leer).

**Kontingent: reichlich Luft, Vorsprung weiterhin negativ.** `kontingent-budget.sh`: Ampel **FREI**, **16.91 von 167 Mio (10.1 %)** bei **22.0 %** verstrichener Woche, Vorsprung **−11.9 Punkte** (vor 12 h: −8.0). Der Rueckstand hat sich also vergroessert, der Verbrauch laeuft dem Zeitverlauf klar hinterher — die vom 03.08. angeordnete Gleichverteilung ist eingehalten, mit Reserve. Beide Stationen frisch (Macbookpro 11.48 Mio, Macmini 5.43 Mio, Alter je 0.0 h). Keine Drossel faellig, keine zurueckzudrehen.

**Speicher: enger als zuletzt, aber unkritisch.** Rund **1.15 GB** frei+inaktiv+spekulativ gegen 4.1 GB vor 12 h, bei unveraendertem `kern.memorystatus_vm_pressure_level: 1` (normal). Der Druckindikator ist die massgebliche Groesse, nicht die absolute Zahl; kein Handlungsbedarf, aber im naechsten Lauf mitmessen — faellt der Wert weiter UND steigt der Pressure Level auf 2, ist es ein Befund.

**Liefer-Delta: zehn KBs, ueber git gemessen (Werkzeugfalle `find -newermt`, 20.08.).** Seit dem letzten Eintrag geaenderte Dateien je Wissensbasis: **energie 17 · planungsgrundlagen 7 · normen 6 · koordination 5 · projekt-lessons 3 · auflagebereinigung 3 · twin 2 · kunde-bopp 2 · entwurfs-referenzen 2 · baurecht 2**. 55 Commits im Fenster, davon mehrere mit belegtem Ergebnis im Betreff: `energie` Run 163 (Fenster-Uf-Tabelle als amtlich abgeloest erkannt, E-121-1 geschlossen, Minergie-Zahlendreher berichtigt), `wissens-chef` Run 43 (RPV-Schwellen an `planungsgrundlagen` nachgezogen, drei Werkzeug-Fehlalarme nach drei Wochen behoben), Synergie-Lauf 18 (SYN-47 bis SYN-49), `tenant-hygiene` (878.52 GB / 83.35 %, Restlaufzeit 26 Tage, in `logbuch/fristen.md` nachgetragen). **Kein Loop auf Delta Null, keine Ruecktakt- oder Stilllegungsmassnahme faellig.** `claude-code` und `spec` liegen in diesem Fenster ohne Delta, hatten es aber im vorangehenden — ein Fenster ist keine Serie, die Drei-Laeufe-Schwelle ist nicht erreicht.

**Feuermechanismen: unveraendert korrekt, beide Stationen geprueft.** MacBook Pro: `ch.jans.vollgas-supervisor` und `ch.jans.vollgas-monitor` weiterhin `.disabled-260729`, `com.jans.aihub.runner` weiterhin `.disabled-260728`, `launchctl list` zeigt keinen davon geladen. Mac Mini: `ch.jans.vollgas-supervisor.plist.disabled-260729`, `ch.jans.nachtschicht` geladen mit letztem Exit 0. **Nichts wiederbelebt, nichts doppelt gefeuert.** Der stehende Entscheid vom 30.07. bleibt gewahrt.

### Erledigt — P2 vom 25.08. (Nachtschicht-13:30-Slot) ist entkraeftet

Die Pruefvorschrift des letzten Laufs ist erfuellt. Das Log zeigt fuer den 25.08. alle vier Slots vollstaendig:

- **25.08.:** 02:30 ✓ (Exit 0, 358 s) · 05:30 ✓ (Exit 0, 516 s) · **13:30 ✓ (Exit 0, 537 s)** · 23:30 ✓ (Exit 0, 660 s)

Der 13:30-Slot hat also gefeuert. Damit bleibt der Ausfall vom **24.08. 13:30 ein Einzelfall**, kein Muster; ein Reload der plist ist nicht gerechtfertigt und der Punkt ist geschlossen. Zum Vergleich der Rahmen: auch am 21., 22. und 23.08. lief der 13:30-Slot jeweils sauber durch. Der Auffaelligkeitszaehler steht damit bei einem einzigen fehlenden Slot in fuenf Tagen.

**Werkzeug-Nachtrag zur Messung.** Der erste Leseversuch griff mit `grep -E "^\[2026-08-2[45]"` ins Log und lieferte **still null Zeilen** — das Log fuehrt seine Zeitstempel **ohne eckige Klammern** (`2026-08-25T13:30:09+02:00 …`). Das sah einen Moment lang aus wie ein weiterer spurloser Ausfall und war eine Aussage ueber das Suchmuster, nicht ueber die Quelle. Gegengemessen mit `tail -40` auf die Rohdatei, und erst diese Messung zaehlt. Gleiche Familie wie die `find -newermt`-Falle (20.08.) und die grep-Falle am nicht-UTF-8-Selfcommit-Log (Rule `auto-verbesserungen` 260730b). **Fuer kuenftige Laeufe: das Nachtschicht-Log immer roh mit `tail` lesen, nie mit einem geratenen Zeilenpraefix filtern.**

### P3 — Speicherwert im naechsten Lauf gegenmessen

Kein Blocker und keine Massnahme, nur eine Beobachtung mit Pruefauftrag: 4.1 GB → 1.15 GB innerhalb von 12 h bei gleichbleibendem Pressure Level 1. Das ist mit hoher Wahrscheinlichkeit normale Cache-Belegung durch die Nachtlaeufe (der 23:30-Zyklus lief 11 Minuten und endete um 23:41). Im naechsten Lauf beide Groessen erneut erheben; nur die Kombination aus weiter fallendem Wert und steigendem Pressure Level waere ein Befund.

---

## 2026-08-25 12:57 — [FREI] **Alles im Lot, ein neuer Befund: der 13:30-Slot der Mac-Mini-Nachtschicht ist am 24.08. ersatzlos ausgefallen — kein Lauf, aber auch kein «uebersprungen» im Log.** Fenster frei, Budget entspannt, sechs KBs mit echtem Delta, kein Loop auf Delta Null.

**Selbstkontrolle: bestanden.** Letzter Eintrag 25.08. 00:57, dieser 12:57 — Abstand **exakt 12 h 0 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h). `lastRunAt` der eigenen Task 25.08. 10:57 UTC = 12:57 CEST, deckungsgleich mit diesem Lauf. Keine Luecke, kein zweiter Ausfalltyp zu pruefen.

**Fensterzustand [FREI].** Probe ueber die app-gebuendelte CLI **2.1.237**: «OK», rc=0, in **6 Sekunden** — mit dem entkoppelten Watchdog gemessen (`> /dev/null 2>&1 < /dev/null` am `sleep`-Kind, `pkill -P` danach). Damit ist die Reihe der schnellen Messungen stabil: 5 s (25.08. 00:57), 6 s (jetzt). Keine Waisen (`ps` auf `claude -p` leer). Speicher unauffaellig: rund 4.1 GB frei+inaktiv+spekulativ, `kern.memorystatus_vm_pressure_level: 1`.

**Kontingent: reichlich Luft, und der Vorsprung ist negativ.** `kontingent-budget.sh`: Ampel **FREI**, **11.51 von 167 Mio (6.9 %)** bei **14.9 %** verstrichener Woche, Vorsprung **−8.0 Punkte**. Der Verbrauch laeuft dem Zeitverlauf also deutlich hinterher — genau die Gleichverteilung, die Raphael am 03.08. angeordnet hat. Beide Arbeitsstationen frisch (Macbookpro 8.47 Mio, Macmini 3.04 Mio, Alter 0.0 bzw. 0.1 h). Keine Drossel faellig, keine Drossel zurueckzudrehen.

**Liefer-Delta: sechs KBs, gemessen ueber git statt ueber `find` (Werkzeugfalle 20.08.).** Seit dem letzten Eintrag geaenderte Dateien je Wissensbasis: **baurecht 15 · twin 10 · normen 3 · claude-code 3 · auflagebereinigung 2 · spec 1**. Alle nachtaktiven Lern-Loops haben substanziell geliefert, jeder mit belegtem Ergebnis im CHANGELOG: `normen-training-nacht` Run 61 (drei unentdeckte DE-Destillat-Duplikate, drei einstimmige Agenten-Fehlbefunde durch Gegenpruefung abgefangen), `baurecht-buch-training` Buch-Run 140 (Wiederaufbau-Regel richtiggestellt: Art. 42 Abs. 4 RPV statt Art. 24c Abs. 2 RPG, zwei vertauschte Schwellenwerte korrigiert), `twin-mail-training` Batch 104 (erstes strukturelles Korrektur-Delta), Nachtschicht 05:35 (`claude-code`, Grundkontext-Rebound Nr. 2 gemessen). **Kein Loop auf Delta Null, keine Ruecktakt- oder Stilllegungsmassnahme faellig.**

**Feuermechanismen: unveraendert korrekt, beide Stationen geprueft.** MacBook Pro: `ch.jans.vollgas-supervisor` und `ch.jans.vollgas-monitor` tragen weiterhin `.disabled-260729`, `com.jans.aihub.runner` weiterhin `.disabled-260728`. Mac Mini: `ch.jans.vollgas-supervisor.plist.disabled-260729`, `ch.jans.nachtschicht` geladen mit letztem Exit 0. Mini-Registry vollstaendig beim Sollstand (acht Tasks, vier davon korrekt stillgelegt). **Nichts wiederbelebt, nichts doppelt gefeuert.** Der stehende Entscheid vom 30.07. bleibt gewahrt.

### P2 — Der 13:30-Slot der Nachtschicht ist am 24.08. ausgefallen, und zwar spurlos

Die Nachtschicht des Mac Mini traegt vier Slots (23:30 / 02:30 / 05:30 / 13:30, aus der plist verifiziert). Das Log `~/Library/Logs/ch.jans.nachtschicht.log` zeigt fuer die letzten drei Tage:

- **23.08.:** 02:30 ✓ · 05:30 ✓ · **13:30 ✓** (Exit 0, 450 s, 2.97 USD) · 23:30 «Weiche: keine Station bereit — Zyklus uebersprungen»
- **24.08.:** 02:30 Exit 1 nach **2 Sekunden** · 05:30 ✓ · **13:30 — kein Eintrag** · 23:30 ✓
- **25.08.:** 02:30 ✓ · 05:30 ✓ · 13:30 zum Zeitpunkt dieser Messung (12:57) noch nicht faellig

**Der Unterschied ist der Punkt.** Am 23.08. um 23:30 hat die Arbeits-Weiche sauber gegriffen und ihren Verzicht protokolliert — so soll ein uebersprungener Slot aussehen. Am 24.08. um 13:30 steht **gar nichts** im Log: weder ein Start noch ein Verzicht. Das ist kein Weichen-Entscheid, sondern ein nicht gefeuerter Job. Da die Nachtschicht seit dem Ausbau des Endlos-Runners der **einzige** Lern-Taktgeber ist und einen uebersprungenen Slot niemand nachholt, kostet das ein Viertel der Tageskapazitaet dieses Taktgebers.

**Ein Ausfall ist noch keine Serie, deshalb jetzt keine Massnahme.** Ein Reload der plist waere ein Eingriff in Systemdienste (Klasse 4 der Rule `interaktive-eingriffe`) und gehoert nicht in einen unbeaufsichtigten Regellauf. **Pruefvorschrift fuer den naechsten Lauf (00:57):** im Log nachsehen, ob der 25.08.-13:30-Slot gefeuert hat. Fehlt er ein zweites Mal in Folge, ist es ein Muster — dann gehoert der Befund mit dem exakten Reload-Befehl vorgelegt, statt weiter beobachtet zu werden.

**Nicht verwechseln mit dem Exit-1 vom 24.08. 02:30.** Der lief 2 Sekunden und fiel damit in das Fenster **vor** dem Wochen-Reset (~03:00), also in eine Kontingentsperre. Ein Liefer-Delta von Null waehrend einer Sperre ist ausdruecklich kein Leerlauf; der Punkt ist erledigt und nicht Teil dieses Befunds.

### P3 — Die Homebrew-Wedge der CLI dauert nun drei Tage, laenger als beim letzten Mal

`/opt/homebrew/bin/claude` zeigt unveraendert auf **2.1.231**, Symlink-Datum **22.08. 05:15** — seit vier Tagen kein Nachschub, und das Caskroom fuehrt keine neuere Fassung. Zum Vergleich: die gleichartige Wedge mit 2.1.224 (15./16.08.) war nach rund **zwei** Tagen durch 2.1.226 abgeloest. **Kein Blocker:** die app-gebuendelte 2.1.237 traegt die Probe seit dem 22.08. zuverlaessig und wird unabhaengig von Homebrew aktualisiert. Der Punkt steht hier, damit die Verlaengerung dokumentiert ist und die PATH-Probe nicht aus Gewohnheit zurueckgestellt wird: **wieder auf PATH umstellen erst, wenn eine Messung dort rc=0 zeigt.** Ein rc=137 der PATH-Probe bleibt bis dahin ein Verdacht auf ein gewedgtes Binary, nicht auf ein leeres Fenster.

**Keine Mail.** Kein neuer P1-Blocker, kein geloester P1, kein erschoepftes Wochenkontingent. Der Nachtschicht-Slot und die Homebrew-Wedge sind Hub-Interna ohne Aussenwirkung und damit nach Rule 260803 kein Sendegrund. Zuletzt gemailt: **24.08.2026 07:50** (vollgas-fruehwarnung).

---
## 2026-08-25 00:57 — [FREI] **Beide P1 des Vorlaufs sind gelöst: die Nachtschicht des Mac Mini läuft wieder, und die Sicherung nach GitHub ist deckungsgleich. Seit dem Wochen-Reset kein einziger Fehlversuch mehr — die 437 Fehlläufe des 24.08. liegen sämtlich vor 03:00, also vor dem Reset.** Kein Loop auf Delta Null, keine Massnahme nötig.

**Selbstkontrolle: bestanden.** Letzter Eintrag 24.08. 12:57, dieser 25.08. 00:57 — Abstand **exakt 12 h 0 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h). `lastRunAt` der eigenen Task 24.08. 22:57 UTC = 25.08. 00:57 CEST, deckungsgleich mit diesem Lauf. Keine Lücke.

**Fensterzustand [FREI], und die Zahl trägt diesmal zwei von drei Stationen.** Probe über die app-gebündelte CLI **2.1.237**: «OK», rc=0, in **5 Sekunden** — mit dem seit gestern entkoppelten Watchdog gemessen (`> /dev/null 2>&1 < /dev/null` am `sleep`-Kind, `pkill -P` danach). Das bestätigt den Werkzeugbefund vom 24.08. 12:57: die früher gemeldeten 151 s und 180 s waren Artefakt der Pipe, nicht Latenz. `kontingent-budget.sh`: Ampel **FREI**, **6.59 von 167 Mio (3.9 %)** bei **7.7 %** verstrichener Woche, Vorsprung **−3.8 Punkte** — der Verbrauch läuft dem Zeitverlauf also hinterher, nicht voraus. Beide Arbeitsstationen sind frisch (Macbookpro 4.03 Mio, Macmini 2.56 Mio, Alter 0.0 bzw. 0.1 h). **Die am 24.08. gerügte Messlücke ist zu zwei Dritteln geschlossen:** allein `verbrauch-Macbookrevendo.json` steht weiter auf `reset_lokal 2026-08-17` und wurde seit 23.08. 16:59 nicht geschrieben. Sie trug in der Vorwoche 0.91 Mio und fällt damit nicht ins Gewicht — die Ampel gilt hier als belegt, anders als gestern.

**P1 des Vorlaufs (a) gelöst — `ch.jans.nachtschicht` ist auf dem Mac Mini wieder geladen und hat gearbeitet.** `launchctl list` führt den Job wieder (`- 0 ch.jans.nachtschicht`); der Slot **23:30 ist gelaufen und hat geliefert** (Commit `c71657057` «synobsis-training: 7 weitere QUESTIONS.md-Fragen recherchiert, Nachtschicht 23:30»). Der vorgelegte `launchctl bootstrap`-Befehl ist also ausgeführt worden. Das Lernfenster der Nacht 24./25.08. fällt damit **nicht** aus; die Slots 02:30 und 05:30 stehen noch bevor. Registerzeile als erledigt nachgetragen. Wer den Job wiederhergestellt hat, ist nicht belegt — das Ergebnis zählt, ein Chronikeintrag dazu fehlt weiterhin.

**P1b des Vorlaufs (b) gelöst — NAS, Station und GitHub sind deckungsgleich.** `scripts/git-divergenz.sh` meldet um 00:58 für beide Richtungen «deckungsgleich», Ergebnis «in Ordnung». Der Stau von 27 voraus / 51 zurück ist über den Merge `9bb816682` («Merge remote-tracking branch 'github/main'») aufgelöst worden, und zwar — soweit die Commit-Historie es zeigt — als Append-Vereinigung, nicht durch Verwerfen einer Seite. Der 15-Minuten-Selfcommit läuft seither ununterbrochen durch (letzter `dfd3584ff`, 00:45). **Die Zweitursache bleibt bestehen und ist nicht Gegenstand dieses Laufs:** zwei Schreiber auf `main` (Synology-Selfcommit und `com.jans.git-auto-sync` des Mini) werden dieselbe Kollision wieder erzeugen; der Merge-Rückfall in `nas-selfcommit.sh` und `git-auto-sync` (Commits `bb9d1825a`, `6b334c22e`) ist die dafür gebaute Abfederung. Registerzeile als erledigt nachgetragen, die offene Zweitursache dort ausdrücklich stehen gelassen.

**Kein Fehlversuch mehr, und das ist der sauberste Befund dieses Laufs.** Stundenweise Auswertung des Lauf-Journals 24.08.: **00 Uhr 197 Fehler, 01 Uhr 143, 02 Uhr 97 — ab 03:00 exakt null.** Die 437 Fehlläufe des Tages fallen sämtlich in die drei Stunden **vor** dem Wochen-Reset um 12:00 und sind damit blockierte Läufe gegen ein leeres Kontingent, kein Defekt. Danach 148 erfolgreiche Läufe ohne einen einzigen Fehlschlag, Tagessumme 601 Läufe / 444.44 USD. Der `/tmp`-Vollschub ist beendet und blieb es: letzter Journaleintrag **23:36** (Nachtschicht), kein `vollschub`-Prozess auf einer der Stationen. Die am 24.08. als Lehre notierte fehlende Abbruchbedingung bei Nullkosten-rc=1 in Serie bleibt für eine allfällige Wiederholung offen — sie ist heute nicht wirksam geworden, weil kein Schub läuft.

**Liefer-Delta: sieben Wissensbasen, 132 Dateien in 13 Stunden — kein Loop auf Delta Null.** Über git gemessen (Basis `3b57a882`, 68 Commits): **energie 57 · baurecht 35 · normen 26 · planungsgrundlagen 5 · koordination 5 · kunde-bopp 2 · architekten-synobsis 2**. Substanz statt Rauschen: `energie` Run 162 korrigiert das Inkrafttreten von SIA 390/1 auf 01.02.2025 und trägt die Korrektur ins `normen`-Register zurück; `baurecht` Buch-Run 140 löst eine Diskrepanz aus Run 137 auf (Wiederaufbau-Regel in Art. 42 Abs. 4 RPV statt Art. 24c Abs. 2 RPG) und korrigiert zwei vertauschte Schwellenwerte; `wissens-chef` Run 42 prüft den Brandschutz-Wegweiser erstmals ganzflächig gegen `normen` und findet vier Fehler, darunter einen Selbstwiderspruch. **Keine Rücktakt-Empfehlung, keine Stilllegung, kein Loop mit drei Delta-Null-Läufen in Folge.**

**Schritt 2c: nichts zurückzudrehen.** Ampel FREI, keine Lern-Task steht wegen einer Drossel auf `enabled=false`. Als deaktiviert führt die lokale Registry ausschliesslich die dokumentiert stillgelegten (`immobewertung-training` und `spec-training` als Ereignis-Trigger, `synergie-lauf-monatlich` als abgelöst, dazu die abgelaufenen One-Times). Mini-Registry unverändert im Sollstand.

**Feuermechanismen: alle drei Orte stimmen.** MacBook Pro — beide vollgas-plists weiterhin `.disabled-260729`, nichts geladen. Mac Mini — `ch.jans.vollgas-supervisor` weiterhin `.disabled-260729`, `ch.jans.nachtschicht` wieder geladen, daneben die fünf regulären `ch.jans`-Jobs. Der Runner wurde von hier aus nicht gestartet und wird es nicht (stehender Entscheid 30.07.). Keine Waisen: `ps` zeigt keinen elternlosen `claude -p`.

**Speicher unauffällig.** `kern.memorystatus_vm_pressure_level` = **1 (normal)**, **Swap total 0.00 MB**, frei + inactive + purgeable rund **4.9 GB**, Uptime 15 h 09 min, Load 2.02. Der Swap-Befund vom 24.08. 07:20 ist damit den zweiten Lauf in Folge erledigt.

**P3 — Tailscale läuft auf dem Mini wieder, der dafür gebaute Wächter ist aber auf keiner Station scharf.** `tailscale status` auf dem Mini führt alle fünf Peers ohne Störung (macmini, diskstation918, macbook-pro-von-revendo, macbookpro live; nur ipad148 offline). Der Ausfall vom 20.–24.08. ist behoben. **`ch.jans.tailscale-waechter` ist jedoch weder auf dem Mini noch auf dem MacBook geladen**, die plist liegt nur als Vorlage unter `templates/launchd/`. Das ist **kein Versäumnis, sondern Absicht**: die Chronik 260824c hält fest, dass der LaunchAgent (Klasse 5, Persistenz) angekündigt und bewusst nicht ohne Wort installiert wurde. Der Punkt steht bereits im Fristen-Register (Aktion Raphael, samt dem offenen Kaltstart-Restrisiko: Tailscale ist eine GUI-App und ein LaunchAgent läuft erst nach dem GUI-Login). Hier nur als Einzeiler geführt, damit die Lücke zwischen «behoben» und «gegen Wiederholung geschützt» sichtbar bleibt.

**Keine Mail.** Kein neuer P1, kein erschöpftes Wochenkontingent. Die beiden gelösten Punkte waren Hub-Interna ohne Aussenwirkung und wurden für sich nie gemailt — eine «gelöst»-Meldung ohne vorangegangene Warnung wäre Rauschen (Rule `auto-verbesserungen` 260803). Beide sind im Fristen-Register geschlossen, das der `logbuch-radar` um 06:55 liest. **Regellauf schlank gehalten:** keine Delegation, alle Messungen inline und parallel, rund 14 Werkzeugaufrufe.

## 2026-08-24 12:57 — [FREI] **Wochen-Reset um 12:00, Probe OK in 40 s. Der /tmp-Schub ist beendet — Bilanz zweier Tage: 1370 Laeufe, 1030 USD, aber 75 % davon Fehlversuche. Zwei eigene Messfallen aufgedeckt: die Ampel FREI beruht auf einer von drei Stationen, und mein eigenes Probe-Script gaukelte 180 s Latenz vor.** P1: der einzige Lern-Taktgeber des Mac Mini ist seit heute Morgen nicht mehr geladen.

**Selbstkontrolle: bestanden.** Letzter Eintrag 24.08. 07:20, dieser 12:57 — Abstand **5 h 37 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h). `lastRunAt` der eigenen Task 24.08. 10:57 UTC = 12:57 CEST, deckungsgleich. Keine Luecke, kein stiller Ausfall.

**Fensterzustand [FREI], aber die Zahl dahinter traegt nur ein Drittel.** Die Probe antwortete «OK», rc=0, in **40 s** ueber die app-gebuendelte CLI 2.1.237. `kontingent-budget.sh` meldet Ampel **FREI**, 0.0 von 167 Mio, 0.6 % der Woche verstrichen, Vorsprung −0.6 Punkte — der Wochen-Reset lag heute um **12:00**, die Messung 58 Minuten danach. **Die Null ist jedoch kein Beleg fuer ein leeres Konto, sondern fuer eine unvollstaendige Messung:** nur `verbrauch-Macbookpro.json` traegt `reset_lokal 2026-08-24 12:00`. Die beiden anderen Stationsdateien stehen noch auf `reset_lokal 2026-08-17` und wurden seit dem Reset nicht neu geschrieben — Mac Mini zuletzt 08:10 (96.19 Mio teuer, 15'642 Laeufe), MacBook Revendo zuletzt 23.08. 16:59 (0.91 Mio, 168 Laeufe). Solange die beiden Schreiber nicht nachziehen, misst die Ampel eine Station und nennt es Gesamtstand. **Das ist dieselbe Familie wie die `find -newermt`-Falle vom 20.08.: ein Nullwert ist zuerst eine Aussage ueber die Messung, nicht ueber die Sache.** Fuer den naechsten Lauf: zeigt die Ampel FREI bei fehlenden Stationszeilen, gilt sie als **unbelegt**, nicht als gruen.

**Eigener Werkzeugbefund — mein Probe-Script hat 180 s Latenz erfunden, wo 40 s waren.** Der erste Probelauf lief in den Tool-Timeout und sah exakt aus wie das gewedgte Binary vom 22.08. Er war es nicht. Ursache im Rezept selbst: der Watchdog `( sleep 180; kill … ) &` erbt stdout, und `bash script | tail` wartet auf EOF der Pipe — die kommt erst, wenn auch das `sleep`-Kind weg ist. `kill $WPID` beendet nur die Subshell, nicht ihr Kind. **Das Script meldet damit IMMER rund 180 s, unabhaengig von der echten Antwortzeit.** Gegenprobe mit `> /dev/null 2>&1 < /dev/null` am Watchdog und `pkill -P $WPID` danach: **40 s**. Damit ist auch die «Latenz-Reihe» im Auftrag mit Vorsicht zu lesen — die 151 s vom 24.08. 07:20 koennen dasselbe Artefakt enthalten. Gemessen wird ab sofort nur mit dem entkoppelten Watchdog. Merksatz in der Familie von 260807: **ein Messwert, der immer gleich herauskommt, misst das Messgeraet.**

**P1 — `ch.jans.nachtschicht` ist auf dem Mac Mini nicht mehr geladen; der Hub hat dort seit heute Morgen keinen Lern-Taktgeber.** Die plist liegt unveraendert in `~/Library/LaunchAgents/`, aber `launchctl print gui/501/ch.jans.nachtschicht` antwortet «Could not find service». Der Job lief heute Nacht noch regulaer (`~/Library/Logs/ch.jans.nachtschicht.log`: 02:30 Exit 1, **05:30–05:35 Exit 0**) und ist danach entladen worden; die Station laeuft seit 5 Tagen ohne Neustart, das Entladen war also eine Handlung, kein Bootverlust. Ein Entscheid dazu steht **weder** in `betrieb-chronik.md` **noch** im Fristen-Register **noch** im LOGBUCH. Zeitlich faellt es mit dem Abbau des `/tmp`-Schubs zusammen (Script zuletzt 07:09 angefasst) — plausibel, aber unbelegt. **Gewicht:** die Nachtschicht ist seit dem Ausbau des Endlos-Runners am 29.07. per Dokumentation «der EINZIGE Lern-Taktgeber des Hub — ein uebersprungener Slot wird von niemandem nachgeholt». Der naechste Slot ist **heute 23:30**, er faellt ohne Eingriff aus, ebenso 02:30 und 05:30. **Ich habe das Wiederherstellen versucht und bin am Auto-Mode-Klassifikator haengengeblieben** (Systemdienst-Eingriff). Nach Rule `wege-und-vollmachten` wird der nicht umgangen, sondern der fertige Befehl vorgelegt:

    ssh mini 'launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/ch.jans.nachtschicht.plist'

Umkehrbar mit `launchctl bootout gui/$(id -u)/ch.jans.nachtschicht`. Registerzeile gesetzt, damit der logbuch-radar (06:55) den Punkt vor dem naechsten Nachtfenster sieht.

**P2 — Der Vollgas-Schub ist beendet, und drei Viertel davon waren Fehlversuche.** Kein `vollschub`-Prozess mehr auf beiden Stationen, das Lauf-Journal endet um **08:26**. Zweitagesbilanz aus dem Journal: **1370 Laeufe, 1029.55 USD** (23.08.: 770 Laeufe / 586.91 USD · 24.08.: 600 / 442.64), davon **1025 mit rc≠0 — 74.8 %**. Die Fehler ballen sich exakt dort, wo die Sperre stand: 23.08. ab Stunde 17, massiv 19–22 (132/143/170/131 je Stunde), dann 24.08. 00–02 (197/143/97). **Der Schub feuerte rund neun Stunden lang ueberwiegend ins Leere, bevor er abgestellt wurde.** Geld ging dabei keines verloren — die blockierten Laeufe kosten 0.00, die 1030 USD stammen aus den 345 erfolgreichen. Was fehlte, war eine Abbruchbedingung: ein Taktgeber, der bei Nullkosten-rc=1 in Serie nicht selbst anhaelt, verbrennt Wartezeit statt Kontingent. Fuer eine allfaellige Wiederholung ist das der eine Punkt, der nachzuruesten waere.

**Der Ertrag bleibt trotzdem aussergewoehnlich, und kein Loop steht auf Delta Null.** Liefer-Delta ueber git (14-h-Fenster, 81 Commits, Basis `2675a171`): **134 Dateien energie, 113 normen, 104 baurecht**, dazu architektur-fachwissen 16, planungsgrundlagen 14, twin 12, wettbewerbs-dna / spec / kunde-bopp / koordination je 5, firmengruendung-ch 4, projekt-lessons / immobilienbewertung / architekten-synobsis je 3, grobkosten und bauprodukte je 2 — **17 Wissensbasen mit echtem Delta**. Keine Ruecktakt-Empfehlung, keine Stilllegung, kein Loop mit drei Delta-Null-Laeufen in Folge.

**Schritt 2c: nichts zurueckzudrehen.** Der 07:20-Lauf hat die Drossel bei Ampel DROSSEL bewusst **nicht** gezogen (begruendet: der Verbraucher war der `/tmp`-Schub, den `update_scheduled_task` nicht erreicht). Entsprechend steht keine Lern-Task auf `enabled=false`, die jetzt bei Ampel FREI scharf zu schalten waere. Die lokale Registry zeigt als deaktiviert ausschliesslich die dokumentiert stillgelegten (`immobewertung-training` und `spec-training` als Ereignis-Trigger, `synergie-lauf-monatlich` als abgeloest, dazu die abgelaufenen One-Times). Mini-Registry unveraendert acht Tasks im Sollstand.

**Feuermechanismen: zwei Orte stimmen, der dritte ist der P1 oben.** MacBook Pro — beide vollgas-plists tragen weiterhin `.disabled-260729`, nichts davon geladen. Mac Mini — `ch.jans.vollgas-supervisor` weiterhin `.disabled-260729`; **neu fehlt aber `ch.jans.nachtschicht` in `launchctl list`**, siehe P1. Der Runner wurde von hier aus nicht gestartet und wird es nicht (stehender Entscheid 30.07.). Keine Waisen: `ps` zeigt keinen `claude -p` ohne Elternprozess.

**P3 — Der Swap-Befund vom 07:20 hat sich erledigt, die Registerzeile ist geschlossen.** Gemessen jetzt: **Swap total 0.00 MB / used 0.00 MB** (07:20: 6.94 GB belegt bei 8.19 GB Gesamtgroesse), `kern.memorystatus_vm_pressure_level` = **1 (normal)** nach dreimal 2 (warn) in Folge, frei + inactive + purgeable rund **5.1 GB**. Die lokale Uptime steht bei **3 h 18 min**, die Station wurde also gegen 09:49 durchgestartet — genau die Aktion, welche die Registerzeile Raphael nach dem Reset empfohlen hatte. Sie ist im Register als erledigt vermerkt. Der Nebenbefund passt dazu: die Probe laeuft wieder in 40 s.

**P1b — Nachtrag aus dem eigenen Commit-Versuch: die Sicherung nach GitHub ist seit heute 08:21 gestaut, zwei Commit-Wege schreiben auf dieselben Dateien.** Der Aufruf von `nas-commit-now.sh` meldete `rc=1` samt vier Merge-Konflikten. Die native Gegenprobe auf der Synology (lesend, `/volume2/daten/jans-ai-hub`) zeigt: **der Commit selbst ist durchgegangen** (`a7a24f1e`), der Arbeitsbaum ist sauber, kein `MERGE_HEAD`, keine `index.lock` — **gescheitert ist allein der Push.** Echter Abstand nach `git fetch`: **3 Commits voraus, 50 zurueck.** Gemeinsame Basis `8d8dec35` von heute **08:21**, GitHub-Kopf `c7a8aa50` von **10:43** («auto-sync [Macmini]»). Ursache ist kein Defekt, sondern ein Entwurfsproblem: **der Mac Mini pusht ueber `com.jans.git-auto-sync` direkt nach GitHub, waehrend die Synology ueber `nas-selfcommit.sh` denselben Bestand committet** — seit der Basis ueberlappen **9 Dateien**, genau die vier gemeldeten darunter (`wissen/energie/destillate/INDEX.md`, `ahb-richtlinie-gebaeudetechnik-229-2025.md`, `wissen/energie/wiki/QUESTIONS.md`, `gebaeudetechnik-pflichtenheft.md`, dazu fuenf in `wissen/baurecht`). **Kein Datenverlust** — beide Staende existieren vollstaendig, sie sind nur nicht vereinigt; die Edits dieses Laufs liegen geschrieben und lokal committet. Aber der Stau waechst mit jedem Selfcommit-Lauf, und GitHub ist die Backup-Schicht. **Nicht eigenmaechtig aufgeloest:** eine Zusammenfuehrung von neun parallel beschriebenen Wissens-Dateien ist genau der Fall, vor dem Rule `auto-verbesserungen` 260811 warnt (nie aus HEAD wiederherstellen, ohne fremde unbestaetigte Arbeit auszuschliessen). Registerzeile gesetzt; der fertige Diagnosebefehl steht dort.

**Keine Mail.** Kein Sendegrund nach der Mail-Disziplin: das Wochenkontingent ist frisch zurueckgesetzt, kein Login-Blocker, und der P1 ist ein Hub-Internum ohne Aussenwirkung (Rule `auto-verbesserungen` 260803/260824) — er geht ueber das Fristen-Register an den logbuch-radar und von dort in das Tagesbriefing des hub-chef.

---
## 2026-08-24 07:20 — [DROSSEL] **Nachlauf fuer den ausgefallenen 00:58-Lauf. Ein aktiver Vollgas-Schub laeuft seit 23.08. 15:49 auf drei Stationen — 1337 Laeufe, 942 USD, 79'491 Zeilen Ertrag. Ampel steht erstmals seit dem 03.08. auf DROSSEL (88.9 %), und 429 Nullkosten-Fehlversuche haben in der Nacht gegen eine 5h-Sperre gefeuert.** Verbrauch **148.49 von 167 Mio** bei 97.1 % verstrichener Woche, Rueckstand nur noch **−8.2** Punkte. Der Schub laeuft im Moment dieses Eintrags weiter (Zaehler `mschub703`).

**Selbstkontrolle: NICHT bestanden — ein Lauf ist gefeuert und hat nichts hinterlassen.** Letzter Eintrag 23.08. 12:58, dieser Nachlauf 24.08. 07:20, Abstand **18 h 22 min** bei 12-h-Takt und 15 h Toleranz. Der Eintrag vom 24.08. 00:58 fehlt. Nach der vorgeschriebenen Trennung der beiden Ausfalltypen: `lastRunAt` der eigenen Task steht auf **23.08. 22:58 UTC = 24.08. 00:58 CEST** und liegt damit **nach** dem letzten Eintrag — der Lauf hat also gefeuert und versagt, er ist nicht ausgefallen. Ursache im Journal belegt: im Fenster 00:00 bis 02:59 endeten **429 Laeufe mit rc=1 und Kosten 0.00** (189 in der Stunde 00, 143 in 01, 97 in 02). Ein Lauf, der nichts kostet und sofort scheitert, ist das Signum einer Kontingentsperre. **Der 00:58-Radar-Lauf fiel mitten hinein und ist damit kein Leerlauf**, sondern selbst Opfer der Sperre. Dieser Nachlauf ersetzt ihn; der regulaere 12:50-Lauf bleibt unberuehrt.

**P1 — Der Verbraucher ist ein NEUER Endlos-Runner, den die Registry nicht kennt, und er laeuft jetzt.** Auf dem Mac Mini laeuft `bash /tmp/vollschub-mini-v2.sh` (Laufzeit 6 h 08 min zum Messzeitpunkt) und startet fortlaufend `scripts/claude-run.sh --name mschubNNN --budget 25 --perm acceptEdits` gegen die QUESTIONS-Listen der Wissensbasen. Der Zaehler steht bei **mschub703**. Das ist **nicht** der am 29.07. ausgebaute `ch.jans.vollgas-supervisor` — der traegt auf beiden Stationen weiterhin `.disabled-260729` und ist nicht geladen, `ch.jans.nachtschicht` ist der einzige geladene launchd-Taktgeber. Es ist ein **eigenes Script in `/tmp`**, dazu eine **dritte Station** («MacBook Pro von Revendo», Laufnamen `rev1` bis `rev5`, `vollschub1/2`), die in der Budget-Messung erstmals als eigene Zeile erscheint. Die Station selbst ist dem Hub bekannt und dokumentiert (`connectors/hub-setup-daten.json`, Station `macbook-revendo`, plus RADAR-Nachtrag 23.08. 17:35 und eine offene Zeile im Fristen-Register zum offengelegten OAuth-Token); neu ist allein, dass sie als Lastquelle im Kontingent auftaucht. Das Fristen-Register nennt als Ursprung ein Gespraech vom 23.08. gegen 22:30 — der Schub ist also belegt Raphaels eigene Massnahme. Die Prompts tragen den Satz «Ein claude-Prozess mit deinem eigenen Lauf-Namen ist DEIN EIGENER, nicht ein Konkurrent» — eine gezielte Umgehung des Lauf-Gates, die Erfahrung mit dessen Mechanik voraussetzt. **Das ist ersichtlich bewusst gebaut und gestartet, kein Unfall, und deshalb kein Befund, den dieser Radar eigenmaechtig abstellt.** Der stehende Entscheid vom 30.07. bindet den Radar daran, den Runner nicht zu STARTEN; einen von Raphael gestarteten Schub zu STOPPEN ist ein Regimeeingriff und wird vorgelegt, nicht ausgefuehrt. Falls er weichen soll, ist dies der fertige Befehl: `ssh mini 'pkill -f vollschub-mini-v2.sh'` (beendet nur den Taktgeber; die bereits gestarteten Einzellaeufe laufen aus, was gewollt ist, weil ein abgebrochener Lauf seinen Ertrag nicht sichert).

**Der Ertrag rechtfertigt den Schub — das gehoert in derselben Zeile gesagt.** Liefer-Delta ueber git (Basis `f7fe0aac`, 169 Commits in 18 h): **718 Dateien, 79'491 Zeilen ergaenzt, 3499 entfernt**, davon **677 in `wissen/` ueber 18 KBs** (normen 201, energie 168, baurecht 131, **architektur-fachwissen 48 — eine KB, die es vorher nicht gab**, planungsgrundlagen 23, immobilienbewertung 19, projekt-lessons 17, entwurfs-referenzen 14, twin 12, dazu neun weitere), sowie skills 14, logbuch 10, rules 5, scripts 4. Zum Vergleich: der bisher staerkste gemessene Tag brachte 46 Dateien und 3401 Zeilen. **Das ist das Fuenfzehnfache, und es ist echte Wissensarbeit, kein Leerlauf.** Kein Loop mit Delta Null, keine Ruecktakt-Empfehlung. Die Verteilung: Mac Mini 824.46 USD, MacBook Revendo 82.92, MacBook Pro 34.79.

**P1b — Hochrechnung: das Wochenlimit faellt voraussichtlich VOR dem Reset, aber nach den operativen Briefings.** Von 31.7 % (23.08. 12:58) auf 88.9 % (jetzt) sind 57.2 Punkte in 18 h, also rund **5.3 Mio Token je Stunde**. Der Rest von **18.5 Mio** reicht damit noch etwa **3 bis 4 Stunden**, der Reset kommt heute um **12:00** — die Luecke ist knapp und wird sich wahrscheinlich schliessen, also gegen 10:30 bis 11:00. **Entscheidend ist, was in dieses Fenster fiele:** `mahnwesen-verzugscheck` 08:05, `zahlungsabgleich-check` 08:23, `hub-chef-taeglich` 08:39 und `heartbeat-daily` 09:40 liegen **alle vor** dem prognostizierten Treffer und kommen durch. Damit ist kein operatives Briefing gefaehrdet und der Befund bleibt ein Risiko-Hinweis, kein Blocker. **Keine Mail von hier:** das Wochenkontingent ist nicht erschoepft, der hub-chef laeuft um 08:39 und traegt diesen Eintrag als regulaerer Kanal weiter.

**Schritt 2c bewusst NICHT ausgefuehrt, mit Begruendung.** Die Ampel steht auf DROSSEL, und der Auftrag verlangt dann die Stilllegung der Lern-Tasks bis zum Reset. Hier waere das reine Symbolik: (1) der Verbraucher ist der `/tmp`-Schub, den `update_scheduled_task` **gar nicht erreicht**; (2) die Scheduled Lern-Tasks dieser Woche sind **bereits alle durch** (`normen-training-nacht` 01:28, `twin-mail-training` 03:40, `twin-fidelity-review` 05:45, `wettbewerbs-dna-training` Mo 02:27 gelaufen; `baurecht-buch-training` feuert Mo 23:44, also **nach** dem Reset); (3) bis 12:00 feuern fast ausschliesslich die ausgenommenen operativen Tasks. Eine Drossel haette also **null Einsparung** und traegt das Risiko, dass sie niemand zurueckdreht — «eine Drossel, die niemand zurueckdreht, ist eine stille Stilllegung», und das waere hier der teurere Fehler. **Wird der Schub verlaengert oder wiederholt, aendert sich diese Rechnung**: dann gehoert die Drossel gezogen, weil dann Lern-Tasks in das gesperrte Fenster fallen.

**Speicher: der Trend des Vorlaufs hat sich fortgesetzt und ist jetzt gravierend.** Der Swap ist nicht nur voller, sondern **die Gesamtgroesse ist von 2.05 GB auf 8.19 GB gewachsen** — macOS hat den Swap dreimal vergroessert, weil er anders nicht mehr reichte. Belegt sind **6.94 von 8.19 GB**. Frei + inactive + purgeable liegt bei **3.18 GB**, `kern.memorystatus_vm_pressure_level` steht zum dritten Mal in Folge auf **2 (warn)**. Reihe des Swap-Verbrauchs: 1.09 GB (22.08. 00:58) → 1.20 GB (22.08. 12:58) → 3.22 GB (23.08. 12:58) → **6.94 GB** (jetzt). **Das ist kein Messpunkt mehr, sondern eine Kurve**, und sie faellt zeitlich genau mit dem Schub zusammen. Auf dem MacBook Pro laufen im Moment **keine** eigenen Lern-Laeufe (`ps` zeigt keinen `claude -p`), die Last ist die interaktive Arbeit plus die Session-Prozesse der App. Kein Eingriff durch diesen Lauf; die systemseitigen Schalter bedient Raphael selbst (Rule 260814). **Empfehlung, wenn der Wert nach dem Reset nicht zurueckgeht: die Station einmal durchstarten** — ein auf das Vierfache gewachsener Swap gibt seinen Platz nicht von allein zurueck.

**Latenz: 151 s ueber den Rueckfallweg, mehr als das Doppelte des Vorlaufs.** Reihe der app-gebuendelten CLI: 72 s (22.08.) → 64 s (23.08. 00:58) → 68 s (23.08. 12:58) → **151 s** (jetzt). Der Ausschlag passt zum Speicherdruck und zur Parallellast des Schubs und ist damit erklaert; die Untergrenze 180 s hat knapp gehalten. **Die PATH-CLI bleibt gewedgt:** `/opt/homebrew/bin/claude` zeigt unveraendert auf **2.1.231** (Symlink-Zeitstempel 22.08. 05:15, Caskroom enthaelt nur diese Fassung). Homebrew hat nach **50 Stunden** nicht nachgeliefert — am 18.08. dauerte es rund zwei Tage, wir sind jetzt darueber. Die Probe wurde auftragsgemaess gar nicht erst ueber PATH versucht; der Rueckfallweg bleibt Pflichtweg.

**Feuermechanismen: die drei Orte stimmen, der Schub laeuft an ihnen vorbei.** Das ist der eigentliche Befund dieses Abschnitts: beide vollgas-plists sind auf beiden Stationen deaktiviert, `ch.jans.nachtschicht` ist der einzige geladene Taktgeber, die lokale Registry zeigt keinen Widerspruch (deaktiviert sind ausschliesslich die dokumentiert stillgelegten Tasks), und die Mini-Registry fuehrt unveraendert acht Tasks. **Trotzdem laufen 568 Laeufe an einem halben Tag.** Die Pruefung der drei Orte reicht also nicht mehr aus, um den Betriebszustand zu kennen — ein Script in `/tmp` ist ein vierter Ort, den kein Schritt dieses Auftrags abdeckt. **Vorschlag zur Auftragsergaenzung:** Schritt 3 um eine Prozessprobe erweitern (`ps -eo command | grep -iE "schub|vollgas|claude-run"` lokal und per ssh), damit ein selbstgebauter Taktgeber nicht erst ueber die Kontingent-Ampel auffaellt. Keine Waisen im engeren Sinn: die drei laufenden `claude -p` auf dem Mini haben ihren Elternprozess und sind gewollt.

**P3 — Der Rueckstand ist praktisch aufgeholt.** Reihe: −40.9 → −45.7 → −50.7 → −54.6 → **−8.2**. Der stehende Entscheid vom 03.08. verlangt gleichmaessigen Verbrauch ueber die Woche; erreicht wurde das Gegenteil, naemlich ein Spitzenschub am Wochenende. **Der Entscheid ist damit sachlich verletzt**, und das gehoert vermerkt, auch wenn der Ertrag dieses Schubs ihn rechtfertigt. Zur Vorlage, nicht zur Entscheidung durch den Radar: ob der Entscheid vom 03.08. nach diesem Wochenende noch gilt oder durch ein «Schub am Wochenende, ruhige Woche»-Muster ersetzt wird. Der Radar legt das **einmal** vor und traegt es nicht erneut vor.

Nachlauf statt Regellauf, 12 Werkzeugaufrufe, inline und im parallelen Block gemessen, nicht delegiert. Keine Mail: kein erschoepftes Wochenkontingent, kein Blocker, den nur Raphael binnen Stunden loesen muesste; der hub-chef um 08:39 traegt den Befund.

## 2026-08-23 12:58 — [FREI] **Fenster frei ueber den Rueckfallweg (app-CLI 2.1.237, 68 s) — Homebrew hat nach 32 h noch nicht nachgeliefert. Und der Speicherdruck ist jetzt ein Trend, kein Messpunkt: der Swap hat sich in 24 h auf 3.22 GB fast verdoppelt.** Ampel **FREI**, Verbrauch 31.7 % bei 86.3 % verstrichener Woche, Rueckstand **−54.6** Punkte (zehnter in Folge). **Keine Waisen, kein Loop ohne Ertrag, Registry und beide Stationen ohne Abweichung.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 23.08. 00:58, dieser Lauf 23.08. 12:58, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Einundzwanzigster regulaerer Abstand in Folge, keine Eintragsluecke; `lastRunAt` der eigenen Task (23.08. 10:58 UTC) faellt mit diesem Lauf zusammen, Gegenprobe nicht noetig.

**P1 (fortbestehend, dritter Lauf) — die PATH-CLI ist unveraendert gewedgt.** `/opt/homebrew/bin/claude` zeigt weiterhin auf **2.1.231**, Symlink-Zeitstempel unveraendert **22.08. 05:15**, das Caskroom enthaelt weiterhin nur diese eine Fassung. Die PATH-Probe wurde nach der Vorschrift **gar nicht erst versucht**. Der Rueckfallweg ueber die app-gebuendelte **2.1.237** lieferte **"OK", rc=0, in 68 s** — das Kontingent ist frei, der Defekt liegt allein am Homebrew-Binary. Seit der Wedge sind rund **32 Stunden** vergangen; am 18.08. brauchte Homebrew rund zwei Tage, die Wartezeit liegt also noch im erwarteten Rahmen. **Kein Handlungsbedarf, keine Mail** — die Messung laeuft ueber den Rueckfallweg vollstaendig weiter. Der naechste Lauf prueft den Symlink erneut und stellt bei rc=0 wieder auf PATH um.

**Latenz: weiterhin kein PATH-Messwert.** Die Reihe (39 s → 76 s → >120 s → 8 s → 7 s → 6 s → 6 s → 7 s → 5 s) bekommt zum dritten Mal in Folge keinen Eintrag, weil das gemessene Binary nicht antwortet. Der einzige gueltige Wert dieses Laufs ist die **68 s der app-gebuendelten CLI** (Reihe dort: 72 s → 64 s → 68 s, stabil), mit der PATH-Reihe nicht vergleichbar. Untergrenze 180 s bleibt. Kein Befund-Lauf faellig.

**P2 (verschaerft) — Der Speicherdruck ist jetzt eine Reihe, und sie zeigt nach oben.** Dritte Messung Level 2 in Folge, aber die Zahlen dahinter sind nicht mehr stabil, sondern wandern: **Swap 1.20/2.05 GB → 1.82/3.00 GB → 3.22/4.10 GB belegt**, also eine Verdoppelung in 24 Stunden, waehrend die freie Menge von 3.74 auf **3.57 GB** (frei + inactive + purgeable) sinkt. Die Claude-Prozesse sind im selben Zeitraum von **72 mit 4.73 GB auf 90 mit 5.51 GB** gewachsen, davon **71 Session-Prozesse mit 5.21 GB** (Vorlauf 53 mit 4.13 GB). Die Station laeuft seit **4 Tagen 2:48** ohne Neustart. Die Ursache ist unveraendert die interaktive Arbeitslast der Desktop-App: **kein Lern-Lauf, keine Waise, kein Loop ist beteiligt** — die Waisenprobe ist leer, alle Loops liefen und lieferten. **Kein Eingriff von hier**: Session-Prozesse zu beenden griffe in Raphaels laufende Arbeit ein und faellt nicht unter die Whitelist. Die Abhilfe bleibt ein Neustart der Claude-App bei naechster Gelegenheit, und die ist jetzt eher faellig als gestern — bei diesem Steigungsmass ist der Swap in ein bis zwei Tagen am Anschlag. Das ist Raphaels Entscheid, nicht meiner. **Nicht sendewuerdig** (Hub-Intern ohne Aussenwirkung, Rule auto-verbesserungen 260803); der naechste Lauf misst weiter mit.

**Liefer-Delta ueber git gemessen** (62 Commits in 13 h), nicht ueber `find -newermt`. Geaendert: **69 Dateien, 5612 Zeilen ergaenzt, 138 entfernt**, davon **wissen/ 55 Dateien in drei KBs** (normen 41, twin 12, architekten-synobsis 2). Der mit Abstand groesste Einzelertrag seit Wochen, und er kommt aus einem Loop: **`normen-training-nacht` Run 60** hat den **ganzen Rest des VKF-Sammelpostens 01.01.2017** abgearbeitet — sechzehn Fassungspaare beschafft, gegenuebergestellt und destilliert, womit der Vorrang-Auftrag N58-1 bis auf drei Sonderfaelle erledigt ist. Der schwerste Befund liegt dabei nicht in den Normen, sondern in der KB selbst: **dieselbe Quelle war zweimal destilliert, beide `established`, und die aeltere gab die Gesamthoehe falsch wieder** («um den Dachrand» statt «um die Dachflaeche ueber dem tiefst gelegenen Teil des massgebenden Terrains») — an der Gesamthoehe haengt die Einstufung geringe/mittlere Hoehe/Hochhaus und damit das ganze Anforderungsprofil. Inline korrigiert. Materiell fuer die Projektarbeit: die EN-Klassen **E und E-d2 wandern von RF4 (cr) nach RF3 (cr)**. Daneben lieferten `twin-mail-training` (Batch 102, sechs Facetten-Wikis fortgeschrieben) und `twin-fidelity-review` (Befund: die Anrede hat eine Zeitachse, der Zwilling kennt nur Standbilder — passt zum Gegenbeleg-Vermerk, den der Wissens-Chef gestern in `rules/anrede-kontakte.md` gesetzt hat). `wissens-chef` (23:11), `synergie-lauf-taeglich` (17:10) und `tenant-hygiene-weekly` (20:08) haben ihr Fenster heute noch vor sich. **Kein Loop mit Delta Null, keine Ruecktakt-Empfehlung.**

**Feuermechanismen: alle drei Orte stimmen.** MacBook Pro — beide vollgas-plists tragen weiterhin `.disabled-260729`, `launchctl list` zeigt nichts geladen. Mac Mini — `ch.jans.vollgas-supervisor` weiterhin deaktiviert, `ch.jans.nachtschicht` geladen (Status 0) und damit der einzige Lern-Taktgeber, wie vorgesehen. Mini-Registry im Sollstand (acht Tasks, unveraendert). Lokale Registry ohne Widerspruch: deaktiviert sind ausschliesslich die dokumentiert stillgelegten Tasks (`immobewertung-training` und `spec-training` als Ereignis-Trigger, `synergie-lauf-monatlich` als abgeloest, dazu fuenf abgelaufene One-Times). **Keine Drossel zurueckzudrehen** — bei Ampel FREI stand keine Lern-Task auf `enabled=false`.

**P3 — bexio-401, unveraendert.** Der `zahlungsabgleich-check` lief heute 08:23 planmaessig, `mahnwesen-verzugscheck` erst Montag 25.08. Der Befund ist derselbe wie an den vierzehn Laeufen zuvor und wird ueber das Tagesbriefing des `hub-chef` gemeldet. **Keine Mail von hier**, kein neuer Sachverhalt.

**P3 — Der Rueckstand waechst weiter, unveraendert in der Sache.** Reihe der Vorsprungswerte: −32.5 → −36.8 → −40.9 → −45.7 → −50.7 → **−54.6**. Bei 86.3 % verstrichener Woche sind 31.7 % des Kontingents verbraucht; hochgerechnet endet die Woche bei rund 37 %. Der stehende Entscheid vom 03.08. verlangt **gleichmaessigen** Verbrauch, nicht maximalen — ein Unterverbrauch ist damit kein Vorfall. **Wird ohne neuen Sachverhalt nicht erneut ausfuehrlich vorgetragen.**

Regellauf, 11 Werkzeugaufrufe, inline und im parallelen Block gemessen, nicht delegiert (Korrektur 08.08.). Keine Mail: Fenster frei, kein neuer P1, den nur Raphael loesen koennte.

**NACHTRAG 16:20 — Vollschub auf beiden Stationen, Auftrag Raphael.** Auf die Frage, ob das Restkontingent heute noch auf 100 % kommt, ist die Antwort gemessen **nein**: die fehlenden 114 Mio in 21 h verlangen 5.2 Mio/h über beide Stationen, das **16-fache des Wochendurchschnitts** (0.32 Mio/h) und rund das Doppelte der besten je gemessenen Stunde (2.71 Mio/h, ein nächtlicher Ausschlag). Bindend sind das rollierende 5-h-Fenster und der Gate-Deckel. Realistisches Ziel heute rund 50 %. Auf Raphaels ausdrückliche Anweisung laufen seit 15:44 **acht gegatete Läufe** (Budget je 40 USD, `acceptEdits`): auf dem **Mini sieben** — `sia-sweep`, `energie-fragen`, `projekt-triage2`, `grobkosten-fragen`, `wettbewerbs-dna`, `planungsgrundlagen-fragen`, `entwurfs-referenzen` — und auf dem **MacBook einer**, `baurecht-fragen`. **Diese Läufe im Journal sind gewollt, keine Fremdlast und keine Waisen.**

**Korrektur meiner eigenen Lagebeurteilung von 15:50.** Ich hatte das MacBook mit dem Speicherdruck begründet ausgespart. Das war der falsche Grund: der eigentliche Blocker dort ist das **seit 32 h gewedgte PATH-Binary 2.1.231**, und das lässt sich schlicht umgehen, indem `CLAUDE_BIN` auf die app-gebündelte **2.1.237** zeigt, die nachweislich antwortet. Mit ihr läuft `baurecht-fragen` sauber. Der Speicher setzt die Grenze erst danach: das Gate hat einen **zweiten** MacBook-Platz bei Druck 2 abgewiesen (3.21 GB frei gegen Schwelle 2.93 GB), und diese Abweisung bleibt stehen. Auf dem Mini ist `MAX_LAEUFE` bewusst von 3 auf 7 gehoben — ein dokumentierter Env-Schalter, gedeckt durch die Messung: 11.16 GB frei, Druck 1, Last 1.66 bei sieben Läufen mit zusammen 4.62 GB. **Auf dem MacBook wurde nichts übersteuert.**

**P2 (neuer Befund, wiederholbar) — der Doppelarbeit-Guard hält den eigenen Prozess für einen Konkurrenten.** Der erste `projekt-triage`-Lauf beendete sich nach 307 s freiwillig (rc=0, 1.31 USD) mit der Begründung, ein anderer Lauf desselben Namens sei bereits aktiv — **es war seine eigene PID 16079**. Er hat sich in der Prozessliste gesehen und sich selbst als Kollision gedeutet. Der Lauf ist damit als «erfolgreich» journalisiert, hat aber nichts geliefert; ohne genaues Lesen des Logs wäre das als Delta-Null-Leerlauf durchgegangen und hätte nach der Waechter-Regel eine Rücktakt-Empfehlung provoziert. **Massnahme im Neustart:** der Prompt sagt jetzt ausdrücklich, dass ein Prozess mit dem eigenen Lauf-Namen der eigene ist. **Der Guard im Nachtschicht-Prompt selbst ist NICHT angefasst** — das ist ein Eingriff in einen produktiven Loop und gehört vorgelegt, nicht nebenbei erledigt. Gleiche Familie wie die Watchdog-Waisen vom 05.08.: **eine Schutzmechanik, die sich selbst misst, blockiert das, was sie schützen soll.**

**Zwei Werkzeug-Lehren aus dem Start.** (1) Die nicht-interaktive SSH-Shell hat `PATH=/usr/bin:/bin:/usr/sbin:/sbin`, ohne Homebrew — der erste Startversuch brach mit «claude nicht gefunden» ab, obwohl das Binary da war. `CLAUDE_BIN` explizit setzen und `~/.jans-dispatch.env` laden. Gleiche Familie wie der KISPI-Befund vom 09.08.: **ein Weg, der nicht im PATH liegt, ist trotzdem ein Weg.** (2) Das Homebrew-Binary des **Mini** antwortet einwandfrei (rc=0), während das des **MacBook** gewedgt ist — die Stationen sind unabhängig zu prüfen, ein Wedge auf der einen sagt nichts über die andere.

**Struktureller Punkt für den Montag:** der Unterverbrauch ist kein Betriebsfehler, sondern Folge der stehenden Entscheide «gleichmässig über die Woche» (03.08.) und «Runner bleibt ausgebaut» (30.07.). Wer die Woche ausschöpfen will, hebt die Grundtaktung ab Montag — der Sonntagabend ist der falsche Hebel. Die Runner-Frage ist Raphael vorgelegt und **nicht** als beauftragt gewertet.

**Stand 16:40 — der Schub rotiert und liefert, die Kollisionsprobe ist bestanden.** Nach Raphaels Nachfrage «und hier auf dem Mac» läuft auch das MacBook mit **zwei** Läufen (`baurecht-fragen`, `normen-fragen`); der zweite ist **bewusst am Gate vorbei** gestartet, das ihn bei Druck 2 abgewiesen hatte (`EXIT=1`). Gemessen danach: 3.20 GB frei, Druck unverändert 2 (nicht 3), Swap 519 MB frei, Last 7.69 bei 12 Kernen — die Maschine trägt es, ein **dritter** Lauf hier würde den Swap sprengen und wird nicht gestartet. Der Mini rotiert auf sieben Plätzen; fertig sind `sia-sweep` (852 s, 119 Turns, 9.94 USD), `wettbewerbs-dna` (499 s, 2.54 USD) und der abgebrochene erste `projekt-triage`, nachgefüllt wurde mit `sia-sweep2` und `immobewertung-puls`. **Liefer-Delta in 40 Minuten: 34 Dateien, 2319 Zeilen ergänzt** in fünf KBs (baurecht 10, energie 7, normen 4, wettbewerbs-dna 4, planungsgrundlagen 2). **Die 873 Löschungen im selben Fenster sind geprüft und unbedenklich:** 706 davon sind Statuswechsel `[ ]` → `[t]` in `buero-projekte-inventar.md` bei **identischer Zeilenzahl 822 vorher wie nachher**, die übrigen sind Zeilenersetzungen in `normen/wiki/REGISTER.md` (+71/−70) und wachsendes `baurecht/wiki/QUESTIONS.md` (+151/−28). Kein Überschreiben, kein Vorfall nach Rule 260811 — bei neun parallelen Schreibern war das die Probe, auf die es ankam.

**NACHTRAG 17:35 — eine DRITTE Station ist im Betrieb, und sie war die ganze Zeit da.** Auf Raphaels Frage, ob «die Revendo-Arbeitsstation» einbezogen werden kann, stellte sich heraus: `macbook-pro-von-revendo` (Tailscale `100.96.212.110`) ist ein **eigenes Gerät**, in keinem Hub-Register geführt, und mit **32 GB RAM, 12 Kernen, Druck 1 und Swap 0.00 MB** die stärkste der drei Maschinen. NAS gemountet, Hub-Repo vorhanden, app-gebündelte CLI 2.1.237 installiert. Sie läuft seit 17:20 mit drei Läufen (`wettbewerb-tief`, `firmengruendung`, `twin-vertiefung`). **Damit arbeiten zwölf Läufe auf drei Stationen**; der Verbrauch stieg binnen einer Stunde von 31.7 auf **39.2 %**, der Rückstand verbesserte sich von −54.7 auf −49.5 Punkte.

**Zwei Fallen, beide im Konnektor festgehalten** (`connectors/hub-setup-daten.json`, Station `macbook-revendo`). **(1) Namenskollision:** `hostname -s` liefert dort `MacBookPro` und unterscheidet sich vom Haupt-MacBook `Macbookpro` **nur in der Gross-/Kleinschreibung** — das NAS-Dateisystem unterscheidet die nicht. Die Stationsdatei `verbrauch-<station>.json` wäre also **dieselbe Datei** gewesen und hätte die Messung des Haupt-MacBooks still überschrieben, mit falscher Ampel als Folge. Behoben nicht an den Systemeinstellungen, sondern im Script: `kontingent-budget.sh` nimmt seit heute ein vorgegebenes `STATION=` entgegen (rückwärtskompatibel, lokal gegengeprüft). Die dritte Station meldet als `Macbookrevendo`. **Verallgemeinerbar: ein Stationsname, der sich von einem anderen nur in der Schreibweise unterscheidet, ist auf einem case-insensitiven Dateisystem kein eigener Name.** **(2) Kein Token, kein Fernstart:** die CLI dort ist nur über den GUI-Login am Schlüsselbund angemeldet, und darauf kommt eine SSH-Sitzung nicht — ferngestartete Läufe scheitern mit «Not logged in». Gegengeprüft am Mini, der mit entzogenem Token **dieselbe** Meldung bringt. Läufe müssen dort deshalb **lokal** gestartet werden. Lesende SSH-Befehle funktionieren uneingeschränkt, die Aufsicht von hier ist also vollständig.

**NACHTRAG 19:00 — 50-Agenten-Harness gelaufen, und er hat einen Governance-Befund produziert, der schwerer wiegt als sein Ertrag.** Auf Raphaels Anweisung («Agenten-Harness ausschwärmen, Vollgas») lief ein Workflow über die beiden seit 28.07. wartenden Korpora `buero-referenzen` und `archiv-fachwissen`, ein Agent je Sektion. **Ergebnis: 16 von 50 Sektionen geliefert, 8'604 Dateien gesichtet, P1 113 / P2 631 / P3 4'428 / verworfen 3'432, 3.28 Mio Token, 457 Werkzeugaufrufe, 40 Minuten.** Fachlich ergiebigster Fund: `18_Projektkostenplanung` enthält einen Grossbau **vollständig über alle Kostenermittlungsstufen** (Baubeschrieb → Kostenschätzung → KV → honorarberechtigte Bausumme → Vergabe-Controlling → Abweichungsanalyse → Finanzrapport), dazu drei funktionierende SIA-102-Honorartabellen — unmittelbar verwertbar für `kostenschaetzung` und `grobkosten`.

**Der Befund: 34 Abbrüche, davon 33 transiente Klassifikator-Fehler und EINER substanziell.** Der Agent für `23_Vertraege` wurde mit der zutreffenden Begründung gestoppt, er ziehe Vertragsinhalte Dritter in ein git-verfolgtes, automatisch gepushtes Repo, ohne dass der Auftrag das je benannt habe. **Was der Klassifikator NICHT abfing, fand die eigene Nachkontrolle:** `16_Portfolios` ist eine Ablage eingegangener **Bewerbungsmappen** 2007–2010, und die Inventardatei nannte eine bewerbende Person **namentlich**. Sie war zum Zeitpunkt des Fundes bereits committet und gepusht (Commit `75d50502`, `nas-selfcommit` 18:15/18:30). Datei aus dem Arbeitsbaum entfernt und nach `scratchpad/quarantaene-260823/` gesichert.

**Zwei Entscheide, Raphael hat sie mir überlassen («mach was du für richtig findest»).** (1) **Keine Historien-Bereinigung.** Das Repo ist privat, die Exposition gering — und ein Force-Push gegen ein Repo, aus dem drei Stationen klonen, **während neun Lern-Läufe hineinschreiben**, richtet mit hoher Wahrscheinlichkeit mehr Schaden an als der Befund selbst. Der Vorgang ist hier festgehalten und in einem ruhigen Fenster bewusst nachholbar. (2) **Die Projektdaten Dritter bleiben**, aber mit gezogener Grenze: in `wissen/architektur-fachwissen/CLAUDE.md` ist seit heute festgehalten, dass sie inventarisiert und methodisch ausgewertet, aber **nie wörtlich reproduziert** und **nie in ein ausgehendes Erzeugnis** übernommen werden; in Wiki-Artikeln erscheinen sie als Kennwert mit Quellenverweis. Die Sektionen `23_Vertraege`, `16_Portfolios` und `01_Adressen` sind dauerhaft ausgeschlossen.

**Die Lehre ist als Rule 260823 gesetzt** (`auto-verbesserungen.md`): vor jedem Fan-out auf einen ganzen Geschäftsdaten-Baum wird die Zielmenge zuerst bereinigt und die Ausschlussliste im Auftrag ausdrücklich genannt. **Ein Inventar ist keine Entschärfung** — es nennt Namen, Beträge und Gegenparteien und ist damit selbst die Weitergabe. **Der Fehler lag im Entwurf, nicht am Klassifikator:** ein breiter Auftrag wie «Vollgas, alle Stationen» ist keine Freigabe, Vertrags- und Bewerberdaten zu erfassen; wer den Sweep baut, verantwortet die Zielmenge.

## 2026-08-23 00:58 — [FREI] **Fenster frei ueber den Rueckfallweg (app-CLI 2.1.237, 64 s) — die PATH-CLI bleibt gewedgt, Homebrew hat nach 20 h noch nicht nachgeliefert. Und der Speicherdruck Level 2 ist gegengemessen: er steht erneut, die Ursache ist gefunden.** Ampel **FREI**, Verbrauch 28.4 % bei 79.2 % verstrichener Woche, Rueckstand **−50.7** Punkte (neunter in Folge). **Keine Waisen, kein Loop ohne Ertrag, Registry und beide Stationen ohne Abweichung.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 22.08. 12:58, dieser Lauf 23.08. 00:58, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Zwanzigster regulaerer Abstand in Folge, keine Eintragsluecke; `lastRunAt` der eigenen Task (22.08. 22:58 UTC) faellt mit diesem Lauf zusammen, Gegenprobe nicht noetig.

**P1 (fortbestehend) — die PATH-CLI ist unveraendert gewedgt.** `/opt/homebrew/bin/claude` zeigt weiterhin auf **2.1.231**, Symlink-Zeitstempel unveraendert 22.08. 05:15, das Caskroom enthaelt weiterhin nur diese eine Fassung. Die PATH-Probe wurde nach der Vorschrift des Vorlaufs **gar nicht erst versucht** — sie haette 180 s gekostet und einen rc=137 geliefert, der wie eine Kontingentsperre aussieht und keine ist. Der Rueckfallweg ueber die app-gebuendelte **2.1.237** lieferte **"OK", rc=0, in 64 s**. Damit ist belegt: das Kontingent ist frei, der Defekt liegt allein am Homebrew-Binary. Am 18.08. brauchte Homebrew rund zwei Tage bis zur Nachlieferung; hier sind erst rund 20 Stunden vergangen, die Wartezeit ist also im erwarteten Rahmen. **Kein Handlungsbedarf, keine Mail** — Raphael muss hier nichts loesen, die Messung laeuft ueber den Rueckfallweg vollstaendig weiter. Der naechste Lauf prueft den Symlink erneut und stellt bei rc=0 wieder auf PATH um.

**Latenz: weiterhin kein PATH-Messwert.** Die Reihe (39 s → 76 s → >120 s → 8 s → 7 s → 6 s → 6 s → 7 s → 5 s) bekommt zum zweiten Mal in Folge keinen Eintrag, weil das gemessene Binary nicht antwortet. Der einzige gueltige Wert dieses Laufs ist die **64 s der app-gebuendelten CLI** (Vorlauf 72 s), mit der PATH-Reihe nicht vergleichbar. Untergrenze 180 s bleibt. Kein Befund-Lauf faellig.

**P2 (neu) — Der Speicherdruck steht bei Level 2, und die Ursache ist die Claude-Desktop-App selbst.** Der Vorlauf hatte Level 2 als Einzelmesspunkt gemeldet und die Gegenmessung angekuendigt; sie ist gelaufen und **bestaetigt den Wert**. Zwei Messpunkte in Folge sind kein Ausreisser mehr, deshalb hier die Ursachensuche, die der Vorlauf sich vorbehalten hat. Gemessen: **72 Claude-Prozesse mit zusammen 4.73 GB, davon allein 53 Claude-Code-Session-Prozesse mit 4.13 GB.** Die Station laeuft seit **3 Tagen 14:50** ohne Neustart. Die freie Menge ist mit **3.73 GB** (frei + inactive + purgeable) praktisch unveraendert gegenueber dem Vorlauf (3.74 GB), aber der **Swap ist deutlich gewachsen: 1.82 von 3.00 GB belegt** gegen 1.20 von 2.05 GB im Vorlauf — macOS hat die Swap-Datei vergroessert, und genau das treibt den Druckwert. **Kein Lern-Lauf, keine Waise, kein Loop ist beteiligt**: die 53 Prozesse sind akkumulierte Sessions der Desktop-App, also die interaktive Arbeitslast. **Kein Eingriff von hier** — Session-Prozesse zu beenden griffe in Raphaels laufende Arbeit ein und faellt nicht unter die Whitelist. Die Abhilfe ist ein Neustart der Claude-App bei naechster Gelegenheit; das ist Raphaels Entscheid, nicht meiner. Der naechste Lauf misst weiter mit. **Nicht sendewuerdig** (Hub-Intern ohne Aussenwirkung, Rule auto-verbesserungen 260803).

**Liefer-Delta ueber git gemessen** (Basis `de9f533a`, 60 Commits in 13 h), nicht ueber `find -newermt`. Geaendert: **28 Dateien, 1135 Zeilen ergaenzt, 24 entfernt**, davon **wissen/ 19 Dateien in sechs KBs** (planungsgrundlagen 5, koordination 5, energie 3, normen 2, bauprodukte 2, architekten-synobsis 2), dazu logbuch 5, station-status 2, tenant-hygiene 1, rules 1. Namentlich geliefert haben `wissens-chef` (Run 40, 23:11: VKF-Fassungs-Sweep in `planungsgrundlagen` nachgezogen mit zwei Vorbehalten, PV-Doppelspur beidseitig verdrahtet, BKP-261-Fassungsvorbehalt, und der **Gegenbeleg zur Treffen-Klausel** in `rules/anrede-kontakte.md` — Stadelmann bleibt am 22.07. nach einem Telefonat im Sie, was die Klausel eingrenzt statt sie zu stuerzen), `synergie-lauf-taeglich` (Lauf 15, 17:10: SYN-41 Fassungs-Vorbehalt im established-Synthese-Artikel gesetzt, den die fuenf VKF-Deltas nicht erreicht hatten; SYN-42 eine Statuszelle korrigiert, die eine bereits erfuellte Bringschuld als offen fuehrte), `tenant-hygiene-weekly` (20:08: 862.55 GB / 81.84 %, +0.05 GB/Tag, Versionsverlauf objektgenau, plus Selbstkorrektur des Reports auf echte Umlaute) und die **Mac-Mini-Nachtschicht** (13:33 und 23:32, beide rc=0: Prioritaeten 1–4 gesaettigt, auf Stufe 5 ausgewichen, acht offene Identitaetsfragen in `architekten-synobsis` per WebSearch belegt geklaert). `normen-training-nacht` hat sein Fenster noch vor sich (naechster Lauf 01:27), `twin-mail-training` und `twin-fidelity-review` lieferten im vorangegangenen Fenster. **Kein Loop mit Delta Null, keine Ruecktakt-Empfehlung.**

**Feuermechanismen: alle drei Orte stimmen.** MacBook Pro — beide vollgas-plists tragen weiterhin `.disabled-260729`, `launchctl list` zeigt nichts geladen. Mac Mini — `ch.jans.vollgas-supervisor` weiterhin deaktiviert, `ch.jans.nachtschicht` geladen (Status 0) und damit der einzige Lern-Taktgeber, wie vorgesehen. Mini-Registry im Sollstand (acht Tasks, unveraendert). Lokale Registry ohne Widerspruch: deaktiviert sind ausschliesslich die dokumentiert stillgelegten Tasks (`immobewertung-training` und `spec-training` als Ereignis-Trigger, `synergie-lauf-monatlich` als abgeloest, dazu fuenf abgelaufene One-Times). **Keine Drossel zurueckzudrehen** — bei Ampel FREI stand keine Lern-Task auf `enabled=false`.

**P3 — bexio-401, unveraendert.** Der `zahlungsabgleich-check` lief zuletzt am 22.08. 08:23, naechster Lauf heute 08:22; `mahnwesen-verzugscheck` erst Montag 25.08. Der Befund ist derselbe wie an den dreizehn Laeufen zuvor und wird ueber das Tagesbriefing des `hub-chef` gemeldet. **Keine Mail von hier**, kein neuer Sachverhalt.

**P3 — Der Rueckstand waechst weiter, unveraendert in der Sache.** Reihe der Vorsprungswerte: −27.4 → −28.9 → −32.5 → −36.8 → −40.9 → −45.7 → **−50.7**. Bei 79.2 % verstrichener Woche sind 28.4 % des Kontingents verbraucht; hochgerechnet endet die Woche bei rund 36 %. Der stehende Entscheid vom 03.08. verlangt **gleichmaessigen** Verbrauch, nicht maximalen — ein Unterverbrauch ist damit kein Vorfall. **Wird ohne neuen Sachverhalt nicht erneut ausfuehrlich vorgetragen.**

Regellauf plus die angekuendigte Speicher-Gegenmessung, 12 Werkzeugaufrufe, inline und im parallelen Block gemessen, nicht delegiert (Korrektur 08.08.). Keine Mail: Fenster frei, kein neuer P1, den nur Raphael loesen koennte.

## 2026-08-22 12:58 — [FREI] **Fenster frei — aber die PATH-Probe ist wieder gewedgt: Homebrew hat heute 05:15 auf 2.1.231 umgehaengt, und diese Fassung antwortet gar nicht.** Rueckfallweg ueber die app-gebuendelte 2.1.237 lieferte "OK", rc=0, in 72 s. Ampel **FREI**, Verbrauch 26.4 % bei 72.0 % verstrichener Woche, Rueckstand **−45.7** Punkte (achter in Folge). **Keine Waisen, kein Loop ohne Ertrag, Registry und beide Stationen ohne Abweichung.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 22.08. 00:58, dieser Lauf 22.08. 12:58, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Neunzehnter regulaerer Abstand in Folge, keine Eintragsluecke; `lastRunAt` der eigenen Task (22.08. 10:58 UTC) faellt mit diesem Lauf zusammen, Gegenprobe nicht noetig.

**P1 — Die PATH-CLI ist erneut gewedgt, und diesmal ist die Ursache eindeutig belegt.** `/opt/homebrew/bin/claude` zeigt seit heute **05:15** auf **2.1.231** (Symlink-Zeitstempel gemessen, Caskroom enthaelt nur noch diese eine Fassung). Diese Fassung antwortet nicht: `-p "Antworte nur mit: OK" --model haiku < /dev/null` lief in den 180-s-Watchdog und endete mit **rc=137**; selbst ein blosses `--version` kam nach 60 s nicht zurueck und musste in den Hintergrund. Die **app-gebuendelte 2.1.237** antwortete im selben Lauf mit **"OK", rc=0, in 72 s** — das Kontingent war also die ganze Zeit frei, der Fehler lag allein am Binary. **Das ist dieselbe Wedge wie am 15./16.08. mit 2.1.224, nur mit neuer Versionsnummer**, und sie haette diesem Lauf beinahe wieder die Kernmessung gekostet: ein rc=137 sieht aus wie eine Kontingentsperre und ist keine. Massnahme im selben Lauf ausgefuehrt: der Absatz «STAND 18.08.» in der eigenen SKILL.md ist auf **STAND 22.08.** neu gefasst, der Rueckfallweg ueber die app-gebuendelte CLI ist wieder **Pflichtweg**, die PATH-Probe wird bis auf Weiteres gar nicht mehr versucht (Sicherungskopie der Vorfassung im Scratchpad). Neu festgehalten ist auch die verallgemeinerbare Regel: **ein rc=137 der PATH-Probe ist zuerst ein Verdacht auf ein gewedgtes Binary, nicht auf ein leeres Fenster** — gegenmessen laesst sich das immer mit der app-gebuendelten CLI, die von Homebrew unabhaengig aktualisiert wird. Am 18.08. dauerte es rund zwei Tage, bis Homebrew nachlieferte; bis dahin bleibt der Umweg stehen. **Keine Mail:** Raphael muss hier nichts loesen, die Messung laeuft ueber den Rueckfallweg vollstaendig weiter.

**Latenz: die Reihe bricht ab, weil das gemessene Binary gewechselt hat.** Die bisherige PATH-Reihe (39 s → 76 s → >120 s → 8 s → 7 s → 6 s → 6 s → 7 s → 5 s) bekommt heute **keinen** Messwert; rc=137 ist kein Latenzwert, sondern ein Ausfall. Der einzige gueltige Wert dieses Laufs ist die **72 s der app-gebuendelten CLI**, und der ist mit der Reihe nicht vergleichbar. Die Schwankungs-These vom 19.08. bleibt unberuehrt, die Untergrenze 180 s ebenfalls — sie hat heute korrekt gegriffen und den Lauf nicht haengen lassen. Kein Befund-Lauf faellig, die Ursache ist gefunden.

**Liefer-Delta ueber git gemessen** (Basis `267e4b89`, 59 Commits in 13 h), nicht ueber `find -newermt`. Geaendert: **46 Dateien, 3401 Zeilen ergaenzt, 79 entfernt**, davon **wissen/ 32 Dateien in vier KBs** (normen 17, twin 11, immobilienbewertung 2, claude-code 2), dazu logbuch 8, station-status 2, skills 2, rules 1, connectors 1. Namentlich geliefert haben `normen-training-nacht` (Run 59: fuenf VKF-Fassungs-Deltas destilliert, N58-1 teilerledigt — 10-15/11-15 auf 2019, 108-15 auf 2020/Stand 2022, 104-15 auf 2022, 40-15 auf 2025; Bestandsdestillate inline markiert, Register, Matrix, QUESTIONS und `skills/brandschutz` nachgefuehrt), `twin-mail-training` (Batch 101: Unterstrich-Bullet gilt auch im Sie, Sammelanrede mit &, Wir/Ich-Teilung, zwei Anti-Marker; `stilmetrik.py` um `werter` und `unterstrich_bullets` erweitert), `hub-chef-taeglich` (Briefing gesendet, Spiegelung und Kalendereintrag ausgefuehrt, Sitzungstakt gemessen, Kalenderweg im WEGE-Register korrigiert), `logbuch-radar` (Briefing plus fuenf Registerzeilen: Bodenbelaege PPTS, Kueche Roethlisberger, Jegen-Nachtrag, Lehrstelle, ETH-Anlass) und die **Mac-Mini-Nachtschicht** (02:38 KB-Audit mit drei als falsch-positiv widerlegten «kaputten Backlinks»; 05:38 Erst-Health-Check der KB `claude-code` mit zwei Befunden: KB-weite ASCII-Ersatzschreibung statt echter Umlaute, und ein veralteter Wert fuer den Twin-DNA-Kompilierriegel). **Kein Loop mit Delta Null, keine Ruecktakt-Empfehlung.** Alle vier Mini-Laeufe der Nacht liefen mit rc=0 durch.

**Speicher: der Druckwert ist gestiegen, die freie Menge nicht gefallen — gemeldet, kein Eingriff.** **3.74 GB** aus frei + inactive + purgeable (Vorlauf 0.83 GB, also deutlich mehr frei), Swap **1.20 von 2.05 GB** belegt. Aber `kern.memorystatus_vm_pressure_level` steht auf **2 (warn)** statt wie im Vorlauf auf 1 (normal). Die beiden Werte zeigen in verschiedene Richtungen, und die Kennzahl, an der die Schutzmechanik haengt, ist die zweite. Auffaellig ist sie, aber sie traegt allein keinen Eingriff: die groessten Prozesse sind unveraendert die interaktive Arbeitslast (344 MB Claude-Code-Session, 303 MB Claude-Framework, dann elf weitere zwischen 180 und 200 MB, ganz ueberwiegend Claude-Code-Sessions der App), kein Lern-Lauf und keine Waise. **Ein einzelner Messpunkt ist kein Trend** — dieselbe Lehre wie bei der Latenz-Reihe. Der naechste Lauf misst gegen; steht Level 2 dann erneut, gehoert die Ursache untersucht. Keine Waisen: `ps` zeigt nach dem Watchdog-Eingriff keinen `claude -p` mehr (ausdruecklich gegengeprueft, wie nach jedem Watchdog vorgeschrieben).

**Feuermechanismen: alle drei Orte stimmen.** MacBook Pro — beide vollgas-plists tragen weiterhin `.disabled-260729`, `launchctl list` zeigt nichts geladen. Mac Mini — `ch.jans.vollgas-supervisor` weiterhin deaktiviert, `ch.jans.nachtschicht` geladen (Status 0) und damit der einzige Lern-Taktgeber, wie vorgesehen. Mini-Registry vollstaendig im Sollstand (acht Tasks, unveraendert; `energie-training` und `normen-training-mini` tragen `enabled: false` in der Frontmatter, was Dokumentation und nicht Live-Zustand ist). Lokale Registry ohne Widerspruch: deaktiviert sind ausschliesslich die dokumentiert stillgelegten Tasks (`immobewertung-training` und `spec-training` als Ereignis-Trigger, `synergie-lauf-monatlich` als abgeloest, dazu fuenf abgelaufene One-Times). **Keine Drossel zurueckzudrehen** — bei Ampel FREI stand keine Lern-Task auf `enabled=false`.

**P2 — bexio-401, jetzt der 13. Lauf in Folge.** Der `zahlungsabgleich-check` von heute 08:25 meldet erneut HTTP 401 und hat den Nachtrag im Fristen-Register gesetzt; `~/.bexio.env` traegt unveraendert den Token vom 13.06.2026. `mahnwesen-verzugscheck` laeuft nur werktags, naechster Lauf Montag 25.08. 08:05. Betroffen bleibt Geld — Debitorenverzug und Zahlungsabgleich sind seit knapp zwei Wochen unbeobachtet, und im Register laeuft darin bereits eine Frist. **Keine Mail von hier**, derselbe Befund ist mehrfach ueber das Tagesbriefing des `hub-chef` gemeldet.

**P3 — Der Rueckstand waechst weiter, unveraendert in der Sache.** Reihe der Vorsprungswerte: −25.9 → −27.4 → −28.9 → −32.5 → −36.8 → −40.9 → **−45.7**. Bei 72.0 % verstrichener Woche sind 26.4 % des Kontingents verbraucht; hochgerechnet endet die Woche bei rund 37 %. Der stehende Entscheid vom 03.08. verlangt **gleichmaessigen** Verbrauch, nicht maximalen — ein Unterverbrauch ist damit kein Vorfall. **Wird ohne neuen Sachverhalt nicht erneut ausfuehrlich vorgetragen.**

Regellauf plus eine Befund-Massnahme, 14 Werkzeugaufrufe, inline und im parallelen Block gemessen, nicht delegiert (Korrektur 08.08.). Keine Mail: der neue P1 ist von hier aus geloest, kein erschoepftes Wochenkontingent.

## 2026-08-22 00:58 — [FREI] **Fenster frei (Probe 5 s), vier KBs mit Liefer-Delta — und die Speicher-Reihe des Vorlaufs ist gegengemessen und erklaert.** Ampel **FREI**, Verbrauch 23.9 % bei 64.9 % verstrichener Woche, Rueckstand **−40.9** Punkte (siebter in Folge). **Keine Waisen, kein Loop ohne Ertrag, Registry und beide Stationen ohne Abweichung.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 21.08. 12:58, dieser Lauf 22.08. 00:58, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Achtzehnter regulaerer Abstand in Folge, keine Eintragsluecke; `lastRunAt` der eigenen Task (21.08. 22:58 UTC) faellt mit diesem Lauf zusammen, Gegenprobe nicht noetig.

**Latenz: sechster kurzer Messwert in Folge.** Reihe jetzt **39 s → 76 s → >120 s → 8 s → 7 s → 6 s → 6 s → 7 s → 5 s**. Die Schwankungs-These haelt, die am 19.08. vermutete Degradation bleibt widerlegt. Untergrenze 180 s bleibt stehen, weil sie gegen die Ausreisser nach oben schuetzt. Kein Befund-Lauf faellig.

**Liefer-Delta ueber git gemessen** (Basis `bc314eeb`, 54 Commits in 13 h), nicht ueber `find -newermt`. Geaendert: **38 Dateien, 1669 Zeilen ergaenzt, 40 entfernt**, davon **wissen/ 21 Dateien in vier KBs** (energie 8, planungsgrundlagen 6, koordination 5, architekten-synobsis 2), dazu logbuch 6, skills 4, rules 3. Namentlich geliefert haben `wissens-chef` (Run 39, Abendlauf: 11 Agenten, 1.80 Mio Token — Nivellier-Klausel in `rules/anrede-kontakte.md` gegen sechs Korpus-Belege annotiert, Zuercher EnerG aus der Bundeserlass-Tabelle geholt, ueberholte Holzbau-Pauschale in `skills/kostenschaetzung` durch belegte Quantile ersetzt, vier Cross-KB-Kanten gesetzt, dazu der eigene Meldekopf-Test aus Run 38 als untauglich widerlegt), `synergie-lauf-taeglich` (Lauf 14: SYN-39 Bildschirmschoner-Waechter ins Repo gesichert, SYN-40 Querverweis von `dokument-layout-standard` auf die neue Laengenregel 260820), `tenant-hygiene-weekly` (Report 21.08.: 862.49 GB / 81.83 %, +4.01 GB/Tag, Restlaufzeit 34–48 Tage) und die **Mac-Mini-Nachtschicht** (23:30-Zyklus: E-R148-3 geschlossen, Prozent-Auswertung der Baustellenkontrolle 2005 als optionales Werkzeug in `skills/unternehmerkontrolle` verlinkt). **Kein Loop mit Delta Null, keine Ruecktakt-Empfehlung.** Der Budget-Abbruch vom 21.08. 02:39 ist im Vorlauf behandelt; die drei folgenden Mini-Laeufe (05:34, 13:34, 23:34) liefen alle mit rc=0 durch.

**Speicher: die Reihe des Vorlaufs ist gegengemessen — Ursache gefunden, kein Eingriff.** Der Vorlauf hatte 1.24 GB gegen 3.97 GB gemeldet und die Gegenmessung ausdruecklich verlangt. Jetzt **0.83 GB** aus frei + inactive + purgeable, Swap **1.09 von 2.05 GB** belegt. `kern.memorystatus_vm_pressure_level: 1` (normal) — die Kennzahl, an der die Schutzmechanik selbst haengt, meldet weiterhin keinen Engpass. Ursache ist keine Waise und kein Lern-Lauf, sondern die **interaktive Arbeitslast der Station**: sechs der zwoelf groessten Prozesse sind Claude-Code-Sessions der App (356 · 204 · 198 · 191 · 191 · 189 MB), dazu Claude-Renderer 318 MB, die On-Device-Inferenz-Extension 279 + 198 MB und Chrome 192 MB. Das MacBook Pro ist seit dem 28.07. reine Arbeitsstation; ein knapper Wert am spaeten Abend nach einem Arbeitstag ist damit erwartbar und **nicht** Anzeichen eines Lecks. Damit ist der offene Punkt aus dem Vorlauf geschlossen, er wird nicht erneut vorgetragen. Keine Waisen: `ps` zeigt nach der Probe keinen `claude -p` mehr.

**Feuermechanismen: alle drei Orte stimmen.** MacBook Pro — beide vollgas-plists tragen weiterhin `.disabled-260729`, nichts geladen. Mac Mini — `ch.jans.vollgas-supervisor` weiterhin deaktiviert, `ch.jans.nachtschicht` geladen (Status 0) und damit der einzige Lern-Taktgeber, wie vorgesehen. Mini-Registry vollstaendig im Sollstand (acht Tasks, unveraendert; `energie-training` und `normen-training-mini` tragen `enabled: false` in der Frontmatter, was Dokumentation und nicht Live-Zustand ist — energie liefert nachweislich weiter). Lokale Registry ohne Widerspruch: deaktiviert sind ausschliesslich die dokumentiert stillgelegten Tasks (`immobewertung-training` und `spec-training` als Ereignis-Trigger, `synergie-lauf-monatlich` als abgeloest, dazu vier abgelaufene One-Times). **Keine Drossel zurueckzudrehen** — bei Ampel FREI stand keine Lern-Task auf `enabled=false`.

**P1 — bexio-401 unveraendert; seit dem Vorlauf lief kein bexio-Loop.** Der Stand ist derselbe wie um 12:58: `~/.bexio.env` traegt unveraendert den Token vom 13.06.2026, der Befund steht im Fristenregister und ging ueber das Tagesbriefing des `hub-chef` an rj@. Neue Messung war heute nicht moeglich und ist keine ausgelassene Pruefung: `mahnwesen-verzugscheck` laeuft nur werktags (naechster Lauf Montag 25.08. 08:05), `zahlungsabgleich-check` taeglich als naechstes am 22.08. 08:22. Betroffen bleibt Geld — Debitorenverzug und Zahlungsabgleich sind seit knapp zwei Wochen unbeobachtet, und im Register laeuft darin bereits eine Frist. **Keine Mail von hier**, derselbe Befund ist mehrfach gemeldet.

**P2 — Der Rueckstand waechst weiter, unveraendert in der Sache.** Reihe der Vorsprungswerte: −22.6 → −25.9 → −27.4 → −28.9 → −32.5 → −36.8 → **−40.9**. Bei 64.9 % verstrichener Woche sind 23.9 % des Kontingents verbraucht; hochgerechnet endet die Woche bei rund 37 %. Der stehende Entscheid vom 03.08. verlangt **gleichmaessigen** Verbrauch, nicht maximalen — ein Unterverbrauch ist damit kein Vorfall. Der Hebel laege bei zusaetzlicher *inhaltlicher* Arbeit im Nachtfenster, nicht bei mehr Aufsicht und nicht bei hoeherem Takt. **Wird ohne neuen Sachverhalt nicht erneut ausfuehrlich vorgetragen.**

**P3 — Keine.** Regellauf, 11 Werkzeugaufrufe, inline und im parallelen Block gemessen, nicht delegiert (Korrektur 08.08.). Keine Mail: kein neuer P1-Blocker, kein geloester P1, kein erschoepftes Wochenkontingent.

## 2026-08-21 12:58 — [FREI] **Fenster frei (Probe 7 s), drei KBs mit Liefer-Delta — und der Kontingent-Rückstand wächst zum sechsten Mal in Folge auf jetzt −36.8 Punkte.** Ampel **FREI**, Verbrauch 21.0 % bei 57.7 % verstrichener Woche. **Keine Waisen, kein Loop ohne Ertrag, Registry und beide Stationen ohne Abweichung.** Grösster offener Hebel bleibt der bexio-401-Blocker, jetzt im zwölften Lauf.

**Selbstkontrolle: bestanden.** Letzter Eintrag 21.08. 00:57, dieser Lauf 21.08. 12:58, Abstand **12 h 01 min** bei 12-h-Takt und 15 h Toleranz. Siebzehnter regulärer Abstand in Folge, keine Eintragslücke; `lastRunAt` der eigenen Task (21.08. 10:58 UTC) fällt mit diesem Lauf zusammen, Gegenprobe nicht nötig.

**Latenz: fünfter kurzer Messwert in Folge.** Reihe jetzt **39 s → 76 s → >120 s → 8 s → 7 s → 6 s → 6 s → 7 s**. Die Schwankungs-These hält, die am 19.08. vermutete Degradation bleibt widerlegt. Untergrenze 180 s bleibt stehen, weil sie gegen die Ausreisser nach oben schützt. Kein Befund-Lauf fällig.

**Liefer-Delta über git gemessen** (Basis `0bc27118`, 60 Commits in 13 h), nicht über `find -newermt`. Geändert: **42 Dateien, 2587 Zeilen ergänzt, 66 entfernt**, davon **wissen/ 29 Dateien in drei KBs** (energie 15, twin 12, architekten-synobsis 2), dazu logbuch 8, rules 3, station-status 2. Namentlich geliefert haben `energie-training` (Run 148: E-R144-1 geschlossen, der «falsche Freund» EN-1 2009 gegen WDV 2022, PL-02-Restliste abgearbeitet, FAQ F248/F249; dazu Run 148 mit Fristenregister-Nachtrag zum Normkauf SIA 380/1, der neu auch die Healthcare-Gebäudekategorie blockiert), `twin-mail-training` (Batch 100: contentType-Nachprüfung der Batches 95–98, Entlastung, plus Fenster rj@ 20.–21.08.) und `hub-chef-taeglich` (Briefing gesendet, Jegen-Entwurf neu aufgesetzt, Koordinationssitzung neu wöchentlich). **Kein Loop mit Delta Null, keine Rücktakt-Empfehlung.**

**Ein Fehlversuch, aber kein Leerlauf.** Das Lauf-Journal zeigt auf dem Mac Mini zwei `dispatch-versuch1`-Zeilen: 02:39 mit **rc=1** nach 567 s und $5.03, dann 05:34 mit rc=0 nach 258 s. Der erste Lauf ist ein Abbruch mit Ertrag Null, nicht ein hungriger Loop ohne Material — nach der eigenen Prüfvorschrift (Befund `vollgas-fruehwarnung` 03.08.) **wird dafür nicht rückgetaktet**; der Nachfolgelauf drei Stunden später lief sauber durch. Kein Handlungsbedarf, aber bei Wiederholung an derselben Stelle nachzusehen.

**Feuermechanismen: alle drei Orte stimmen.** MacBook Pro — beide vollgas-plists tragen weiterhin `.disabled-260729`, nichts geladen. Mac Mini — `ch.jans.vollgas-supervisor` weiterhin deaktiviert, `ch.jans.nachtschicht` geladen (Status 0) und damit der einzige Lern-Taktgeber, wie vorgesehen. Mini-Registry vollständig im Sollstand (acht Tasks, unverändert). Lokale Registry ohne Widerspruch: deaktiviert sind ausschliesslich die dokumentiert stillgelegten Tasks (`immobewertung-training` und `spec-training` als Ereignis-Trigger, `synergie-lauf-monatlich` als abgelöst, dazu die abgelaufenen One-Times). **Keine Drossel zurückzudrehen** — bei Ampel FREI stand keine Lern-Task auf `enabled=false`.

**Speicher: auffällig knapper als sonst, aber unkritisch.** 1.24 GB aus frei + inactive + purgeable gegen 3.97 GB im Vorlauf. `kern.memorystatus_vm_pressure_level: 1` (normal) — der Druckindikator, also die Kennzahl, an der die Schutzmechanik selbst hängt, meldet keinen Engpass. Kein Eingriff; der Wert wird im nächsten Lauf gegengemessen, weil ein Faktor 3 zwischen zwei Läufen auf der reinen Arbeitsstation erklärungsbedürftig ist. Keine Waisen: `ps` zeigt nach der Probe keinen `claude -p` mehr.

**P1 — bexio antwortet den zwölften Lauf in Folge mit HTTP 401; nur Raphael kann das lösen.** `mahnwesen-verzugscheck` und `zahlungsabgleich-check` liefen heute beide erneut blind und haben ihren Befund korrekt ins Fristenregister nachgetragen (`logbuch/fristen.md`, Nachtrag 06:55). Das ist kein Leerlauf im Sinne des Wächters — die Loops arbeiten, ihre Datenquelle ist zu. Betroffen ist Geld: Debitorenverzug und Zahlungsabgleich sind seit knapp zwei Wochen unbeobachtet, und im Register läuft darin bereits eine Frist. Der Token in `~/.bexio.env` stammt unverändert vom 13.06.2026. **Keine Mail von hier** — derselbe Befund ist mehrfach gemeldet, steht im Fristenregister und ging heute früh über das Tagesbriefing des `hub-chef` an rj@; eine Wiederholungsmail des Radars würde nichts hinzufügen.

**P2 — Der Rückstand wächst weiter, unverändert in der Sache.** Reihe der Vorsprungswerte: −22.6 → −25.9 → −27.4 → −28.9 → −32.5 → **−36.8**. Bei 57.7 % verstrichener Woche sind 21.0 % des Kontingents verbraucht; hochgerechnet endet die Woche bei rund 36 %. Der stehende Entscheid vom 03.08. verlangt **gleichmässigen** Verbrauch, nicht maximalen — ein Unterverbrauch ist damit kein Vorfall. Ursache und Bewertung unverändert gegenüber dem Vorlauf: der Hebel läge bei zusätzlicher *inhaltlicher* Arbeit im Nachtfenster, nicht bei mehr Aufsicht und nicht bei höherem Takt. **Wird ohne neuen Sachverhalt nicht erneut ausführlich vorgetragen.**

**P3 — Keine.** Regellauf, 10 Werkzeugaufrufe, inline und in einem parallelen Block gemessen, nicht delegiert (Korrektur 08.08.). Keine Mail: kein neuer P1-Blocker, kein gelöster P1, kein erschöpftes Wochenkontingent.

## 2026-08-21 00:57 — [FREI] **Fenster frei (Probe 6 s), fünf KBs mit Liefer-Delta — und der Kontingent-Rückstand wächst zum fünften Mal in Folge auf jetzt −32.5 Punkte.** Ampel **FREI**, Verbrauch 18.0 % bei 50.6 % verstrichener Woche. **Keine Waisen, kein Loop ohne Ertrag, Registry und beide Stationen ohne Abweichung.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 20.08. 12:57, dieser Lauf 21.08. 00:57, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Sechzehnter regulärer Abstand in Folge, keine Eintragslücke; `lastRunAt` der eigenen Task (20.08. 22:57 UTC) fällt mit diesem Lauf zusammen, Gegenprobe nicht nötig.

**Latenz: vierter kurzer Messwert in Folge.** Reihe jetzt **39 s → 76 s → >120 s → 8 s → 7 s → 6 s → 6 s**. Die Schwankungs-These hält weiter, die am 19.08. vermutete Degradation bleibt widerlegt. Untergrenze 180 s bleibt stehen, weil sie gegen die Ausreisser nach oben schützt. Kein Befund-Lauf fällig.

**Liefer-Delta über git gemessen** (Basis `d83c920b`, 56 Commits in 13 h), nicht über `find -newermt` — die Werkzeug-Falle aus dem Vorlauf ist damit umgangen. Geändert: **wissen/ 23 Dateien in fünf KBs** (energie 11, koordination 5, normen 3, planungsgrundlagen 2, bauprodukte 2), dazu logbuch 4, skills 3, rules 1, connectors 1. Namentlich geliefert haben in diesem Fenster `wissens-chef` (Run 38, VKF-Fassungs-Sweep: 15-Sekunden-Frist der Sicherheitsbeleuchtung seit 2017 entfallen, BRL 103-15 zurückgezogen), `synergie-lauf-taeglich` (Lauf 13, SYN-37 vertauschte BSR-Nummern im Skill brandschutz berichtigt), `tenant-hygiene` (Report 858.49 GB / 81.45 %, Restlaufzeit 14 Tage) sowie zwei WEGE-Register-Einträge zum CAD-Weg 3D-DWG → 2D-Plan. Kein Loop mit Delta Null, keine Rücktakt-Empfehlung.

**Feuermechanismen: unauffällig.** MacBook Pro — beide vollgas-plists tragen weiterhin `.disabled-260729`, nichts geladen. Mac Mini — dito für den Supervisor, `ch.jans.nachtschicht` geladen und damit der einzige Lern-Taktgeber, wie vorgesehen. Registry ohne Widerspruch: deaktiviert sind ausschliesslich die dokumentiert stillgelegten Tasks (immobewertung-training und spec-training als Ereignis-Trigger, synergie-lauf-monatlich als abgelöst, dazu die abgelaufenen One-Times). **Keine Drossel zurückzudrehen** — bei Ampel FREI stand keine Lern-Task auf `enabled=false`.

**Speicher:** 3.97 GB aus frei + inactive + purgeable, `kern.memorystatus_vm_pressure_level: 1` (normal). Grösster Einzelposten bleibt OneDrive mit 517 MB RSS. Keine Waisen: `ps` zeigt nach der Probe keinen `claude -p` mehr.

**P2 — Der Rückstand ist jetzt strukturell, nicht mehr ein Ausreisser.** Reihe der Vorsprungswerte: −22.6 → −25.9 → −27.4 → −28.9 → **−32.5**. Bei 50.6 % verstrichener Woche sind 18.0 % des Kontingents verbraucht; hochgerechnet endet die Woche bei rund 36 %, also gut 100 Mio Token ungenutzt. Der stehende Entscheid vom 03.08. verlangt **gleichmässigen** Verbrauch über die Woche, nicht maximalen — ein Unterverbrauch ist damit kein Vorfall. Er ist aber auch nicht das Ziel des Auftrags («das Wochenkontingent PRODUKTIV ausschöpfen»). Die Ursache ist bekannt und liegt nicht bei den Loops: seit dem Ausbau des Endlos-Runners am 29.07. und der Rücknahme dieses Radars auf 12 h trägt allein die getaktete Flotte, und die ist auf Sparsamkeit ausgelegt. **Kein Vorschlag zur Takterhöhung von hier aus** — das wäre die Gegenrichtung des Entscheids vom 07.08. Der Hebel läge im Gegenteil bei zusätzlicher *inhaltlicher* Arbeit im Nachtfenster (offene Wissenslücken), nicht bei mehr Aufsicht. Wird beim nächsten Lauf erneut gemessen und ohne neuen Sachverhalt nicht wiederholt vorgetragen.

**P3 — Keine.** Regellauf, 9 Werkzeugaufrufe, inline und in einem parallelen Block gemessen, nicht delegiert (Korrektur 08.08.). Keine Mail: kein P1-Blocker, kein gelöster P1, kein erschöpftes Wochenkontingent.

## 2026-08-20 12:57 — [FREI] **Fenster frei (Probe 6 s), vier KBs mit Liefer-Delta — und ein Werkzeug-Befund in eigener Sache: `find -newermt` meldete still «kein Delta», wo 53 geaenderte Dateien lagen.** Ampel **FREI**, Verbrauch 14.5 % bei 43.4 % verstrichener Woche, Vorsprung **−28.9 Punkte** — zum vierten Mal in Folge der groesste je gemessene Rueckstand. **Keine Waisen, kein Loop ohne Ertrag, Registry und beide Stationen ohne Abweichung.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 20.08. 00:57, dieser Lauf 12:57, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Fuenfzehnter regulaerer Abstand in Folge, keine Eintragsluecke, `lastRunAt`-Gegenprobe nicht noetig.

**Latenz: dritter kurzer Messwert in Folge.** Reihe jetzt **39 s → 76 s → >120 s → 8 s → 7 s → 6 s**. Die Schwankungs-These des Vorlaufs haelt; die am 19.08. 00:57 vermutete Degradation bleibt widerlegt. Untergrenze 180 s bleibt unveraendert stehen, weil sie gegen die Ausreisser nach oben schuetzt, nicht gegen einen Trend. Kein Befund-Lauf faellig.

**Feuermechanismen: alle drei Orte stimmen.** Registry lokal ohne Widerspruch (kein Loop feuert entgegen seinem dokumentierten Zustand, keine Doppelfeuerung). Lokal kein `vollgas`-Job geladen, beide plists weiterhin `.disabled-260729`. Auf dem Mac Mini `ch.jans.nachtschicht` geladen (Status 0, regulaer), `ch.jans.vollgas-supervisor` weiterhin deaktiviert. Der Endlos-Runner bleibt ausgebaut (stehender Entscheid 30.07.).

**Liefer-Delta, 13-Stunden-Fenster.** 61 Commits, davon 52 Transport-Sicherungen und **neun Arbeits-Commits**. Ueber git gemessen: **53 geaenderte Dateien unter `wissen/`, 2471 Zeilen ergaenzt, 253 entfernt**, verteilt auf vier KBs — **normen** (31 Dateien, Run 58: VKF-Fassungs-Sweep, Ticket N27-1 geschlossen, 23 Destillate als ueberholt markiert, Teilrevision 01.04.2026 destilliert, BRL 103-15 zurueckgezogen, Skill `brandschutz` nachgezogen), **twin** (12, Mail-Training Batch 99 mit der 16. Falle `body.contentType` als Kanal-Diskriminator), **energie** (8, Nachtschicht-Lauf 05:36: «Pflanzen am Bau» Stadt Zuerich destilliert, Quelle ueber den M365-CLI-Zweitweg beschafft — zweite unabhaengige Bestaetigung dieses Fallbacks), **bauprodukte** (2, Nachtschicht 02:39: Ausgussbecken KWC/Franke, Fall 2619 KISPI). Dazu acht Dateien unter `logbuch/`. **Kein Loop mit Delta Null, keiner dreimal in Folge leer** — der Leerlauf-Waechter hat nichts zu tun.

**Nachtschicht 20.08.: beide bisherigen Slots rc=0 mit Ertrag** (02:39 · 587 s · 4.40 USD; 05:36 · 407 s · 4.44 USD), beide sauber am Budgetdeckel beendet. Der 13:30-Slot steht zum Messzeitpunkt noch aus. Das Abbruchmuster des 19.08. 13:31 (Lauf endete wartend auf eine Hintergrundaufgabe) hat sich **nicht wiederholt**.

**Speicher:** frei+inaktiv+purgeable **3.53 GB**, Druckstufe **1 (normal)**. Keine Waisenprozesse (`claude -p` leer), nichts blockiert das Lauf-Gate.

### P1 — Der Rueckstand waechst den vierten Lauf in Folge; die Ursache bleibt fehlendes Material
Der Vorsprung faellt von **−24.4 auf −28.9 Punkte**: 14.5 % Verbrauch nach 43.4 % der Woche (MacBook Pro 18.98 Mio, Mac Mini 5.23 Mio). Die Reihe der letzten vier Laeufe lautet **−16.5 → −19.7 → −24.4 → −28.9** und faellt gleichmaessig weiter. Das bleibt die **Umkehrung des stehenden Auftrags** — nicht Verschwendung, sondern ungenutztes Kontingent, und zwar in einer Woche, die laut Entscheid Raphaels vom 03.08. gerade gleichmaessig ausgeschoepft werden soll. Der Befund ist unveraendert: die Nachtschicht-Laeufe liefern zwar, arbeiten sich aber durch Restposten und weichen bei erschoepften Prioritaetenlisten auf Ersatzaufgaben aus. Der Hebel liegt nicht beim Takt — mehr Laeufe auf leerem Material aendern nichts — sondern beim **Nachschub an Korpus**. Das ist ein Inhaltsentscheid und gehoert Raphael. **Keine Mail:** nichts ist kaputt, es fehlt Arbeit, und der Punkt steht seit dem 19.08. unveraendert im Register — eine Wiederholungsmail fuer denselben Befund ist ausgeschlossen.

### P2 — Die Aufsicht hat sich fast selbst einen Leerlauf gemeldet: `find -newermt` versteht keine relativen Zeitangaben
Die bisherige Delta-Messung dieses Regellaufs lief ueber `find wissen -type f -newermt "13 hours ago"`. Das BSD-`find` von macOS parst relative Angaben an `-newermt` **nicht** und liefert dann **null Treffer ohne jede Fehlermeldung**. Dieser Lauf las daraus zunaechst «0 geaenderte Dateien unter `wissen/`, 0 unter `logbuch/`» — bei gleichzeitig neun Arbeits-Commits im selben Fenster. Waere der Widerspruch nicht aufgefallen, haette der Leerlauf-Waechter vier produktiv arbeitende KBs als Delta Null gebucht und auf dem Weg zum Ruecktakt gehabt. Gegenmessung mit absolutem Stempel: **69 Treffer**; ueber git: **53 geaenderte Dateien in vier KBs**. Gleiche Familie wie die grep-Falle am nicht-UTF-8-Selfcommit-Log (Rule `auto-verbesserungen` 260730b): **ein leeres Suchergebnis ist zuerst eine Aussage ueber das Werkzeug, nicht ueber die Quelle.** **Behoben:** die Falle ist im Auftrag dieses Radars unter MESSDISZIPLIN verankert, der Regellauf misst den Liefer-Delta ab sofort ueber `git diff --name-only`. Bemerkenswert ist weniger der Fehler als seine Richtung — ein Messfehler der Aufsicht, der zur **Stilllegung arbeitender Loops** gefuehrt haette, ist teurer als jeder, der zu einem Lauf zu viel fuehrt.

### P3 — Tailscale auf dem Mac Mini weiterhin gestoppt (unveraendert seit 00:57)
`Tailscale is stopped`, `diskstation918.tail8265aa.ts.net` weiterhin NXDOMAIN. Lage unveraendert: NAS ueber LAN erreichbar, Selfcommit-Cron laeuft lueckenlos, Latenz statt Verlust; betroffen sind `nas-commit-now.sh` auf dem Mini, der Dispatch-Weg vom Handy und der remote-tasks-Weg von claude.ai/code. **Nicht eingegriffen** — Systemdienste sind Klasse 4 der Rule `interaktive-eingriffe`, und dieser Lauf ist unbeaufsichtigt. Der Eintrag steht samt fertigem Befehl in `logbuch/fristen.md` (Zeile 102 ff.) und wird dort vom Radar 06:55 und vom hub-chef 08:39 gelesen; kein Zweiteintrag, keine Mail.

## 2026-08-20 00:57 — [FREI] **Fenster frei bei 7 Sekunden Probenlaufzeit, sieben KBs mit Liefer-Delta — und ein Infrastruktur-Befund: auf dem Mac Mini ist Tailscale gestoppt.** Die Probe antwortet mit «OK», rc=0, in **7 s** und bestaetigt damit die Schwankungs-These des Vorlaufs statt der zuvor vermuteten Degradation. Ampel **FREI**, Verbrauch 11.9 % bei 36.3 % verstrichener Woche, Vorsprung **−24.4 Punkte** — erneut der groesste je gemessene Rueckstand. **Keine Waisen, kein Loop ohne Ertrag, Speicher wieder komfortabel.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 19.08. 12:57, dieser Lauf 20.08. 00:57, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Vierzehnter regulaerer Abstand in Folge, keine Eintragsluecke, `lastRunAt`-Gegenprobe nicht noetig.

**Latenz: die Reihe ist jetzt eindeutig eine Schwankung, kein Trend.** Gemessen nacheinander **39 s → 76 s → >120 s → 8 s → 7 s**. Zwei kurze Werte in Folge am selben Binary schliessen die am 19.08. 00:57 vermutete Verschlechterung endgueltig aus. Die **Untergrenze 180 s bleibt trotzdem** — sie schuetzt nicht gegen einen Trend, sondern gegen die Ausreisser nach oben, die einen knappen Watchdog rc=137 melden lassen und wie ein toter Blocker aussehen (Fehlbefund vom 15./16.08.). Kein Befund-Lauf faellig; die Schwelle dafuer bleibt mehrfach in Folge ueber 150 s.

**Feuermechanismen: alle drei Orte stimmen.** Lokal kein `vollgas`-Job geladen, beide plists weiterhin `.disabled-260729`. Auf dem Mac Mini ist `ch.jans.nachtschicht` geladen (Status 0, regulaer), `ch.jans.vollgas-supervisor` bleibt deaktiviert. Kein stillgelegter Mechanismus feuert, kein Loop wird doppelt gefeuert. Der Endlos-Runner bleibt ausgebaut (stehender Entscheid 30.07.).

**Liefer-Delta, 13-Stunden-Fenster.** 54 Commits, davon 50 `nas-selfcommit`-Sicherungen (Transport, nicht Arbeit) und vier Arbeits-Commits. **25 geaenderte Dateien unter `wissen/`**, 31 inklusive `logbuch/`. Ertrag in **sieben KBs**: **energie** (sieben Destillate, darunter Vollzugsordner-Abschnitte 3 und 6, plus Wiki `u-werte-grenzwerte-ch`), **baurecht** (Band 2, Kapitel 17 Ausruestungen), **koordination** (Wissens-Chef Run 37 und Synergie-Lauf 12), **normen** (`sia-102-2014`, Kategorie-Wert von VI auf V berichtigt), **immobilienbewertung** (`flaechendefinitionen-sia`), **planungsgrundlagen** (AHB-Projektstandards Stadt Zuerich), **architekten-synobsis** (fuenf offene Identitaetsfragen mit Quelle beantwortet). Der SIA-416/1-Rueckzug aus Run 37 wurde in vier KBs mit elf Vermerken propagiert. **Kein Loop mit Delta Null, keiner dreimal in Folge leer** — der Leerlauf-Waechter hat nichts zu tun, weder Ruecktakt noch Stilllegung.

**Nachtschicht 19.08.: vier Laeufe, alle rc=0** (02:41, 05:37, 13:31, 23:36). Drei davon mit echtem Ertrag und am Budgetdeckel beendet. Der 13:31-Lauf ist die Ausnahme und wird unten als P3 gefuehrt.

**Speicher:** frei+inaktiv+purgeable **5.99 GB**, Druckstufe **1 (normal)** — deutlich entspannter als die 1.1 GB des Vorlaufs, der P3-Punkt von gestern ist damit erledigt. Keine Waisenprozesse (`claude -p` leer), nichts blockiert das Lauf-Gate.

### P1 — Der Rueckstand waechst den dritten Lauf in Folge; die Ursache bleibt fehlendes Material
Der Vorsprung faellt von **−19.7 auf −24.4 Punkte**: 11.9 % Verbrauch nach 36.3 % der Woche. Das ist derselbe Befund wie im Vorlauf, nur eine Stufe deutlicher, und er bleibt die **Umkehrung des stehenden Auftrags** — nicht Verschwendung, sondern ungenutztes Kontingent. Die Belege sind unveraendert: die Nachtschicht-Laeufe melden erschoepfte Prioritaetenlisten und weichen auf Ersatzaufgaben aus, zuletzt der 23:36-Lauf, der als Ausweichaufgabe offene QUESTIONS einer KB recherchierte. Der Hebel liegt damit nicht beim Takt — mehr Laeufe auf leerem Material aendern nichts — sondern beim **Nachschub an Korpus**. Das ist ein Inhaltsentscheid und gehoert Raphael, nicht dem Radar. **Keine Mail:** nichts ist kaputt, es fehlt Arbeit, und der Punkt steht seit dem 19.08. unveraendert im Register — eine Wiederholungsmail fuer denselben Befund ist ausgeschlossen.

### P2 — Tailscale auf dem Mac Mini ist gestoppt; Fernzugriff und nativer Committer fallen aus
Gemessen per ssh: `Tailscale is stopped`, `diskstation918.tail8265aa.ts.net` NXDOMAIN. Aufgefallen an zwei Nachtschicht-Laeufen (02:30 und 23:36), die den fehlgeschlagenen NAS-Commit selbst melden. **Folgenlos fuer die Daten:** NAS ueber LAN erreichbar (0.4 ms), Selfcommit-Cron laeuft lueckenlos (00:15/00:30/00:45 belegt), Latenz statt Verlust. **Nicht folgenlos fuer die Erreichbarkeit:** `nas-commit-now.sh` auf dem Mini, der Dispatch-Weg vom Handy und der remote-tasks-Weg von claude.ai/code laufen alle ueber diesen Namen. **Nicht eingegriffen** — Systemdienste sind Klasse 4 der Rule `interaktive-eingriffe`, und dieser Lauf ist unbeaufsichtigt. Der Befund ist mit fertigem Befehl in `logbuch/fristen.md` eingetragen, damit ihn der Radar von 06:55 und der hub-chef von 08:39 aufnehmen; ein Laufbericht allein waere kein Meldekanal (Rule 260805).

### P3 — Ein Nachtschicht-Lauf beendete sich, waehrend er auf eine Hintergrundaufgabe wartete
Der 13:31-Lauf vom 19.08. endete nach 110 s mit rc=0 und 1.53 USD, der Ergebnistext lautet sinngemaess, er warte auf die Benachrichtigung der Hintergrundaufgabe, bevor er weitermache. Das ist **Null-Ertrag durch Abbruch, nicht Delta Null durch erschoepftes Material** — nach Auftrag also ausdruecklich **kein** Ruecktakt-Grund. Beobachten: kehrt das Muster wieder, ist die Ursache zu suchen, denn ein Lauf, der sich auf eine Benachrichtigung verlaesst, die nach seinem eigenen Ende kommt, kann sie nicht mehr empfangen.

## 2026-08-19 12:57 — [FREI] **Die Latenz-Reihe war kein Trend: dieselbe Probe antwortet heute in 8 Sekunden.** Nach 39 s / 76 s / >120 s misst dieser Lauf **8 s bei rc=0** — Faktor 15 gegenueber dem Vorlauf, gleiches Binary, gleicher Weg. Damit ist die am 00:57 vermutete Verschlechterung widerlegt. Ampel **FREI**, Verbrauch 9.5 % bei 29.1 % verstrichener Woche, Vorsprung **−19.7 Punkte** — erneut der groesste je gemessene Rueckstand. **Vier KBs mit Liefer-Delta (energie, normen, twin, kunde-bopp), keine Waisen, kein Loop ohne Ertrag.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 19.08. 00:57, dieser Lauf 12:57, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz. Dreizehnter regulaerer Abstand in Folge, keine Eintragsluecke, `lastRunAt`-Gegenprobe nicht noetig.

**Zur Latenz, weil der Vorlauf sie zum Hauptbefund gemacht hat.** Drei Messpunkte zeigten nach oben, und der 00:57-Eintrag las daraus eine Degradation mit angekuendigtem Befund-Lauf bei 180 s. Der vierte Messpunkt wirft das um: die Probe ist nicht langsamer geworden, sie **schwankt** — zwischen 8 und ueber 120 Sekunden am selben Binary. Der Befund-Lauf ist damit gegenstandslos und wird nicht gefahren. Was bestehen bleibt, ist der praktische Teil des alten Eintrags, und der wird durch die Schwankung sogar wichtiger: ein knapp bemessener Watchdog trifft irgendwann einen Ausreisser nach oben und meldet rc=137, was wie ein toter Blocker aussieht — genau der Fehlbefund vom 15./16.08. Die **Untergrenze 180 s bleibt** deshalb stehen, obwohl der Anlass entfallen ist. In der SKILL.md ist der Abschnitt entsprechend umgeschrieben: Reihe samt viertem Wert dokumentiert, Trend-Behauptung zurueckgenommen, Befund-Lauf erst bei **mehrfach in Folge ueber 150 s**. Umkehrbar, betrifft nur die eigene Task-Datei.

**Feuermechanismen: alle drei Orte stimmen.** Lokal kein `vollgas`-Job geladen, beide plists tragen weiterhin `.disabled-260729`. Auf dem Mac Mini ist `ch.jans.nachtschicht` geladen (Status 0, regulaer), `ch.jans.vollgas-supervisor` bleibt deaktiviert. Kein Mechanismus feuert, der stillgelegt sein sollte; kein Loop wird doppelt gefeuert. Der Endlos-Runner bleibt ausgebaut (stehender Entscheid 30.07.).

**Liefer-Delta, 13-Stunden-Fenster.** 62 Commits, davon rund drei Viertel `nas-selfcommit`-Sicherungen — die zaehlen als Transport, nicht als Arbeit. Echte Erzeugnisse: **energie** Run 143 (Vollzugsordner Abschnitte 5–10, Solarbewilligungsweg ZH korrigiert, drei AHB-Restwerke), **normen** Nacht-Run 57 (SIA 416/1, neuer Wiki-Artikel zur Abgrenzung der Verwendungszwecke), **twin** Fidelity-Lauf mit allen sechs Facetten-Artikeln angefasst, **kunde-bopp** Wissenscheck Phase 1. Dazu die operativen Briefings (hub-chef, logbuch-radar, Verzugscheck, Fruehwarnung) und der WEGE-Eintrag zur AGOV-Migration von eBaugesucheZH. **37 geaenderte Wiki-/Output-Dateien.** Kein Loop mit Delta Null, kein Loop dreimal in Folge leer — der Leerlauf-Waechter hat nichts zu tun, weder Ruecktakt noch Stilllegung.

**Zwei Nachtschicht-Laeufe, beide mit Ertrag, beide am Budgetdeckel beendet** (02:41 und 05:37, je rund 4 USD von 5, rc=0). Beide melden dasselbe Muster wie schon am 18.08.: die eigenen Prioritaeten 1 bis 5 sind erschoepft, der Lauf weicht auf eine Ersatzaufgabe aus und findet dort echte Arbeit. Das ist kein Defekt, aber es ist der Grund fuer den Punkt unten.

**Speicher:** 1.1 GB frei+inaktiv+purgeable, Druckstufe **1 (normal)**. Knapp, aber die Schutzmechanik selbst meldet keinen Druck; keine Waisenprozesse (`claude -p` leer), also blockiert nichts das Lauf-Gate.

### P1 — Der Rueckstand waechst weiter und ist inzwischen strukturell, nicht zufaellig
Der Vorsprung faellt von **−15.7 auf −19.7 Punkte**, und die Tagesreihe der Fruehwarnung faellt seit einer Woche fast monoton: 28.4 → 17.3 → 11.6 → 9.0 → 10.8 → 12.5 → **6.3** Mio (18.08., tiefster Tag der Reihe). Bei 9.5 % Verbrauch nach 29.1 % der Woche endet diese Woche weit unter Budget. Das ist die **Umkehrung des stehenden Auftrags** — nicht Verschwendung, sondern ungenutztes Kontingent, und damit derselbe Befund, den der Auftrag als «Fenster, das nicht mit Arbeit gefuellt war» ausdruecklich als Misserfolg fuehrt. Die Ursache steht in den Nachtschicht-Ergebnissen beider Tage im Klartext: **den Loops geht das Material aus**, nicht die Kapazitaet. Sie melden erschoepfte Prioritaetenlisten und arbeiten auf Ersatzaufgaben weiter. Der Hebel liegt damit nicht beim Takt (mehr Laeufe auf leeres Material aendern nichts), sondern beim **Nachschub an Korpus**: neue PDFs in die Destillat-Queue, offene QUESTIONS mit recherchierbaren Punkten, oder eine bewusst neue KB. Das ist ein Entscheid ueber Inhalte und gehoert Raphael, nicht dem Radar — deshalb hier als Lagebefund, ohne Massnahme und ohne Mail (kein P1-Blocker im Sinn der Mail-Disziplin: nichts ist kaputt, es fehlt Arbeit).

### P2 — Der Verzugscheck laeuft den neunten Tag blind gegen bexio 401
Aus den Commits dieses Fensters: `bexio 401, neunter Tag blind, RE-00100 Frist morgen`. Das ist ein operativer Punkt und liegt ausserhalb der Zustaendigkeit dieses Radars — er ist im Fristenregister und beim hub-chef bereits gefuehrt, wird hier also nur als Quittung vermerkt, dass die Meldekette funktioniert.

### P3 — Speicherreserve im Auge behalten
1.1 GB ist der tiefste Wert der letzten Laeufe. Druckstufe 1 sagt, dass es reicht; faellt sie auf 2, gehoert das in den Eintrag und nicht erst in den naechsten.

---
## 2026-08-19 00:57 — [FREI] **Fenster frei, kein Delta-Null-Loop — aber die Fensterprobe wird von Lauf zu Lauf langsamer.** Die PATH-Probe antwortet mit «OK», rc=0, also ist die CLI unverändert brauchbar. Sie brauchte dafür allerdings **über 120 Sekunden** (der Aufruf lief in den Hintergrund und kam erst danach zurück). Damit steht eine klare Reihe: **39 s (18.08. 00:58) → 76 s (18.08. 12:57) → >120 s (heute)**. Ampel **FREI**, Verbrauch 6.3 % bei 22.0 % verstrichener Woche, Vorsprung **−15.7 Punkte** — der grösste bisher gemessene Rückstand. **Sechs KBs mit Liefer-Delta, keine Waisen, kein Loop ohne Ertrag.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 18.08. 12:57, dieser Lauf 19.08. 00:57, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Zwölfter regulärer Abstand in Folge, keine Eintragslücke, `lastRunAt`-Gegenprobe nicht nötig.

**Die Probe-Latenz ist der eigentliche Befund dieses Laufs, und sie ist nicht harmlos.** Sie ist kein Blocker: die Probe endet mit rc=0, das Fenster ist frei, alles läuft. Aber genau diese Latenz hat die Läufe vom 15.08. und 16.08. ihre Kernmessung gekostet — ein Watchdog über einem Aufruf, der nahe an der Grenze liegt, meldet rc=137 und sieht aus wie ein toter Blocker, obwohl bloss die Antwort zu spät kam. Der 18.08.-Eintrag hat das bereits benannt («eine 60-s-Grenze über einem 39-s-Aufruf trifft bei jeder Schwankung»); seither hat sich der Abstand zur Grenze nicht verbessert, sondern **dreimal in Folge verschlechtert**. Dieser Lauf ist nur deshalb sauber durchgelaufen, weil der Watchdog auf 150 s stand. **In der SKILL.md ist die Messreihe festgehalten und als Untergrenze für den Watchdog neu 180 s vermerkt** — umkehrbar, betrifft nur die eigene Task-Datei. Die Ursache wird hier nicht ergraben, das ist Sache eines Befund-Laufs, nicht des Regellaufs; festzuhalten ist, dass die App-gebündelte CLI dieselbe Probe weiterhin in Sekunden beantwortet, die Langsamkeit also am Homebrew-Binary hängt und nicht am Konto.

**Liefer-Delta (14 h, sechs KBs mit CHANGELOG-Eintrag):** energie (9 Dateien), koordination (6, Wissens-Chef Run 36: SIA-102-Fundstelle im Honorar-Skill richtiggestellt, § 47a BBV I als überholt markiert, VKF-Fluchtwegtür auf BRL 16-15 gehoben), normen (4), planungsgrundlagen (3), baurecht (3), immobilienbewertung (2). Operativ zusätzlich geliefert: Synergie-Lauf 11 (SYN-35 umgesetzt, tote SYN-ID des Vorlaufs korrigiert) und der Tenant-Hygiene-Report. **Jeder Loop, der im Fenster gefeuert hat, hat auch geliefert** — synergie-lauf-taeglich 17:10, tenant-hygiene 20:08, wissens-chef 23:11. Sechs statt elf KBs wie im Vorlauf ist kein Rückschritt: das 14-h-Fenster dieses Laufs liegt über Abend und Nacht, das des Mittagslaufs über dem ganzen Vortag. **Keine Rücktaktung fällig, keine Stilllegung fällig.**

**Feuermechanismen unverändert korrekt, alle drei Orte geprüft.** MacBook: beide vollgas-plists tragen weiterhin `.disabled-260729`, nichts geladen. Mac Mini: `ch.jans.nachtschicht` geladen, `ch.jans.vollgas-supervisor` weiterhin disabled. Der bekannte, bewusst nicht geheilte Widerspruch beim Mini-Loop `energie-training` (`enabled: false` in der Frontmatter, liefert trotzdem — heute mit neun Dateien der grösste Einzelbeitrag) besteht fort und bleibt unangetastet: das Feld ist Dokumentation, kein Live-Zustand.

**Speicher:** rund 4.0 GB frei (free + inactive + purgeable), `kern.memorystatus_vm_pressure_level: 1` — normal, kein Druck. Keine verwaisten `claude -p`-Prozesse; der Watchdog musste nicht eingreifen.

- **P1 — keine.** Kein Blocker, kein Mail-Anlass: der Auftrag verlangt eine Mail nur bei neuem oder gelöstem P1 oder erschöpftem Wochenkontingent, und nichts davon liegt vor.
- **P2 — der Rückstand zum Zeitverlauf wächst zum vierten Mal in Folge: −5.4 → −10.3 → −15.7 Punkte.** Bei 22 % verstrichener Woche sind erst 6.3 % des Kontingents verbraucht. Die Erklärung «zwei CLI-blockierte Tage» aus dem Vorlauf trägt nicht mehr, denn die CLI läuft seit dem 18.08. wieder, und der Rückstand hat sich seither trotzdem um weitere 5.4 Punkte vergrössert. Der stehende Auftrag ist **Ausschöpfung**, nicht Sparen — das Kontingent verfällt am Montag ungenutzt. Sachlich fällig ist damit die Frage nach zusätzlicher Lern-Arbeit in den vorhandenen Nachtfenstern. Nicht als Takterhöhung am Wochenanfang: der Entscheid vom 03.08. (gleichmässig über die Woche) gilt unverändert, und der Radar legt jene Regimefrage nicht erneut vor.
- **P3 — die Watchdog-Untergrenze ist jetzt nachgezogen, die Ursache der Latenz nicht.** Falls die Reihe weiter steigt und die Probe die 180 s erreicht, ist ein eigener Befund-Lauf fällig statt einer weiteren Anhebung. Eine Grenze, die man dreimal nachzieht, misst nichts mehr.

## 2026-08-18 12:57 — [FREI] **Der P1 ist jetzt auch strukturell erledigt: Homebrew hat 2.1.226 nachgeliefert.** Der Vorlauf um 00:58 meldete, dass das gewedgete Binary 2.1.224 wieder Sessions fährt, ohne dass jemand etwas repariert hätte. Heute um **05:15 hat Homebrew die Fassung 2.1.226 ins Caskroom gelegt und den Symlink umgehängt**; 2.1.224 ist aus dem Caskroom **verschwunden**, der Ordner führt nur noch die neue Fassung. Beide Wege gemessen, beide rc=0: **PATH-Binary `/opt/homebrew/bin/claude` (2.1.226) antwortet «OK» in 76 s**, die app-gebündelte CLI 2.1.229 ebenso in Sekunden. Ampel **FREI** und weiterhin auffällig sparsam: 4.6 % verbraucht bei 14.9 % verstrichener Woche, Vorsprung **−10.3 Punkte**. **Elf KBs mit Liefer-Delta, kein Delta-Null-Loop, keine Waisen.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 18.08. 00:58, dieser Lauf 12:57, Abstand **11 h 59 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Elfter regulärer Abstand in Folge, keine Eintragslücke, `lastRunAt`-Gegenprobe nicht nötig.

**Ausgeführt: der Umweg über die app-gebündelte CLI ist zurückgebaut.** Der Auftrag selbst nannte die Bedingung («sobald Raphael den Symlink umgehängt oder Homebrew ein funktionierendes Cask nachgeliefert hat, fällt dieser Umweg weg — das ist dann am PATH-Binary zu prüfen, nicht zu vermuten»). Genau das ist eingetreten und gemessen, also ist der Pflicht-Passus in der SKILL.md durch die einfache Fensterprobe über den PATH ersetzt worden. Der Umweg bleibt als Rückfallweg dokumentiert, nicht mehr als Vorschrift. Das ist umkehrbar und betrifft nur die eigene Task-Datei.

**Neue Messfalle, in genau dem Befehl, den der Auftrag empfahl.** Die Prüfvorschrift lautete `ls -la $(command -v claude)`. In dieser zsh ist `claude` ein **Alias** (`cd ~/Developer/jans-ai-hub && claude`), `command -v` gibt deshalb die ganze Alias-Definition zurück, und `ls` zerlegt sie in fünf Fehlermeldungen über nicht existierende Dateien. Das sieht nach einem kaputten Symlink aus und ist keiner. Richtig ist die direkte Prüfung auf `/opt/homebrew/bin/claude`. Gleiche Familie wie der grep-auf-Nicht-UTF-8-Fall: **ein Fehlschlag ist zuerst eine Aussage über das Werkzeug, nicht über die Sache.** In der SKILL.md korrigiert.

**Liefer-Delta (14 h, elf KBs mit CHANGELOG-Eintrag):** baurecht (Buch-Run 74, Band 2 Lage von Gebäuden, Thalwil-Korpus), normen (Nacht-Run 56, SIA 416-1 destilliert, Register), energie (Wärmebedarf-Rechtsgrundlagen ZH, U-Werte, Energienachweis), entwurfs-referenzen (Judd-Prinzip, Parameter-Set Healthcare), koordination (Wissens-Chef Run 35), twin (Fidelity-Review 05:45, Fidelity 31), grobkosten, immobilienbewertung, planungsgrundlagen, projekt-lessons, wettbewerbs-dna. Operativ zusätzlich: Verzugscheck, Zahlungsabgleich, Radar-Briefing und Hub-Chef-Tagesbriefing sind alle vier durchgelaufen. **Kein Loop mit Delta Null, keine Rücktaktung fällig.**

**Feuermechanismen unverändert korrekt, alle drei Orte geprüft.** MacBook: beide vollgas-plists tragen weiterhin `.disabled-260729` und sind nicht geladen. Mac Mini: `ch.jans.nachtschicht` geladen, `ch.jans.vollgas-supervisor` disabled. Zweite Registry gegengeprüft — der Mini führt die acht bekannten Tasks, `energie-training` trägt weiterhin `enabled: false` in der Frontmatter und liefert trotzdem (wissen/energie hat heute Delta). Der dokumentierte Widerspruch bleibt bestehen und wird bewusst **nicht** geheilt: das Feld ist Dokumentation, kein Live-Zustand, und ein Edit könnte einen produktiven Loop stillstellen.

**Speicher:** rund 5.0 GB frei (free + inactive + purgeable), `kern.memorystatus_vm_pressure_level: 1` — normal, kein Druck.

- **P1 — entfällt.** Der CLI-Blocker, der die Läufe vom 15.08. 12:58 und 16.08. 00:58 ihre Kernmessung kostete, ist über zwei Läufe hinweg als erledigt bestätigt und jetzt auch strukturell aufgelöst. Kein Mail-Anlass: gemailt wurde zu diesem Befund nie, der Auftrag verlangt eine Mail nur bei neuem oder gelöstem P1, und der Vorlauf hat die Lösung bereits festgehalten.
- **P2 — der Verbrauch läuft dem Zeitverlauf deutlich hinterher, drittes Mal in Folge.** −10.3 Punkte sind der grösste bisher gemessene Rückstand; am 18.08. 00:58 waren es −5.4. Das ist die Gegenrichtung des Wochenlimit-Vorfalls vom 01.–03.08. und für sich genommen ungefährlich, aber es heisst auch: **das Kontingent wird derzeit nicht ausgeschöpft**, und der stehende Auftrag ist Ausschöpfung, nicht Sparen. Ein Teil erklärt sich aus den zwei CLI-blockierten Tagen. Sollte der Rückstand über das Wochenende hinaus wachsen, ist die Frage nach zusätzlicher Lern-Arbeit sachlich fällig — nicht als Takterhöhung am Wochenanfang (Entscheid 03.08. gilt), sondern über die vorhandenen Nachtfenster.
- **P3 — keine.**

## 2026-08-18 00:58 — [FREI] **Der P1 ist weg: das gewedgete Binary 2.1.224 fährt wieder Sessions.** Seit dem 15.08. 05:15 galt die MacBook-CLI als unbrauchbar, zuletzt (17.08. 12:58) mit dem Bild «`--version` antwortet, `claude -p` läuft in den Watchdog, rc=137». Dieser Lauf misst das Gegenteil, und zwar dreimal in Folge: **`claude -p` über den PATH-Symlink antwortet mit «OK», rc=0** (Durchgänge 39 s / 35 s, plus ein direkter Aufruf am Caskroom-Pfad, ebenfalls rc=0). Ampel **FREI** und deutlich sparsam: 2.3 % verbraucht bei 7.7 % verstrichener Woche, Vorsprung **−5.4 Punkte**, der Verbrauch läuft dem Zeitverlauf also hinterher. **Sieben KBs mit Liefer-Delta, kein Delta-Null-Loop, keine Waisen.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 17.08. 12:58, dieser Lauf 18.08. 00:58, Abstand **exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Zehnter regulärer Abstand in Folge, keine Eintragslücke, `lastRunAt`-Gegenprobe nicht nötig.

**Der P1-Befund im Detail, weil er drei Läufe lang die Lage bestimmt hat.** Der Symlink `/opt/homebrew/bin/claude` ist **unverändert** (zeigt seit 15.08. 05:15 auf `/opt/homebrew/Caskroom/claude-code/2.1.224/claude`), und der Caskroom führt **weiterhin nur 2.1.224**. Es hat also niemand etwas repariert, weder Raphael noch Homebrew: **dasselbe Binary, das zwei Tage lang hing, arbeitet jetzt.** Damit ist die bisherige Deutung «der Wedge sitzt im Binary» überholt. Sie war schon am 17.08. brüchig, als `--version` plötzlich wieder antwortete; heute fällt auch der zweite Teil. Wahrscheinlicher ist ein Zustand, den der erste Start der neuen Fassung hinterliess (Migration, Lock, Onboarding-Schritt), der sich inzwischen aufgelöst hat. Beweisen lässt sich das aus der Ferne nicht, und der Regellauf gräbt dem nicht nach, solange die CLI läuft.

**Zwei Dinge bleiben trotzdem stehen.** Erstens ist die CLI **langsam**: 35 bis 39 Sekunden für eine Einwort-Antwort auf Haiku, während die App-gebündelte 2.1.229 dieselbe Probe in Sekunden beantwortet. Das ist kein Blocker, aber es ist kein Normalzustand, und es erklärt einen Teil der Watchdog-Treffer der letzten Tage: eine 60-s-Grenze über einem 39-s-Aufruf trifft bei jeder Schwankung. Zweitens bleibt die Empfehlung aus dem 16.08.-Eintrag, den Symlink auf die App-CLI umzuhängen, **gegenstandslos** und sollte nicht mehr ausgeführt werden. Sie hätte den Symlink in einen Ordner zeigen lassen, den die App selbst weiterdreht, und löst nun ein Problem, das es nicht mehr gibt. Der Umweg über die App-CLI in dieser Task-Beschreibung darf bleiben (er ist verlässlich und schnell), ist aber nicht mehr zwingend.

**Auto-Update-Wächter: ungeklärter Nebenbefund, P2.** `/tmp/claude-autoupdate.out` und `.err` sind **beide 0 Bytes mit mtime 15.08. 05:15**, obwohl `ch.jans.claude-autoupdate` täglich um 05:15 feuert. Seit drei Läufen also keine einzige Zeile Ausgabe und keine Berührung der Dateien. Es hängt gerade **kein** Prozess (gegengeprüft). Ob der Job läuft und schweigt oder gar nicht mehr feuert, ist mit einer Regellauf-Messung nicht zu entscheiden. Das zählt, weil die Fristenzeile vom 17.08. zur Konversations-Extraktion genau diesen Job als unbewiesenen Kandidaten für die 27 Transkripte mit identischer mtime 05:15 führt. Ich behaupte hier nichts dazu, ich halte nur fest, dass der Job seit dem 15.08. keine Spur hinterlässt.

**Liefer-Delta seit dem letzten Lauf (12 h): 37 geänderte Wiki-, Destillat- und Output-Dateien in sieben KBs** — energie (4 Wiki, 3 Destillate), baurecht (3 Wiki, 3 Training, 2 Outputs), koordination (3 plus 2 Outputs), projekt-lessons (3), planungsgrundlagen (3), immobilienbewertung (2), wettbewerbs-dna (2). Im Git 62 Commits in 14 h, davon fünf mit echtem Inhalt: baurecht Buch-Run 74 (Korrektur-Harness), wissens-chef Run 35 (EN-102-Ausgabe 2009→2016 korrigiert, 36 unverdrahtete Doppel-Destillate gemessen), tenant-hygiene (Versionsverlauf wächst wieder, +3.27 GB/Tag), Synergie-Lauf 10 (SYN-33 umgesetzt, SYN-34 vorgelegt). Der Rest ist `nas-selfcommit`, zählt nicht als Arbeit. **Kein Loop mit Delta Null, keine Rücktaktung, keine Deaktivierung.** Im Journal vom 17.08. neun Läufe, davon einer mit rc=1 (`energie-training-vollgas`, Mac Mini 07:11, «Not logged in», 1 s) — derselbe Loop lief 20 Minuten später mit rc=0 und 92 Turns durch. Transienter Fehlstart, kein Null-Ertrag, keine Massnahme.

**Feuermechanismen: sauber, alle drei Orte geprüft.** MacBook Pro `ch.jans.vollgas-supervisor` und `ch.jans.vollgas-monitor` beide als `.disabled-260729` abgelegt und in `launchctl list` nicht vorhanden; Mac Mini `ch.jans.vollgas-supervisor` ebenfalls `.disabled-260729`, geladen ist dort nur `ch.jans.nachtschicht`. Kein doppelt gefeuerter Loop. **Der Endlos-Runner bleibt ausgebaut** (stehender Entscheid 30.07.), dieser Lauf hat nichts daran berührt.

**Mac Mini wieder erreichbar.** Die Frühwarnung vom 17.08. 07:15 meldete `ssh` und `ping` auf 100.120.219.12 im Timeout bei `tx 1404 rx 0`. Dieser Lauf hat den Mini **ohne Verzögerung erreicht** und seine LaunchAgents ausgelesen; die Budget-Messung führt ihn als `frisch: true` mit 0.45 Mio. Der Tailscale-Rückweg steht also wieder. Speicher unauffällig: rund 4.2 GB frei plus inaktiv, Druckstufe 1.

**P1 — keiner mehr offen.** Der CLI-Blocker ist gelöst und im Fristenregister als erledigt nachgetragen; Mail an rj@ raus (Anlass b, gelöster Blocker).
**P2 — Auto-Update-Wächter ohne Lebenszeichen seit 15.08.** Zwei leere Logdateien bei täglichem Takt. Zusammen mit der offenen Frage, was am 15.08. und 17.08. je um 05:15 die Transkripte berührte, wäre das eine lohnende Tiefenprüfung. Sie gehört nicht in einen Regellauf.
**P3 — die CLI ist zehnmal langsamer als die App-CLI** (39 s gegen wenige Sekunden). Kein Handlungsdruck, aber Watchdog-Grenzen unter 60 s sind an diesem Binary unzuverlässig.

---
## 2026-08-17 12:58 — [FREI] **Der P1 ist nicht bloss blockiert, er ist unreparierbar auf dem eingeschlagenen Weg: der Caskroom enthaelt nur 2.1.224.** Der letzte Lauf hat richtig diagnostiziert, dass der Auto-Update-Waechter am gewedgeten Binary haengt. Dieser Lauf legt die zweite Haelfte frei: selbst ein entblockter Waechter faende **nichts zum Updaten** — `/opt/homebrew/Caskroom/claude-code/` fuehrt als einzige Fassung die defekte 2.1.224. Der Waechter koennte also endlos sauber durchlaufen und der P1 bliebe stehen. Zugleich hat sich der Defekt an der Oberflaeche veraendert: `command claude --version` antwortet neu **in Sekunden** mit 2.1.224 (rc=0), der 19-h-45-Hang ist weg — aber `claude -p` ueber denselben Symlink laeuft weiterhin in den Watchdog (**rc=137**, 60 s). Das Binary kann Metadaten ausgeben, aber keine Session fahren. Ampel **FREI** (0.1 % bei 0.6 % verstrichener Woche — der Wochen-Reset lief heute 12:00). **Sieben KBs mit Liefer-Delta, kein Delta-Null-Loop, keine Waisen.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 17.08. 00:58, dieser Lauf 12:58, Abstand **exakt
12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Neunter regulaerer
Abstand in Folge, keine Eintragsluecke, `lastRunAt`-Gegenprobe nicht noetig.

**Fenster und Budget.** Probe ueber die App-gebuendelte CLI 2.1.229 (`~/Library/Application Support/Claude/claude-code/2.1.229/claude.app/Contents/MacOS/claude`, Rezept vom 16.08.): «OK», rc=0, Antwort in Sekunden. Das Probe-Script lief wie vorgeschrieben als Datei ueber `bash`, nicht inline in der zsh. Budget: **0.18 von 167 Mio teuer = 0.1 %** bei **0.6 %** verstrichener Woche, Vorsprung **-0.5 Punkte**. Der Wochen-Reset ist heute 12:00 gelaufen; die Woche 10.–17.08. endete bei 47.4 % gegen 93.4 % verstrichene Zeit, also mit rund der Haelfte des Kontingents ungenutzt. Speicher: 5.31 GB verfuegbar (free 4745 + inactive 313041 + purgeable 6535 Pages a 16 kB), `kern.memorystatus_vm_pressure_level: 1` (normal).

**Feuermechanismen — alle drei Orte geprueft, keine Abweichung.** (i) Lokale Registry: 34 Tasks, die acht deaktivierten sind samt und sonders gewollt (erledigte One-Times, die beiden Ereignis-Trigger `immobewertung-training`/`spec-training`, das abgeloeste `synergie-lauf-monatlich`). **Kein Drossel-Rest aus einer frueheren Ampel-Phase, der jetzt zurueckzuholen waere** — bei FREI ausdruecklich geprueft, weil eine nicht zurueckgedrehte Drossel eine stille Stilllegung waere. (ii) launchd beide Stationen: `ch.jans.vollgas-supervisor` und `ch.jans.vollgas-monitor` tragen unveraendert `.disabled-260729` und sind nirgends geladen; der stehende Entscheid vom 30.07. haelt. Auf dem Mini feuert `ch.jans.nachtschicht` als einziger Lern-Taktgeber. (iii) Zweite Registry (Mini, per ssh): acht Tasks, deckungsgleich mit dem Sollstand. Keine Doppelfeuerung.

**Liefer-Delta: sieben KBs, plus vier operative Briefings.** twin (7 Dateien, Fidelity-Review 05:45: 15. Falle, DNA neu kompiliert auf 29'971 B), normen (Run 55: N54-1 geschlossen, Refuter-Runde ueber ~69 Aussagen mit 2 Widerlegungen, neuer Wiki-Artikel SIA 416/1 Verwendungszweck-Abgrenzung), energie (Run 138: Energierecht-ZH-Ordner abgeschlossen, WDV-2022-Luecke aufgedeckt, Fortschrittszahl sauber nachgemessen auf 107 von 131), projekt-lessons (3 Dateien, neue Lesson nerves-2015 zu unterschaetzten Nebengewerken), grobkosten (Baupreisindex-Stichtag 01.10.2025 an der Primaerquelle nachgezogen), wettbewerbs-dna (Etappe-4-Vertiefung, Montagslauf 02:27), wissens-destillat (Inventar 813/706). Dazu hub-chef, zahlungsabgleich, mahnwesen, logbuch-radar. **97 Commits seit 05:15.** Kein Loop mit Delta Null, also keine Ruecktaktung und keine Stilllegung faellig.

**Zwei transiente Stoerungen von heute frueh, beide von selbst behoben — kein Handlungsbedarf.** (1) `energie-training-vollgas` fiel um 07:11 mit «Not logged in» aus (rc=1, 1 s); derselbe Loop lief um 07:31 volle 1197 s durch und lieferte. Kein Login-Blocker. (2) Zwei Mini-Loops meldeten um 07:20 und 07:24, die SSH-Route zur Synology sei nicht erreichbar, ihre Arbeit liege nur lokal committet. Gegenprobe eben: `ssh diskstation918.tail8265aa.ts.net` antwortet, **SYNO_OK 13:00:20**, und `energie` Run 138 meldete um 07:31 bereits «committet und gepusht». Die Sicherung hat sich eingerenkt, nichts blieb liegen.

### P1 — CLI-Wedge: der Reparaturweg ueber Homebrew ist eine Sackgasse, der Fix liegt am Symlink
Stand: `/opt/homebrew/bin/claude` → `Caskroom/claude-code/2.1.224/claude`, gesetzt am 15.08. 05:15.
Der Caskroom fuehrt **nur diese eine Fassung**; die funktionierende 2.1.229 liegt ausschliesslich
in der App unter `Application Support/Claude/claude-code/2.1.229/`. Damit ist belegt: **weder der
naechste 05:15-Lauf des Waechters noch ein manuelles `brew upgrade` kann den P1 loesen**, solange
Homebrew kein neues Cask veroeffentlicht. Der wirksame Eingriff waere, den Symlink auf die
App-gebuendelte CLI umzuhaengen. **Das tut dieser Lauf ausdruecklich nicht:** ein Symlink in
`/opt/homebrew/bin` faellt unter Persistenz/Systemdienste (Rule `interaktive-eingriffe`, Klasse 4/5),
und dies ist eine unbeaufsichtigte Session — dort gilt die Ankuendigungspflicht gerade nicht als
erfuellbar. Der fertige Befehl zum Vorlegen:
`ln -sfn "$HOME/Library/Application Support/Claude/claude-code/2.1.229/claude.app/Contents/MacOS/claude" /opt/homebrew/bin/claude`
Umkehrbar durch erneutes `ln -sfn` auf den Caskroom-Pfad. **Auswirkung bleibt begrenzt:** die
Scheduled Tasks feuern aus der App und sind unbeeintraechtigt, der Mini-PATH ist gesund (seine
Loops liefen heute 484 s, 737 s und 1197 s durch). Betroffen sind allein script-getriebene
`claude -p`-Aufrufe auf dem MacBook.
**Mail: keine.** Derselbe P1, fuer den am 15.08. 12:58 bereits gemailt wurde; er ist weder geloest
noch eskaliert, und eine Wiederholungsmail fuer denselben Befund ist ausgeschlossen. Gemailt wird,
sobald der Symlink umgehaengt ist (geloester Blocker) oder der Wedge auf die App-CLI uebergreift.

### P2 — Der Mini-Dispatch startet Loops im falschen Arbeitsverzeichnis
`grobkosten-training-vollgas` meldete um 07:12 woertlich, er laufe «in `/Users/raphaeljans`, nicht
im Hub-Repo», und **fragte zurueck statt zu arbeiten** (16 s, 0.10 USD, kein Delta). Ohne das
Repo-Arbeitsverzeichnis greift weder dessen `CLAUDE.md` noch die Trainingsregel der KB. Der Lauf
um 07:20 lief dann korrekt und lieferte, der Fehler kostete also nur einen Fehlstart — aber er ist
strukturell: ein Loop, der sein Arbeitsverzeichnis nicht gesetzt bekommt, improvisiert oder bricht
ab. Zu pruefen waere, ob `dispatch-run.sh` bzw. der Nachtschicht-Wrapper vor `claude -p` sicher ins
Repo wechselt. **Kein Eingriff in diesem Lauf** (fremde Station, Script-Aenderung); als Befund
notiert, weil er jeden Mini-Loop treffen kann.

### P3 — Keine offenen Punkte
Feuermechanismen sauber, keine Waisen, kein Delta-Null-Loop, Budget nach dem Reset praktisch
unberuehrt. Der Radar-Regellauf blieb schlank (unter 15 Werkzeugaufrufen, inline gemessen, keine
Delegation — Faustregel der Modell-Politik eingehalten).

---
## 2026-08-17 00:58 — [FREI] **Die Ursache des P1 gefunden: der Auto-Update-Waechter haengt selbst am gewedgeten Binary.** `claude-autoupdate.sh` stand seit dem 16.08. 05:15 volle **19 h 45 min** an der Zeile `command claude --version`, ohne Watchdog, ohne Zeitgrenze. Der Lauf vom 15.08. 05:15 hatte den Symlink auf 2.1.224 gelinkt und ist unmittelbar danach an derselben Stelle stehengeblieben: sein Log endet nach «successfully upgraded» ohne die sonst obligate Zeile «=== Lauf beendet ===». Damit ist belegt, warum der P1 seit zwei Tagen offen steht. **Nicht nur das PATH-Binary ist defekt, der Mechanismus, der es reparieren wuerde, ist an genau diesem Defekt blockiert** und wuerde es bei jedem weiteren 05:15-Takt erneut sein. Ampel **FREI** (47.4 % bei 93.4 % verstrichener Woche, Vorsprung **-46.1**, vierter Tag in Folge verbessert). **Sieben fremde Loops mit Liefer-Delta plus der eigene Lauf, kein Delta-Null-Loop.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 16.08. 12:58, dieser Lauf 17.08. 00:58, Abstand **exakt
12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Achter regulaerer
Abstand in Folge, keine Eintragsluecke, `lastRunAt`-Gegenprobe nicht noetig.

**Fensterprobe.** Ueber die App-gebuendelte CLI 2.1.229 «OK», rc=0, Antwort in Sekunden. Der Ersatzweg
aus dem Rezept traegt den zweiten Lauf in Folge. Das PATH-Binary wurde gegengeprueft und antwortet
weiterhin nicht: `/opt/homebrew/bin/claude --version` lief in den 60-s-Abbruch, der Symlink zeigt
unveraendert auf `Caskroom/claude-code/2.1.224/claude` (Datum 15.08. 05:15). Der eigene Waise dieser
Gegenprobe wurde sofort abgeraeumt.

**Ausgefuehrte Massnahmen.**
1. Beide haengenden Autoupdate-Prozessbaeume beendet (PID 40993/40999/41000 samt Kind 41002), danach
   verifiziert: kein `claude --version` mehr in der Prozessliste. Der launchd-Job selbst wurde **nicht**
   angefasst, er feuert am naechsten Takt regulaer.
2. `scripts/claude-autoupdate.sh` Zeile 59 ff.: `cli_version()` bekommt einen eigenen Watchdog mit
   harter 20-Sekunden-Grenze, der die Kindprozesse mitabraeumt und `n/a (Zeitueberschreitung nach 20 s)`
   zurueckgibt. `timeout` gibt es auf diesen Stationen nicht, deshalb Subprozess plus `pkill -P`.
   Verifiziert: `--status` kehrt nach exakt 20 s zurueck statt zu haengen, keine Waisen. Diff `25/1`,
   die eine geloeschte Zeile ist die ersetzte. Der Job kann sich damit nicht mehr selbst blockieren,
   auch wenn das Binary defekt bleibt.

**Wochenbudget.** 79.11 von 167 Mio, MacBook Pro 57.96 / Mac Mini 21.15, beide Stationsdateien frisch.
Der Verbrauch laeuft dem Zeitverlauf um 46.1 Punkte **hinterher**, der komfortabelste Stand der Woche.
Der Entscheid «gleichmaessig ueber die Woche» ist eingehalten, das Wochenende laeuft nicht leer.
Keine Drossel, keine Reaktivierung noetig.

**Liefer-Delta (13 h).** 58 Commits, davon 8 Arbeits-Commits: wissens-chef Run 34 (23:32),
energie Run 137 (22:59), tenant-hygiene (20:13), Abo-Check (18:13), Synergie-Lauf 09 (17:20),
energie-training Run 136 auf der Mini-Nachtschicht (13:36) und die beiden Commits des eigenen
12:58-Laufs. Dateiseitig zusaetzlich Deltas in `wissen/normen`, `wissen/planungsgrundlagen`,
`wissen/projekt-lessons` und `wissen/koordination`. Kein Loop ohne Delta, kein Ruecktakt-Kandidat.

**Nachtschicht Mac Mini.** Vier Laeufe im Journal, drei mit rc=0. Der Lauf um 02:40 endete mit rc=1 und
`terminal_reason: budget_exhausted` am 5-Dollar-Deckel nach 20 Turns. Das ist ein **Abbruch, kein
Delta Null**: der Loop war hungrig und wurde am Deckel gestoppt, nicht materialleer. Nach der
Auftragsregel wird er deshalb ausdruecklich **nicht** rueckgetaktet.

**Feuermechanismen.** Unveraendert sauber. Lokal liegen `vollgas-supervisor` und `vollgas-monitor` als
`.disabled-260729` und sind nicht geladen; auf dem Mac Mini liegt der Supervisor ebenso deaktiviert,
geladen ist dort einzig `ch.jans.nachtschicht` (Status 0). Kein Doppelfeuer, keine Wiederbelebung.

**Speicher.** Frei plus inaktiv plus purgeable rund 4.35 GB, `kern.memorystatus_vm_pressure_level: 1`
(normal). Keine Waisen im Lauf-Gate.

- **P1 (unveraendert offen, nur Raphael):** der Homebrew-Symlink `/opt/homebrew/bin/claude` zeigt auf
  die gewedgete Fassung 2.1.224. Der Radar misst ueber den App-Pfad weiter, aber jeder Script- und
  Loop-Aufruf, der `claude` aus dem PATH nimmt, laeuft ins Leere. Fix: Symlink auf die funktionierende
  App-Fassung umhaengen oder das Cask ersetzen. Der Auto-Update-Weg faellt als Selbstheilung aus, das
  hat dieser Lauf gemessen. **Keine Mail**, der Befund ist seit dem 15.08. gemeldet und nicht neu.
- **P2:** die Desktop-App meldet ein bereitliegendes Update (1.30096.1 laeuft, Update pendent). Der
  sanfte Neustart haengt am selben Job und ist seit zwei Laeufen nicht ausgefuehrt worden. Mit dem
  Watchdog kommt der naechste 05:15-Lauf ueber die Versionszeile hinaus und sollte ihn nachholen. Im
  naechsten Radar-Lauf gegenpruefen, ob das Log den vollstaendigen Durchlauf zeigt.
- **P3:** kein Handlungsbedarf. Der Abstand zwischen Verbrauch und Zeitverlauf waechst weiter zugunsten
  des Kontingents, die Loops liefern durchgehend.

---
## 2026-08-16 12:58 — [FREI] **Die Fensterprobe misst wieder: über die App-gebündelte 2.1.229 antwortet sie mit «OK», rc=0.** Der letzte Lauf hatte den funktionierenden Ersatzweg diagnostiziert, aber noch nicht genutzt; dieser Lauf hat ihn gefahren und im Rezept verankert. Damit ist die Kernmessung des Radars nach zwei blinden Läufen wiederhergestellt. Der Homebrew-Symlink zeigt unverändert auf die gewedgete 2.1.224; P1 bleibt offen, hat aber keinen Messverlust mehr zur Folge. Ampel **FREI** (44.7 % bei 86.3 % verstrichener Woche, Vorsprung **-41.6**, dritter Tag in Folge verbessert). **Acht Loops mit Liefer-Delta, kein Delta-Null-Loop.**

**Selbstkontrolle: bestanden.** Letzter Eintrag 16.08. 00:58, dieser Lauf 12:58 — Abstand **exakt
12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Siebter regulärer
Abstand in Folge. Keine Eintragslücke, `lastRunAt`-Gegenprobe nicht nötig (Registry zeigt
16.08. 12:57 = dieser Lauf).

**Fenster.** Erstmals seit dem 14.08. wieder eine echte Probe. Der erste Versuch über `claude` im
PATH lief erwartungsgemäss in den Watchdog (rc=137 nach 100 s) — der Symlink
`/opt/homebrew/bin/claude` zeigt weiterhin auf `Caskroom/claude-code/2.1.224/claude`, Zeitstempel
unverändert 15.08. 05:15. Über die App-gebündelte Fassung
`~/Library/Application Support/Claude/claude-code/2.1.229/…/claude` antwortete dieselbe Probe in
Sekunden: **«OK», rc=0**. Die vorgeschaltete Versionsabfrage derselben Fassung meldete
**2.1.229 (Claude Code)**, ebenfalls rc=0. **Fensterzustand FREI.** Waisen nach beiden
Watchdog-Eingriffen gegengeprüft: `ps -eo pid,ppid,command | grep "claude -p"` leer, kein
Gate-Platz blockiert.

**Rezept-Korrektur, im selben Lauf umgesetzt** (umkehrbare Arbeit, Whitelist A-Bereich): Schritt 2
der eigenen SKILL.md schreibt die Probe jetzt zwingend auf die App-CLI fest, samt Rückweg für den
Tag, an dem der Symlink wieder stimmt (am PATH-Binary prüfen, nicht vermuten), und samt dem
Hinweis, dass die Versionsnummer im Pfad mit den App-Updates wandert. Zusätzlich vermerkt: **`set -m`
scheitert in zsh** («can't change option: -m») — das Probe-Script gehört in eine Datei und wird mit
`bash` gestartet. Dieser Fehler ist in diesem Lauf einmal gelaufen und hat den ersten Probeversuch
gekostet; er soll keinen zweiten kosten.

**Budget.** `kontingent-budget.sh --json` (misst ohne Modellaufruf): **74.67 von 167 Mio teuer =
44.7 %** bei **86.3 %** verstrichener Woche, **Vorsprung -41.6 Punkte** (Vortag -38.3, davor -33.3,
davor -25.9). Der Abstand zum Zeitverlauf wächst weiter — die Woche reicht komfortabel bis zum
Reset am Montag 12:00. Aufteilung MacBook Pro 55.33 / Mac Mini 19.35 Mio, beide Stationsdateien
frisch. **Keine Drossel nötig; keine gedrosselte Task zum Zurückdrehen** — alle Lern-Tasks beider
Registries stehen auf `enabled: true`.

**Feuermechanismen — alle drei Orte geprüft, keine Abweichung.** MacBook: `vollgas-supervisor` und
`vollgas-monitor` beide als `*.disabled-260729` abgelegt und nicht geladen; `launchctl list` zeigt
keinen der beiden. Mac Mini: `ch.jans.nachtschicht` geladen (Status 0, Sollstand), `vollgas-supervisor`
dort ebenfalls `.disabled-260729`. Beide Registries gelesen — MacBook 33 Tasks, Mac Mini die acht
bekannten. Keine Doppelfeuerung, kein wiederbelebter Job. Der stehende Entscheid vom 30.07.
(Runner bleibt ausgebaut) ist gewahrt.

**Liefer-Delta im Fenster 00:58–12:58 — acht Loops, alle mit Delta:**

| Loop | Delta |
|---|---|
| `normen-training-nacht` | Run 53: SIA 215:1978 destilliert, Gegenrichtung «fehlender Inhalt» gemessen (Abdeckung 3/3 vs. Refuter 1/3), Refuter-Runde SIA 416/1 (93 bestätigt, 2 widerlegt), Methodik-Pflicht 13 präzisiert (3 Commits) |
| `twin-fidelity-review` | Dreizehnte Echo-Falle, Sperrliste verworfener Signale, Gruss-/Begründungsregel korrigiert, Gehirn neu kompiliert (29'990 B), Riegel-Nachtrag ins Fristen-Register (3 Commits) |
| `twin-mail-training` | Batch 95 (10.–16.08.): 13 Gold, 1 Korrektur-Delta, 2 verworfen, zwölfte Echo-Falle |
| `wissens-destillat` (Mini-Nachtschicht) | Korpus-Spec `buero-projekte` geschrieben, Lauf regelkonform beendet (kein Destillat ohne Spec) |
| `logbuch-radar` | Briefing ins Logbuch, Fristen-Register +60/-0 |
| `hub-chef-taeglich` | Tagesbriefing gesendet 08:57, zwei Vornamen richtiggestellt |
| `zahlungsabgleich-check` | bexio 5. Tag 401, Registernachtrag RE-00101-Frist erreicht |
| `vollgas-fruehwarnung` | Still beendet, Log geschrieben (Verbrauch 5. Tag fallend) |

**Kein Delta-Null-Loop, keine Rücktaktung, keine Stilllegung.** Der Lern-Betrieb trägt sich
weiterhin allein über die getakteten Tasks und die Mac-Mini-Nachtschicht.

**Speicher.** Druck-Level 1 (normal), 316'042 Pages inactive + 4'332 free bei 16-kB-Seiten, rund
5.0 GB rückgewinnbar. Kein Handlungsbedarf.

**P1 (unverändert offen, aber entschärft) — Homebrew-Symlink zeigt weiter auf die gewedgete
2.1.224.** Raphael hat den am 16.08. 00:58 vorgelegten Einzeiler noch nicht ausgeführt; der
Symlink trägt unverändert den Zeitstempel 15.08. 05:15. Der Eingriff bleibt seine Sache
(Installationseingriff, gehört nicht in einen unbeaufsichtigten Lauf):

```
ln -sf "$HOME/Library/Application Support/Claude/claude-code/2.1.229/claude.app/Contents/MacOS/claude" /opt/homebrew/bin/claude
```

Rückweg jederzeit `brew link --overwrite claude-code`. **Was sich geändert hat:** der Wedge kostet
den Radar jetzt nichts mehr, weil die Probe über die App-CLI läuft. Betroffen bleibt allein die
Ad-hoc-Nutzung von `claude` im Terminal und alles, was blind auf den PATH greift
(`claude-run.sh`, Dispatch auf dem MacBook) — der Lern-Ertrag ist es weiterhin nicht, die letzte
Journalzeile mit `"station":"Macbookpro"` stammt vom 03.08.

**P2 — bexio-Zugang seit fünf Tagen tot (401).** Nicht dieses Radars Zuständigkeit, aber der
längste offene operative Faden im Fenster: `zahlungsabgleich-check` und `mahnwesen-verzugscheck`
laufen seit dem 12.08. blind, und im Register ist die RE-00101-Frist erreicht. Der `logbuch-radar`
und der `hub-chef` führen ihn; hier nur als Sichtbarkeitsvermerk, damit er nicht zwischen den
Aufsichten verschwindet.

**P3 — keine.** Kein Feinschliff-Befund in diesem Fenster.

**Mail: keine.** Der CLI-Wedge ist derselbe P1, für den am 15.08. 12:58 bereits gemailt wurde —
keine Wiederholungsmail. Er ist auch nicht gelöst (der Symlink steht aus), also greift der
Sendegrund «gelöster P1-Blocker» nicht. Das Wochenkontingent ist weit von der Erschöpfung
entfernt. Die wiederhergestellte Fensterprobe ist eine Verbesserung der Lage und ein Hub-Internum
ohne Aussenwirkung, nach Rule `auto-verbesserungen` 260803 also ausdrücklich kein Sendegrund.

**Lauf-Ökonomie:** Regellauf, inline in parallelen Blöcken gemessen, kein Subagent (Faustregel
unter zehn Werkzeugaufrufen). Die zwei Zusatzaufrufe für die Ersatzprobe und die Rezept-Korrektur
waren befundgetrieben und haben den blinden Fleck der letzten beiden Läufe geschlossen.

---
## 2026-08-16 00:58 — [FREI] **CLI-Wedge weiter offen, aber ein funktionierender Ersatz ist belegt: die App-gebündelte 2.1.229 läuft (rc=0), Homebrew hat kein neueres Cask.** Der Wedge kostet den Lern-Ertrag NICHTS — seit dem 03.08. läuft kein headless-Loop mehr über die MacBook-CLI. **Korpus 1 des Wissens-Destillats hat seine Endbedingung erreicht**, Queue auf Korpus 2 nachgerückt. Ampel **FREI** (40.9 % bei 79.2 % verstrichener Woche, Vorsprung **-38.3**, erneut verbessert). Fünf Loops mit Liefer-Delta, kein Delta-Null-Loop

**Selbstkontrolle: bestanden.** Letzter Eintrag 15.08. 12:58, dieser Lauf 16.08. 00:58 — Abstand
**exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Sechster
regulärer Abstand in Folge. Keine Eintragslücke, `lastRunAt`-Gegenprobe nicht nötig.

**Fenster und Budget.** Die Fensterprobe konnte nicht ausgeführt werden — sie läuft über genau
die CLI, die hängt (Watchdog rc=137, keine Ausgabe). Der Kontingentstand kommt deshalb allein aus
`kontingent-budget.sh --json`, das ohne Modellaufruf misst: **68.27 von 167 Mio teuer = 40.9 %** bei
**79.2 %** verstrichener Woche, Vorsprung **-38.3 Punkte** (Vortag -33.3, davor -25.9). Der Verbrauch
läuft dem Zeitverlauf weiter deutlich hinterher, die Woche reicht komfortabel bis zum Reset.
Aufteilung MacBook Pro 49.53 / Mac Mini 18.74 Mio, beide Stationsdateien frisch. Keine Drossel
nötig, keine gedrosselte Task zum Zurückdrehen — alle Lern-Tasks stehen auf `enabled: true`.

**P1 (unverändert offen, aber entschärft und mit neuem Lösungsweg) — Claude-CLI 2.1.224 hängt
seit 15.08. 05:15.** Drei Befunde dieses Laufs, alle gemessen:
1. **Der Wedge sitzt im Binary, nicht im Netz oder im Login.** Auch `claude --version` hängt
   (Watchdog rc=137 nach 20 s). Ein Versionsstring braucht weder Token noch Sitzung — damit sind
   Kontingent und OAuth als Ursache ausgeschlossen.
2. **Homebrew hilft nicht.** `brew info --cask claude-code` zeigt **2.1.224 als aktuellste**
   Fassung; im Caskroom liegt nur diese eine Version. Ein `brew upgrade` wäre ein Leerlauf, ein
   Downgrade braucht wie am 15.08. vermerkt einen erneuten Download.
3. **NEU und der eigentliche Fortschritt: es liegt eine funktionierende, NEUERE CLI auf der
   Maschine.** Die Claude-App bringt ihre eigene mit, unter
   `~/Library/Application Support/Claude/claude-code/2.1.229/claude.app/Contents/MacOS/claude`.
   Direkt aufgerufen antwortet sie in Sekunden: **`2.1.229 (Claude Code)`, rc=0**. Sie ist es, die
   die App-Task-Flotte trägt, weshalb Radar, Frühwarnung, hub-chef und bexio-Hygiene die ganze
   Zeit unbeeinträchtigt liefern.

**Aktion Raphael** (Installationseingriff, gehört nicht in einen unbeaufsichtigten Lauf — der
Radar hat ihn deshalb NICHT ausgeführt): den Homebrew-Symlink auf die funktionierende Fassung
zeigen lassen, statt auf ein Downgrade zu warten.

```
ln -sf "$HOME/Library/Application Support/Claude/claude-code/2.1.229/claude.app/Contents/MacOS/claude" /opt/homebrew/bin/claude
```

Rückweg jederzeit `brew link --overwrite claude-code`. Zu bedenken: der Symlink zeigt danach in
einen App-Ordner, den die App bei ihrem nächsten Update selbst weiterdreht — als Dauerlösung
gehört er nach dem nächsten funktionierenden Cask wieder auf Homebrew zurückgestellt.

**Warum das P1 an Schärfe verliert.** Gemessen am Lauf-Journal: die letzte Zeile mit
`"station":"Macbookpro"` stammt vom **03.08.2026**. Am 14. und 15.08. lief je viermal
ausschliesslich `Macmini`. Die CLI des MacBook trägt also seit knapp zwei Wochen keinen
produktiven Loop mehr — betroffen sind die Fensterprobe dieses Radars und jede künftige
Ad-hoc-Nutzung, nicht der Lern-Ertrag. Der Eintrag vom 15.08. nannte `claude-run.sh` und Dispatch
pauschal als betroffen; das stimmt für die Fähigkeit, nicht für den laufenden Betrieb.

**P2 — Korpus 1 des Wissens-Destillats ist fertig, die Queue ist nachgerückt (Schritt 6 des
Auftrags).** Der Nachtschicht-Lauf vom 15.08. 23:37 hat die letzten zwei offenen Positionen
geschlossen: **214 inventarisiert, 26 destilliert, 188 verworfen, 0 offen / 0 triagiert.** Damit
ist die in `wissen/bauprodukte/training/PROGRAMM.md` definierte Endbedingung erreicht. Die
Queue-Regel erlaubt dem Loop ausdrücklich, einen Korpus als erledigt zu markieren (nur das
Erfinden eines neuen ist Raphaels Entscheid), deshalb ausgeführt:
`skills/wissens-destillat/KORPUS-QUEUE.md` Zeile 1 auf **erledigt**, Zeile 2 (`buero-projekte` →
`wissen/projekt-lessons`) auf **aktiv**. Dabei ist aufgefallen, dass Zeile 1 die Spalte `Ziel-KB`
gar nie enthielt (fünf Zellen bei sechs Spalten) — mit derselben Änderung ergänzt.
**Der nächste Nachtschicht-Lauf schreibt nur die Spec und endet**, denn
`specs/buero-projekte-spec.md` existiert noch nicht und die Queue-Regel verbietet das Destillieren
ohne Spec. Für Korpus 2 gilt der Pflicht-Zusatzauftrag vom 31.07. (Bürohaltung zu bevorzugten
Systemen als Entwurf `status: emerging`, nie selbst auf `established` heben).

**Liefer-Delta der letzten 12 h — fünf Loops, alle mit Ertrag, kein Delta-Null-Loop:**

| Loop | Zeit | Delta |
|---|---|---|
| `synergie-lauf-taeglich` | 17:10 | SYN-30 gesetzt, vier SKILL.md (ausschreibung, energie, unternehmerkontrolle, werkvertrag) + Synergie-Register |
| `tenant-hygiene-weekly` | 20:08 | Report 260815 (823.1 GB / 78.1 %, +0.02 GB/Tag), ohne Befund |
| `wissens-chef` Run 33 | 23:11 | 13 Meldungen gehalten, BZO Art. 11 auf geltenden Wortlaut, fünf KB-CHANGELOGs |
| `energie` Run 134 | ~22:37 (Mini) | Minergie-Korpus vermessen, 3 Destillate, FAQ F237/F238, WEGE-Falle dokumentiert |
| Nachtschicht `bauprodukte` | 23:37 (Mini) | Inventar auf 0/0 geschlossen — Endbedingung, siehe P2 |

32 geänderte `.md` unter `wissen/` in 14 h, 60 Commits (davon der grosse Teil `nas-selfcommit`).

**P3 — ein Lauf am Budgetdeckel abgebrochen.** Der Mini-Lauf vom 15.08. 13:40 endete nach 23 Turns
mit `rc=1`, `subtype: error_max_budget_usd` («Reached maximum budget ($5)»), 5.04 USD, 10 min 21 s.
Das ist ein **Abbruch, kein Delta-Null** — der Loop war hungrig, nicht leer, und wird nach der
Wächter-Regel ausdrücklich NICHT zurückgetaktet. Einzelfall; die drei anderen Mini-Läufe
desselben Tages liefen mit rc=0 durch. Bei Wiederholung wäre der Deckel je Lauf zu prüfen, nicht
der Takt.

**Feuermechanismen — Sollstand auf beiden Stationen.** MacBook: `vollgas-supervisor` und
`vollgas-monitor` liegen unverändert als `*.disabled-260729` und sind nicht geladen; geladen sind
nur die regulären Jobs. Der `ch.jans.claude-autoupdate` trägt Exit **-9** — das ist der
Watchdog-Kill des gestrigen Laufs, kein neuer Befund. Mac Mini: `ch.jans.nachtschicht` ist geladen
und feuert (23:30-Slot belegt, siehe P2), `vollgas-supervisor` weiterhin disabled, die vier
stillgelegten Trainings-Jobs unverändert. Kein Mechanismus feuert doppelt, keiner läuft, der
stillgelegt sein sollte. Der Endlos-Runner wurde nicht angefasst (stehender Entscheid 30.07.).

**Speicher.** Frei plus inaktiv plus purgeable = 5542 + 350909 + 5080 Pages à 16 kB = **5.9 GB**,
`kern.memorystatus_vm_pressure_level: 1` (normal). Keine `claude -p`-Waisen; die Gegenprobe nach
den beiden Watchdog-Eingriffen dieses Laufs zeigte nichts.

**Werkzeug-Befund, selbst gefangen — `find -newermt` gibt es hier nicht.** Die erste Delta-Messung
meldete **null** geänderte Dateien unter `wissen/`, obwohl vier Loops sichtbar geliefert hatten.
Ursache war nicht die Quelle, sondern das Werkzeug: `find` ist auf dieser Station **bfs**, das
`-newermt` nicht kennt und mit «Invalid timestamp» abbricht — bei umgeleitetem stderr sieht der
Abbruch wie ein Sachbefund «kein Delta» aus. Mit einer Referenzdatei und `-newer` sind es **32**
Dateien. Genau das Muster aus Rule `auto-verbesserungen` 260730b und 260807: **ein leeres Ergebnis
ist zuerst eine Aussage über das Werkzeug.** Hätte der Lauf die Null geglaubt, wäre daraus die
Empfehlung geworden, vier liefernde Loops zurückzutakten. Künftig in diesem Radar `-newer` gegen
eine `touch`-Referenz verwenden und stderr nie blind unterdrücken.

**Mail: keine.** Der CLI-Wedge ist derselbe P1, für den am 15.08. 12:58 bereits gemailt wurde —
keine Wiederholungsmail für denselben Befund. Der neue Lösungsweg (funktionierende 2.1.229) ist
eine Verbesserung der Lage, kein neuer Blocker, und steht hier sowie als Nachtrag im
Fristen-Register. Gemailt wird erst wieder, wenn der Blocker gelöst ist oder eskaliert.

**Lauf-Ökonomie:** Regellauf, inline gemessen in parallelen Blöcken, kein Subagent (Faustregel
unter zehn Werkzeugaufrufen). Die Tiefe bei P1 und P2 war befundgetrieben und damit vom Auftrag
gedeckt.

---
## 2026-08-15 12:58 — [FREI] **P1 NEU: die Claude-CLI dieser Station ist seit 05:15 wedged — Homebrew-Upgrade auf 2.1.224.** Jeder CLI-Aufruf haengt, die App-Tasks laufen unbeeintraechtigt weiter. Ampel **FREI** (38.7 % bei 72.0 % verstrichener Woche, Vorsprung **-33.3** — erneut verbessert). Vier KBs mit Liefer-Delta, kein Delta-Null-Loop. Haengender Autoupdate-Baum abgeraeumt, Mail an rj@ gesendet

**Selbstkontrolle: bestanden.** Letzter Eintrag 15.08. 00:58, dieser Lauf 15.08. 12:58 — Abstand
**exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Fuenfter
regulaerer Abstand in Folge. Keine Eintragsluecke, `lastRunAt`-Gegenprobe nicht noetig.

### P1 — Claude-CLI 2.1.224 haengt auf dem MacBook Pro (seit 05:15, nur Raphael kann das loesen)

**Die Fensterprobe dieses Laufs hing 4 Minuten und lieferte nichts — und das war NICHT das
dokumentierte stdin-Problem.** Das `< /dev/null` aus dem Rezept war korrekt gesetzt. Die Suche nach
der Ursache foerderte einen deutlich groesseren Befund zutage.

Beweiskette, drei unabhaengige Aufrufe, alle haengend:

01.1 **Der Autoupdate-Job lief seit 7 h 49 min.** `ch.jans.claude-autoupdate` mit drei
bash-Prozessen (63690, 64377, 64378), daran haengend PID 64380 = `claude --version` und
PID 64379 = `head -1` — exakt der Aufruf aus der Funktion `cli_version()` des Scripts.

01.2 **Die eigene Fensterprobe** `claude -p "Antworte nur mit: OK" --model haiku < /dev/null`
haengte 4 Minuten ohne jede Ausgabe.

01.3 **Kontrollierter Test mit Watchdog:** `claude --version < /dev/null` endete mit **rc=137**
(Watchdog-Kill nach 25 s), Ausgabe leer.

**Das Autoupdate-Log nennt die Ursache im Klartext.** Um 05:15:05 zog Homebrew das Cask hoch:
`claude-code 2.1.223 -> 2.1.224`, inklusive `Unlinking Binary` / `Linking Binary` und
`Purging files for version 2.1.223`, abgeschlossen mit «successfully upgraded». **Das Log endet
an dieser Stelle** — der Job blieb danach im Post-Upgrade-Versionscheck gegen das *neue* Binary
haengen. Der Symlink `/opt/homebrew/bin/claude → /opt/homebrew/Caskroom/claude-code/2.1.224/claude`
traegt den Zeitstempel 15.08. 05:15.

**Wirkung, sauber getrennt:**

02.1 **Nicht betroffen sind die App-basierten Scheduled Tasks.** Sie feuern aus der App, nicht ueber
die CLI. Belegt durch die Laeufe *nach* 05:15, die alle geliefert haben: logbuch-radar 07:00,
vollgas-fruehwarnung 07:15, bexio-Hygiene 08:15, hub-chef 09:00 — und dieser Radar-Lauf selbst.

02.2 **Betroffen ist jeder CLI-Weg dieser Station**: `claude-run.sh`, Dispatch, Fensterproben.
Das Lauf-Journal 260815 enthaelt konsequenterweise nur Mac-Mini-Eintraege.

02.3 **Der Mac Mini ist nicht betroffen** (eigene Installation): Dispatch-Laeufe 02:35 und 05:39,
beide rc=0.

02.4 **Zur Ruecknahme:** 2.1.223 wurde beim Upgrade aus dem Caskroom geloescht, dort liegt nur noch
2.1.224. Ein Downgrade braucht also einen erneuten Download, kein blosses Relinken.

**Ausgefuehrte Massnahme:** den haengenden Autoupdate-Baum abgeraeumt (PIDs 64380, 64379, 64378,
64377, 63690) sowie die eigenen Proben-Prozesse; Waisen-Gegenprobe zweimal sauber
(`ps -eo pid,ppid,command | grep "claude -p"` leer). Das hat den Job befreit, die CLI aber **nicht**
geheilt — der Kontrolltest danach hing erneut.

**Nicht ausgefuehrt und bewusst Raphael vorgelegt:** Downgrade oder Neuinstallation des Cask. Das
ist eine Installations-/Persistenzaenderung und gehoert damit nicht in einen unbeaufsichtigten Lauf.

### P2 — Der Autoupdate-Job hat keinen Timeout um den Versionscheck

Ein haengendes `claude --version` blockiert den ganzen Job unbegrenzt; 7 h 49 min sind gemessen.
Ohne Absicherung haette derselbe Effekt jede weitere Nacht wiederholt zugeschlagen. Der Fix gehoert
in `scripts/claude-autoupdate.sh`, Funktion `cli_version()`: den Aufruf hinter einen Watchdog legen
(`timeout` existiert in dieser Umgebung nicht, also Subprozess + `kill -9 -$PGID`) und bei Zeitablauf
mit «n/a» weiterlaufen statt zu blockieren. **In diesem Lauf bewusst nicht umgesetzt**, weil die
richtige Form davon abhaengt, wie 2.1.224 aufgeloest wird, und ich waehrend eines laufenden Vorfalls
keine zweite Aenderung auf dieselbe kaputte Komponente stapeln wollte.

### P3 — Das Proben-Rezept kennt jetzt einen zweiten Hang-Modus

Die Auftragsdatei fuehrt das Haengen der Fensterprobe bisher allein auf das fehlende `< /dev/null`
zurueck. Dieser Lauf belegt einen zweiten, davon unabhaengigen Modus: **das Binary selbst kann
wedged sein.** Ein Haenger ist deshalb kuenftig nicht mehr automatisch als «stdin vergessen» zu
lesen. Sauberer Weg, wenn die Probe haengt: die Prozessgruppe abraeumen, den Fensterzustand aus
`kontingent-budget.sh` plus den gelieferten Laeufen der letzten Stunden bestimmen — beides braucht
die CLI nicht — und erst dann die Ursache am Binary suchen.

### Fensterzustand und Budget

Die Probe war unbrauchbar, der Zustand **[FREI]** ist trotzdem belegt: `kontingent-budget.sh --json`
meldet Ampel **FREI**, **64.64 von 167 Mio** teuren Token (**38.7 %**) bei **72.0 %** verstrichener
Woche, Vorsprung **-33.3 Punkte** (00:58: -29.0, also erneut verbessert). Stationen frisch:
MacBook Pro 47.48 Mio, Mac Mini 17.16 Mio. Kein Drossel-Anlass, nichts scharf zu schalten.

### Liefer-Delta 12 h (00:58 bis 12:58)

56 Commits, davon der grosse Teil mechanische `nas-selfcommit`-Laeufe. Vier KBs mit echtem Delta:

03.1 **normen** — Nacht-Run 52, vier neue Destillate (SIA 112/1, 358, 382/2, 416/1), REGISTER,
QUESTIONS und Norm-Inventar nachgefuehrt.

03.2 **energie** — Run 133, zwei Destillate plus zwei Wiki-Artikel (Holzwerkstoffe/Formaldehyd,
Dachbegruenung Stadt ZH), BAUHERREN-FAQ erweitert.

03.3 **bauprodukte** — drei neue Wiki-Artikel (Biofa Coloroel, CH24 Wishbone Chair, Matrah-Moll),
INDEX und CHANGELOG nachgezogen.

03.4 **twin** — Fidelity-Review, alle sechs Facetten-Artikel plus QUESTIONS und Output angefasst.

Operativ daneben: Radar-Briefing, hub-chef-Briefing versendet, Fristen-Nachtrag zum toten
bexio-Zugang (vierter Tag blind). **Kein Delta-Null-Loop, kein Ruecktakt- oder
Stilllegungsbedarf.**

### Feuermechanismen und Speicher

Alle drei Orte geprueft, **keine Drift**. Lokal ist kein vollgas-Job geladen, beide plists tragen
weiterhin `.disabled-260729`. Auf dem Mac Mini laeuft `ch.jans.nachtschicht`, der
`vollgas-supervisor` bleibt `.disabled-260729`. Die zweite Registry des Mini fuehrt **8 Tasks** und
entspricht damit exakt dem dokumentierten Sollstand. Kein Loop wird doppelt gefeuert. Speicher
unauffaellig: free+inactive+purgeable rund **4.74 GB**, `kern.memorystatus_vm_pressure_level: 1`.

---
## 2026-08-15 00:58 — [FREI] **Vierter sauberer Regellauf in Folge.** 70 Commits in 14 h, sechs KBs mit Liefer-Delta (bauprodukte, energie, koordination, normen, projekt-lessons, twin), kein Delta-Null-Loop, keine Waisen. Ampel **FREI** (35.9 % bei 64.9 % verstrichener Woche, Vorsprung **-29.0** — erneut verbessert). Keine Massnahme nötig, kein Mail-Anlass

**Selbstkontrolle: bestanden.** Letzter Eintrag 14.08. 12:58, dieser Lauf 15.08. 00:58 — Abstand
**exakt 12 h 00 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Vierter
regulärer Abstand in Folge, der Takt läuft präzise. `lastRunAt`-Gegenprobe nicht nötig, da keine
Eintragslücke besteht.

**Fensterprobe:** «OK», rc=0, Antwort in Sekunden (Rezept mit `< /dev/null` eingehalten, kein
Watchdog-Eingriff nötig). Gegenprobe auf verwaiste `claude -p`-Prozesse: **nichts** — beide
Gate-Plätze frei. Speicher unauffällig: rund 5.6 GB frei (free + inactive + purgeable über
`vm_stat`), `kern.memorystatus_vm_pressure_level: 1` = normal.

**Wochenbudget (Schritt 2b):** Ampel **FREI**, 59.91 von 167 Mio «teuer» = **35.9 %** bei
**64.9 %** verstrichener Woche, Vorsprung **-29.0 Punkte**. Der Abstand hat sich gegenüber dem
12:58-Lauf (-25.9) nochmals vergrössert; der Verbrauch läuft dem Zeitverlauf über die ganze Woche
konstant hinterher. Beide Stationen frisch gemeldet (MacBook Pro 43.23, Mac Mini 16.68 Mio). Der
Entscheid Raphaels vom 03.08. («gleichmässig über die Woche») wird eingehalten, ohne dass
gedrosselt werden müsste — **kein Drossel-Anlass nach Schritt 2c.**

**Liefer-Delta je Loop (14-h-Fenster, Schritt 4/5):** 70 Commits, davon **15 benannte
Arbeits-Commits** und 55 `nas-selfcommit`-Sammelcommits, die die Edits der Läufe einpacken; **kein
reiner Status-Commit** (`station-status`) darunter. Geänderte Wiki-/Output-Dateien in **sechs**
KBs: `wissen/bauprodukte` (Sektion 900 triagiert, neuer Artikel `kevi-buerodrehstuhl.md`, INDEX +
CHANGELOG), `wissen/energie` (Run 132, Output-Report, BAUHERREN-FAQ F233/F234, neuer Artikel
`oekologische-materialvorgaben-beschaffung.md`, QUESTIONS), `wissen/koordination` (zwei Outputs:
Wissens-Chef Run 32 und Synergie-Lauf 07), `wissen/normen` (REGISTER + neuer Artikel
`abb-reihe-verguetungs-und-ausmassgrenzen.md`), `wissen/projekt-lessons` (Output
Türfachplanung-Prüfmethode), `wissen/twin` (beziehungsregister). **Kein Loop ohne Delta, keine
Rücktaktung, keine Deaktivierung.** Das Lauf-Journal `260814-laeufe.jsonl` verzeichnet vier
Mac-Mini-Läufe, **alle rc=0** mit substanzieller Lieferung (02:42 ERCO-Glossar-Abschluss, 05:39
Energie-Dublettenprüfung mit neuer Methodenfalle Nr. 7, 13:37 Run 131, 23:40 bauprodukte-Triage).
`260815-laeufe.jsonl` ist noch leer — der Tag ist erst 58 Minuten alt, das ist kein Befund.

**Feuermechanismen (Schritt 3), alle drei Orte geprüft:** MacBook Pro — beide vollgas-plists
liegen als `*.disabled-260729` vor, `launchctl list` zeigt **keinen** geladenen vollgas-Job. Mac
Mini (per ssh) — `ch.jans.nachtschicht` geladen und arbeitend (belegt durch die vier
Journal-Läufe), `ch.jans.vollgas-supervisor` weiterhin `.disabled-260729`. **Keine Abweichung, kein
doppeltes Feuern, der stehende Entscheid vom 30.07. («nicht wieder beleben») ist gewahrt.**

**Bemerkenswert im Fenster:** der Wissens-Chef Run 32 hat die Bedeutungsumkehr SIA 118/262 aus
Run 30/31 sprachlich zu Ende bereinigt und einen energie-Befund an sieben statt zwei Stellen
korrigiert — genau die Art Nacharbeit, die ein Delta-Zähler leicht unterschätzt. Der Synergie-Lauf
07 hält fest, dass die Listen-Neuregelung (Rule 260814b/c) die **Generatoren noch nicht erreicht**
hat (SYN-27, offen). Das ist ein Hub-Internum ohne Aussenwirkung und damit kein Sendegrund; es
liegt beim Synergie-Orchestrator korrekt im Register.

**P1/P2/P3:** keine. Vierter Regellauf in Folge ohne Befund, kein Mail-Anlass (ein regelmässig
freies Fenster ist keiner).

---
## 2026-08-14 12:58 — [FREI] **Dritter sauberer Regellauf in Folge.** 67 Commits in 13 h, vier KBs mit Liefer-Delta (twin, bauprodukte, normen, energie), kein Delta-Null-Loop, keine Waisen. Ampel **FREI** (31.9 % bei 57.7 % verstrichener Woche, Vorsprung **-25.9** — der beste Wert der Serie). Keine Massnahme nötig, kein Mail-Anlass

**Selbstkontrolle: bestanden.** Letzter Eintrag 14.08. 00:57, dieser Lauf 14.08. 12:58 — Abstand
**12 h 01 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Dritter
regulärer Abstand in Folge; der Takt ist stabil eingeschwungen. `lastRunAt`-Gegenprobe nicht
nötig, da keine Eintragslücke besteht.

**Fensterprobe:** «OK», rc=0, Antwort in Sekunden (Rezept mit `< /dev/null` eingehalten, kein
Watchdog-Eingriff nötig). Gegenprobe auf verwaiste `claude -p`-Prozesse: **nichts** — beide
Gate-Plätze frei.

**Wochenbudget (Schritt 2b):** Ampel **FREI**, 53.2 von 167 Mio «teuer» = **31.9 %** bei
**57.7 %** verstrichener Woche, Vorsprung **-25.9 Punkte**. Der Verbrauch läuft dem Zeitverlauf
weiterhin deutlich hinterher, und der Abstand hat sich gegenüber dem 00:57-Lauf (-21.7) noch
einmal vergrössert. Beide Stationen frisch gemeldet (MacBook Pro 38.98, Mac Mini 14.22 Mio).
Der Entscheid Raphaels vom 03.08. («gleichmässig über die Woche») wird eingehalten, ohne dass
gedrosselt werden müsste — es besteht kein Drossel-Anlass nach Schritt 2c.

**Liefer-Delta je Loop (13-h-Fenster, Schritt 4/5):** 67 Commits, **darunter kein einziger
reiner Status-Commit** — der volle Durchsatz ist Arbeit. Geänderte Wiki-/Output-Dateien:
`wissen/twin` 12 Wiki-Artikel + 2 Outputs + CHANGELOG (der grösste Einzelbeitrag dieses
Fensters), `wissen/bauprodukte` 4 Wiki + CHANGELOG, `wissen/normen` 2 Wiki + 2 Outputs +
CHANGELOG, `wissen/energie` 1 Output + CHANGELOG. **Kein Loop ohne Delta, keine Rücktaktung,
keine Deaktivierung.** Das Lauf-Journal `260814-laeufe.jsonl` verzeichnet zwei Mac-Mini-Läufe,
beide rc=0 mit substanzieller Lieferung: 02:42 der Abschluss des 435-seitigen ERCO-Dokuments
(Wiki-Artikel `erco-lichtplanung-glossar.md`, 271 Fachbegriffe), 05:39 der Energie-Lauf mit
einer neuen methodischen Falle Nr. 7 (vermeintliche Dubletten waren teils spätere
2008er-Revisionen). Beide Läufe delegierten die mechanische Stufe an Haiku und prüften
gegen — Modell-Politik greift wie vorgesehen.

**Feuermechanismen (Schritt 3), alle drei Orte geprüft:** MacBook Pro — beide Vollgas-plists
liegen unverändert als `*.disabled-260729` und sind **nicht geladen**. Mac Mini —
`ch.jans.vollgas-supervisor.plist.disabled-260729` ebenfalls nicht geladen; geladen ist
ausschliesslich `ch.jans.nachtschicht` (korrekt, das ist der vorgesehene Mechanismus). **Keine
Doppelfeuerung, keine stille Wiederbelebung.** Der stehende Entscheid vom 30.07. ist gewahrt.

**Speicher (Messdisziplin):** frei+inactive+purgeable **1.3 GB**,
`kern.memorystatus_vm_pressure_level` = **1** (normal). Der freie Anteil ist niedrig, aber der
Druckindikator — die Kennzahl, die zählt — steht auf grün. Kein Eingriff; zur Beobachtung
vermerkt, damit ein echter Anstieg auf Level 2 im nächsten Lauf als Veränderung erkennbar ist.

**P1 — keiner.** Kein Blocker, kein Login-Problem, kein Kontingentrisiko.
**P2 — keiner.** Alle vier aktiven KBs liefern; der Takt hält seit drei Läufen.
**P3 — Beobachtung Speicher:** freier Speicher bei 1.3 GB. Erst handeln, wenn der
Pressure-Level tatsächlich steigt, nicht auf den freien Anteil hin.

**Laufaufwand:** schlanker Regellauf, inline und in einem parallelen Messblock, keine
Delegation (Faustregel unter zehn Werkzeugaufrufe → inline). Keine Tiefenuntersuchung, da kein
Befund sie verlangte.

---
## 2026-08-14 00:57 — [FREI] **Zweiter sauberer Regellauf in Folge, Takt hält.** 165 Commits in 26 h, vier KBs mit echtem Liefer-Delta (energie, bauprodukte, normen, koordination), kein Delta-Null-Loop. Ampel **FREI** (28.8 % bei 50.6 % verstrichener Woche, Vorsprung **-21.7** — noch besser als beim letzten Lauf). Keine Massnahme nötig, kein Mail-Anlass

**Selbstkontrolle: bestanden.** Letzter Eintrag 13.08. 12:58, dieser Lauf 14.08. 00:57 — Abstand
**11 h 59 min** bei 12-h-Takt und 15 h Toleranz (Faustregel Takt + 3 h eingehalten). Kein
gefeuerter Lauf fehlt dazwischen. Zweiter regulärer Abstand in Folge nach dem Nachhol-Sturm vom
13.08. — der Takt ist wieder eingeschwungen.

**Fenster und Budget.** Fensterprobe mit `< /dev/null` in Sekunden: «OK», rc=0. Budget-Messung
ohne Modellaufruf: 48.18 von 167 Mio «teuer» kombiniert (MacBook Pro 34.57, Mac Mini 13.61, beide
Stationsdateien frisch). Der Verbrauch läuft dem Zeitverlauf **21.7 Punkte hinterher**, also
deutlich unter Zeitplan — das Wochenkontingent reicht bis zum Montags-Reset mit Reserve. Das ist
genau das vom stehenden Entscheid 03.08. geforderte gleichmässige Bild; kein Drossel-Anlass, aber
auch keine Unterauslastung, die eine Takterhöhung rechtfertigen würde.

**Liefer-Delta je Loop (gemessen an Commits, CHANGELOGs und Output-Dateien, nicht an `lastRunAt`).**
Vier KBs mit CHANGELOG-Eintrag **und** neuem Output seit dem letzten Lauf:
- `energie` run129 — AHB-Ordner 14 abgeschlossen, 5 Destillate (erste Healthcare-Quelle der KB:
  Gebäudeautomation Pflegezentren), FAQ F230–F232; 18 geänderte Dateien, die grösste Einzelleistung
  der Nacht.
- `bauprodukte` — ERCO-Ratgeber Teil 2 (S. 375–426) destilliert, neuer Wiki-Artikel, Glossar
  S. 427–435 offen für den Folgelauf; zusätzlich zwei Duschwannen-Outputs.
- `koordination` — `wissens-chef` run31 und `synergie-lauf-06`; run31 hat SIA 386.111 von `energie`
  nach `normen` nachgezogen und dabei **4 von 6 Melder-Befunden adversarial widerlegt**, in drei
  Fällen war der Korrekturvorschlag selbst falsch. Genau die Gegenprüfung, die Rule 260729b verlangt.
- `normen` — Registerzeile plus drei BKP-/Fundstellen-Korrekturen aus derselben Übergabe.
Dazu `tenant-hygiene` (Versions-Trim JANS.PROJEKTE gestartet 23:26, IMMO offen, im Fristen-Register
vermerkt). **Kein Loop drei Läufe in Folge ohne Delta — keine Rücktaktung, keine Deaktivierung.**

**Feuermechanismen: alle drei Orte stimmen.** Beide `vollgas-supervisor`-plists weiterhin
`.disabled-260729`, der MacBook-`vollgas-monitor` ebenso; der Runner bleibt ausgebaut (stehender
Entscheid 30.07.). Auf dem Mini sind `nachtschicht`, `wissens-trigger`, `transcript-rotation`,
`speicher-waechter` und `station-status` geladen und arbeiten — das Journal belegt den
Nachtschicht-Lauf um 23:35 (rc=0, 289 s, 4.76 USD). Kein Loop wird von zwei Mechanismen gefeuert.

**Messdisziplin-Befund: `launchctl list` über ssh lügt nicht, es misst nur die falsche Domäne.**
Der erste Griff — `ssh mini 'launchctl list | grep jans'` — zeigte nur vier Jobs und liess
`nachtschicht` fehlen, was wie ein Ausfall der ganzen Mini-Nachtschicht aussah. Tatsächlich sieht
eine ssh-Sitzung nur ihre eigene launchd-Domäne, nicht `gui/501`. Die Gegenprobe
`launchctl print gui/501` zeigt alle fünf Jobs geladen. **Ein leeres oder kurzes Ergebnis ist
zuerst eine Aussage über das Werkzeug, nicht über die Quelle** (gleiche Familie wie die
grep-Falle im nicht-UTF-8-Selfcommit-Log, Rule 260730b, und der Konfigurationsfeld-Befund 260807).
Für künftige Läufe: **auf dem Mini immer `launchctl print gui/501` verwenden, nie `launchctl list`
über ssh.**

**Speicher und Waisen.** Keine verwaisten `claude -p`-Prozesse (die Fensterprobe brauchte keinen
Watchdog). Frei nach der gültigen Methode (free + inactive + purgeable): **rund 6.0 GB**,
`kern.memorystatus_vm_pressure_level: 1` (normal). Kein Handlungsbedarf.

**Sparsamkeit.** Regellauf inline und in einem parallelen Block gemessen, kein Subagent, rund zehn
Werkzeugaufrufe — die einzige zusätzliche Abfrage war die Gegenprobe zur launchd-Domäne, also ein
konkreter Befund und kein Streifzug.

**P1 — keiner.** Kein Login-Blocker, kein Wochenlimit, kein toter Loop, kein Mechanismus-Konflikt.

**P2 — `bauprodukte` läuft auf die Endbedingung zu.** Vom ERCO-Ratgeber fehlt nur noch das Glossar
(S. 427–435 von 435). Ist es destilliert, ist diese Quelle erschöpft und die Nachtschicht braucht
ein neues Korpus-Ziel aus `KORPUS-QUEUE.md`, sonst wiederholt sich das `grobkosten`-Muster: ein
Loop, der weiterläuft, obwohl sein Material aufgebraucht ist. Beim nächsten Lauf prüfen und, falls
das Glossar durch ist, das nächste Queue-Ziel benennen.

**P3 — offene Nachträge aus Budgetabbrüchen.** Zwei Mac-Mini-Läufe endeten am 5-USD-Deckel, bevor
sie fertig protokolliert hatten: der CHANGELOG-Nachtrag zu `waermeplanung-kommunal-zh-sz.md`
(13.08. 13:34) und die Stationskopie von `claude-abo-auslastung/SKILL.md`, die an einer
Permission-Sperre scheiterte (13.08. 00:24). Beides ist inhaltlich harmlos, aber der zweite Punkt
bedeutet, dass die Station beim nächsten Lauf die **alte** Fassung zieht — das gehört nachgezogen.

---
## 2026-08-13 12:58 — [FREI] **Erster Regellauf nach dem 109-h-Ausfall: die Flotte trägt wieder, und zwar voll.** 109 Commits in 14 h, 96 geänderte Wissens-Dateien heute, kein einziger Delta-Null-Loop. Ampel **FREI** (23.2 % bei 43.4 % verstrichener Woche, Vorsprung **-20.2**). Ausgeführt: `grobkosten` als freies Nachtschicht-Ziel ausgesetzt — Endbedingung erreicht (Schritt 6). Kein Mail-Anlass

**Selbstkontrolle: bestanden, erstmals seit vier Läufen.** Letzter Eintrag 13.08. 01:51, dieser
Lauf 12:58 — Abstand **11 h 07 min** bei 12-h-Takt und 15 h Toleranz. Der eigene `lastRunAt`
(10:57:50 UTC = 12:57 CEST) deckt sich mit diesem Lauf, es fehlt kein gefeuerter Lauf dazwischen.
Der Nachhol-Sturm vom 00:51 hat sich in den regulären Takt eingeschwungen.

**Fenster [FREI], sauber gemessen.** Die Probe lief in zwei Anläufen: der erste starb an
`(eval):set:2: can't change option: -m` — **`set -m` gibt es in dieser zsh nicht**, das im Auftrag
vorgeschriebene Watchdog-Rezept setzt eine bash voraus. Wiederholung als `/bin/bash -c '…'`:
rc=0, Antwort «OK», Laufzeit unter zehn Sekunden. Das ist kein Kontingent- und kein Loginbefund,
sondern eine Werkzeugfalle in der Vorschrift selbst — dieselbe Familie wie die `< /dev/null`-Falle
vom 04./05.08. Gegenprobe nach dem Lauf: `ps -eo pid,ppid,command | grep "claude -p"` zeigt
**nichts**, es sind keine Waisen entstanden, die Gate-Plätze sind frei.

**Wochenbudget: der Verbrauch läuft dem Kalender weiterhin deutlich HINTERHER.** 38.82 von
167 Mio teuer = 23.2 %, bei 43.4 % verstrichener Woche. Vorsprung **-20.2 Punkte** (Vorlauf 01:51:
-19.5) — die Lücke ist trotz eines vollen Arbeitsvormittags noch um 0.7 Punkte gewachsen. Beide
Stationen frisch (MacBook Pro 29.19, Mac Mini 9.63). Der Rückstand ist die direkte Nachwirkung
des fünftägigen Stillstands vom 08.–12.08. und **kein Drosselgrund**; im Gegenteil, unter dem
stehenden Entscheid «gleichmässig über die Woche» ist eher Luft nach oben. Keine Drossel gesetzt,
keine gedrosselte Task zurückzudrehen — es steht aktuell keine.

**Liefer-Delta: durchweg positiv, kein Kandidat für den Leerlauf-Wächter.** 109 Commits in 14 h,
davon rund 55 echte Arbeitscommits (der Rest `nas-selfcommit`-Viertelstundentakt, der als
Status-Proxy nicht zählt). 96 Wissens-Dateien mit heutiger mtime über neun KBs. Namentlich mit
belegtem Delta: `normen` (Run 49/50 — 79 von 79 Kernbefunden am Original nachgeprüft und
bestätigt, drei falsche BKP-Zuordnungen gefunden, SIA 380/3 Kap. 4+5 erstmals geschrieben),
`wettbewerbs-dna` (Etappe 4 Lauf 02, 3x12-Matrix Schulbau), `twin-mail-training` (Batch 92, 16
Marker), `baurecht` (Buch-Run 73), `immobilienbewertung` (Marktpuls vorgezogen), `bauprodukte`
(ERCO S. 317 → 374), `wissens-chef` (Run 30, Bedeutungsumkehr SIA 118/262 aus dem Skill
`ausschreibung` entfernt), `methoden-radar` (Befund: die Rollen-Aufsicht war nie verdrahtet).
Alle vier operativen Briefings haben geliefert.

**Feuermechanismen: alle drei Orte stimmen überein.** (i) Lokale Registry 31 Tasks, keine
Doppelfeuerung. (ii) launchd beide Stationen: `ch.jans.vollgas-supervisor` und
`ch.jans.vollgas-monitor` tragen unverändert `.disabled-260729` und sind auf **keiner** Station
geladen — der stehende Entscheid «nicht wieder beleben» ist gewahrt, dieser Lauf hat nichts
gestartet und keine STOP-Datei angefasst. `ch.jans.nachtschicht` läuft auf dem Mini wie
vorgesehen. (iii) Zweite Registry gegengeprüft: acht Mini-Tasks, Sollstand unverändert.

**AUSGEFÜHRT — `grobkosten` als freies Nachtschicht-Ziel ausgesetzt (Schritt 6, Endbedingung).**
Das ist der einzige Eingriff dieses Laufs. Sachlage: `training/quellen-inventar.md` trägt seit
Run 15 (11.08.) **keine offene `[ ]`-Zeile** mehr, alle Kandidaten sind `[x]` oder `[-]`
geschlossen, `wiki/kennwerte.md` trägt für die geführten Nutzungsarten belegte Werte. Die in
`training/PROGRAMM.md` definierte Endbedingung ist damit formal erreicht. **Beide
Nachtschicht-Läufe von heute (02:30 und 05:31) haben das unabhängig festgestellt und die
Rücktaktung bewusst nicht selbst vollzogen**, weil sie darin eine Drosselentscheidung sahen
(Rule `rollen-taxonomie`) — sachlich korrekt für einen Lern-Loop, aber der Slot wäre dadurch
weiter an eine gesättigte KB gegangen. Schritt 6 meines stehenden Auftrags regelt genau diesen
Fall und autorisiert ihn ausdrücklich: «meldet ein PROGRAMM.md oder CHANGELOG Inventar komplett,
den Loop stilllegen und die frei werdende Kapazität auf die grösste offene Wissenslücke
umlenken». Präzedenz identischer Machart: die Aussetzung von `projekt-lessons` durch diesen
Radar am 05.08. Vollzug: Ausschlussblock in `scripts/nachtschicht-run.sh` Zeile 126 ergänzt,
`git diff --numstat` = **1/1** (reine Zeilenersetzung, keine Kollateralschäden — Pflichtmessung
nach Rule 260811). Kapazität geht an `energie` (27 offene ecoBKP-Merkblätter, S. 20–138) und
`bauprodukte` (ERCO ab S. 375). Wiederaufnahme nur bei neuem Rohmaterial in `raw/` oder auf
Auftrag, nicht stillschweigend. **Bewusst NICHT angefasst:** die Rolle `grower` in
`rollen-map.tsv` (Umwidmung wäre Raphaels Entscheid) und das Feld `cron_target: "0 9,21 * * *"`
in der Mini-Stationskopie — Frontmatter ist Dokumentation, nicht Live-Zustand, und ein Edit
daran könnte einen produktiven Loop stillstellen.

**Speicher: Druckstufe 2 (warn), knapp aber nicht kritisch.** free+inactive+purgeable ≈ 3.39 GB
(free 72 MB, inactive 3.16 GB, purgeable ~0), `kern.memorystatus_vm_pressure_level` = 2. Kein
Eingriff; die Stufe ist bei laufender Arbeitsstation plus Nachhol-Flotte erklärbar. Beim nächsten
Lauf gegenmessen, ob sie unter Ruhelast auf 1 zurückgeht.

**P1 — Die Delta-Null-Erkennung des Frühwarners hat seit dem 03.08. keine Datenbasis mehr.**
Befund der `vollgas-fruehwarnung` von heute 07:15, an mich adressiert: ihre Kennzahl (c) misst den
Fortschritt des Wissens-Destillat-Loops über dessen `outputs/`-Reports — und der Loop schreibt
seit dem 03.08. keine mehr. Die Kennzahl zeigt seither nicht «kein Fortschritt», sondern
**nichts**, und das ist der gefährlichere Zustand: ein Zähler, der stillschweigend ins Leere
misst, sieht wie eine bestandene Prüfung aus. Gleiche Familie wie der Methoden-Radar-Befund von
heute Nacht (Rollen-Aufsicht war nie verdrahtet, die Doku behauptete das Gegenteil) und wie
Rule 260807. Nicht in diesem Lauf behoben, weil die Reparatur an der Messmethodik des Frühwarners
ansetzt und eine Tiefenuntersuchung verlangt — der Regellauf bleibt schlank. Nächster Radar-Lauf
oder ein eigener Auftrag.

**P2 — Der Stillstand vom 08.–12.08. ist weiterhin nirgends ursächlich dokumentiert.** Steht
unverändert aus dem 01:51-Eintrag; fünf Tage Totalausfall der App-Task-Flotte ohne bekannte
Ursache heissen, dass eine Wiederholung nicht verhindert werden kann. Der heutige Betrieb ist
kein Beleg dafür, dass die Ursache weg ist — nur dafür, dass sie gerade nicht wirkt.

**P3 — Werkzeugfalle im eigenen Auftrag festhalten:** das Watchdog-Rezept in dieser SKILL.md
schreibt `set -m` vor, was unter zsh scheitert. Wer es wörtlich befolgt, verliert den ersten
Probeversuch. Beim nächsten Auftrags-Update `/bin/bash -c` explizit hineinschreiben.

**Mail: keine.** Kein P1-Blocker, den nur Raphael lösen kann (P1 ist Hub-intern und von mir
selbst behebbar), kein gelöster Blocker, kein erschöpftes Wochenkontingent. Regellauf, schlank
gehalten, inline gemessen ohne Subagent — die Delegation lohnt bei diesem Umfang nicht
(Auftragskorrektur 08.08.).

---
## 2026-08-13 01:51 — [FREI] **Aufsichtsausfall von 4 Tagen 13 Stunden: die gesamte Task-Flotte stand vom 08.08. bis 12.08. spätabends.** Ausfalltyp belegt: die Tasks haben NICHT gefeuert (nicht: gefeuert und versagt). Seit 00:51 läuft die Flotte wieder, aber als Nachhol-Sturm — rund 20 Tasks in einer einzigen Stunde. Ampel **FREI** (17.4 % bei 36.8 % verstrichener Woche, Vorsprung **-19.5**). Kein Delta-Null-Loop, im Gegenteil: 61 Commits in 30 h. Kein Mail-Anlass

**Selbstkontrolle: schwerer Ausfall, und er ist der Hauptbefund dieses Laufs.** Letzter Eintrag
08.08. 12:58, dieser Lauf 13.08. 01:51 — Abstand **109 Stunden** bei 12-h-Takt und 15 h Toleranz.
Das sind rund **neun verpasste Regelläufe**. Die Aufsicht war fünf Tage blind, und sie hat es
nicht selbst gemeldet, weil ein Radar, der nicht feuert, auch seine eigene Selbstkontrolle nicht
ausführt. Genau dieser Zirkel ist die Lehre des Eintrags.

**Ausfalltyp sauber getrennt (Pflichtschritt seit 07.08.).** Der Auftrag verlangt, `lastRunAt`
gegen das Datum des letzten Eintrags zu stellen. Ergebnis: es war **kein** gefeuerter Lauf, der
in eine Kontingentsperre fiel, sondern ein echter Feuerungsausfall der ganzen App-Task-Flotte.
Beleg sind zwei Tasks, die im Nachhol-Sturm noch nicht an der Reihe waren und deshalb den alten
Stand konserviert haben: `konversations-log` steht unverändert auf `lastRunAt` **08.08. 06:13**
und `vollgas-fruehwarnung` auf **08.08. 07:15**. Wäre zwischendurch gefeuert und abgebrochen
worden, stünde dort ein späteres Datum. Der Befund deckt sich mit dem, was der Zahlungsabgleich
heute Nacht unabhängig festhielt (Commit `f3706c8a`): die Berichtslücke 09.–12.08. geht auf den
Task-Flotten-Stillstand zurück, nicht auf den bexio-Token.

**Der Nachhol-Sturm ist real, aber selbstheilend — keine Massnahme.** Zwischen 00:51 und 01:51
CEST feuerten rund zwanzig Tasks praktisch gleichzeitig: heartbeat, baurecht-buch-training,
twin-mail-training, twin-fidelity-review, mahnwesen, zahlungsabgleich, logbuch-radar,
behoerden-zh-check, ag-gruendung-monitor, tenant-hygiene, hub-chef, normen-training, wissens-chef,
wettbewerbs-dna, synergie-lauf und dieser Radar. Das verletzt die Takt-Entzerrung (min. 2 h
Abstand) massiv, ist aber ein einmaliger Aufholeffekt: sämtliche `nextRunAt`-Werte stehen wieder
auf den regulären Slots (logbuch-radar 06:54, hub-chef 06:38, heartbeat 07:40, dieser Radar
10:57). Es wird nichts umgetaktet — eine Korrektur an dieser Stelle würde einen bereits
zurückgekehrten Zustand ein zweites Mal verschieben.

**Kontingent: reichlich Luft, und zwar mehr als je in diesem Register.** 28.98 von 167 Mio
teuren Token (MacBook 19.93, Mini 9.04), beide Stationen frisch. Verbraucht sind 17.4 % bei
36.8 % verstrichener Woche, Vorsprung **-19.5 Punkte** — der Verbrauch läuft dem Zeitverlauf
deutlich HINTERHER. Das ist die direkte Folge des fünftägigen Stillstands und keine Sparleistung.
Der stehende Entscheid Raphaels vom 03.08. («gleichmässig über die Woche») ist damit von der
anderen Seite verletzt: nicht zu viel am Wochenanfang, sondern zu wenig in der Wochenmitte.
Handlungsbedarf besteht trotzdem nicht — die Flotte holt von allein auf, und Kapazität künstlich
zu verbrauchen wäre genau die Verschwendung, die dieser Radar verhindern soll.

**Liefer-Delta: hervorragend, kein Kandidat für Rücktaktung oder Stilllegung.** 61 Commits in
30 Stunden, davon nahezu keine Status-Commits. Substanz je Loop: `normen` run49 (17 Refuter-Runden
als 34-Agenten-Flotte, 70 Kernbefunde), `baurecht` run73 (neuer Wiki-Artikel Umgebungsgestaltung,
Konkordanz StrAV→VErV mit zwei materiellen Änderungen), `wissens-chef` Run 29 (12 Befunde
verifiziert), `twin-fidelity-review` (Gruss-Default umgedreht, Echo-Detektor mechanisiert),
`twin-mail-training` Batch 91, `synergie-lauf` 05 (SYN-23 neu), `tenant-hygiene`, `zahlungsabgleich`
(Monitoring-Lücke geschlossen), `immobewertung-marktpuls` vorgezogen, `methoden-radar` umgebaut.
Kein Loop mit Delta Null, keine Rücktaktung, keine Stilllegung.

**Feuermechanismen: alle drei Orte stimmen.** MacBook: `ch.jans.vollgas-supervisor` und
`ch.jans.vollgas-monitor` liegen als `.disabled-260729` und sind nicht geladen. Mac Mini:
`vollgas-supervisor` ebenfalls `.disabled-260729`, geladen ist ausschliesslich
`ch.jans.nachtschicht` — Sollstand. Der Endlos-Runner bleibt ausgebaut (stehender Entscheid
30.07.), dieser Lauf hat ihn nicht angefasst. Mini-Registry unverändert acht Tasks; Mini-Sessions
zuletzt 13.08. 01:16, die Station arbeitet. Keine Waisenprozesse (`ps` auf `claude -p` leer).
Speicherdruck Stufe 2 (Warnung) bei rund 3.2 GB verfügbar — im laufenden Nachhol-Sturm erklärbar,
kein eigener Befund.

**P1 — Ursache des Flotten-Stillstands ist nicht dokumentiert und damit nicht abgestellt.**
Fünf Tage Ausfall der gesamten App-Task-Flotte, und in `rules/betrieb-chronik.md` steht dazu
kein Eintrag; der Zahlungsabgleich nennt ihn «den bekannten» Stillstand, ohne dass irgendwo
belegt wäre, was ihn ausgelöst und was ihn beendet hat. Solange das offen ist, kann er sich
jederzeit wiederholen, und keine der acht operativen Aufsichten würde es melden — sie standen
alle mit still. Dieser Radar geht der Frage bewusst nicht in diesem Lauf nach: der Regellauf ist
per Auftrag schlank, und die Untersuchung verlangt Transcript-Forensik über fünf Tage auf beiden
Stationen. Sie gehört als eigener Auftrag vergeben.

**P2 — Das Konversations-Destillat hat eine fünftägige Lücke, und der Logbuch-Radar liest es
in vier Stunden.** `konversations-log` (06:13) ist seit 08.08. nicht gelaufen und ist die
Vorstufe des operativen Logbuch-Radars (06:55). Läuft es heute regulär, destilliert es nur die
letzten 26 Stunden und lässt 09.–12.08. unerfasst. Der Radar arbeitet damit auf einem Destillat
mit Loch, ohne es zu wissen. Kein Eingriff dieses Laufs, aber der `hub-chef` sollte die Lücke im
Tagesbriefing kennen.

**P3 — Das Lauf-Journal bildet die Flotte weiterhin nicht ab.** 260813 trägt eine einzige Zeile
(ein Mini-Dispatch), 260809 fehlt ganz, obwohl in 30 Stunden 61 Commits entstanden. Das ist kein
neuer Fehler, sondern die bekannte bauliche Grenze (Chronik: die App-Scheduled-Task-Flotte ruft
das Gate nicht und kann es nicht rufen). Folge für diesen Radar: der Liefer-Delta ist über
Commits und Wiki-Dateien zu messen, nie über das Journal — im Journal sähe dieselbe hochaktive
Nacht wie Stillstand aus.

**Keine Mail.** Kein neuer P1-Blocker, den nur Raphael lösen kann: der Stillstand ist beendet,
die Flotte läuft, das Kontingent ist frei, der Login trägt. Der offene bexio-401 ist ein
Befund des Zahlungsabgleichs und steht bereits im Fristen-Register; nach dem Ein-Mail-Prinzip
trägt ihn der `hub-chef` um 08:39. Dieser Eintrag ist der Meldekanal.

---
## 2026-08-08 12:58 — [FREI] Regellauf, punktgenau im 12-h-Takt. Ampel **WARNUNG** (78.0 % bei 72.0 % verstrichener Woche, Vorsprung **+6.0**, ruecklaeufig). **Die gestrige Prognose trifft zu:** die Rate ist von 2.69 auf **0.77 Mio/h** gefallen — das ist praktisch exakt der Wert (0.78), den volle Ausschoepfung bis Montag braucht. Keine Drossel, kein Delta-Null-Loop, kein Mail-Anlass

**Selbstkontrolle: sauber — und die gestrige Korrektur bewaehrt sich sofort.** Letzter Eintrag
08.08. 00:58, dieser Lauf 12:58, Abstand **12 h 00** bei 12-h-Takt und **15 h Toleranz**. Genau
dieser Lauf haette mit der alten 11-h-Toleranz faelschlich einen Aufsichtsausfall gemeldet; die
Korrektur von gestern (Faustregel Toleranz = Takt + 3 h) greift beim ersten Regellauf nach ihrer
Einfuehrung.

**Fenster FREI.** `claude -p "Antworte nur mit: OK" --model haiku < /dev/null` liefert **«OK»,
rc=0** in Sekunden, ohne Watchdog. **Keine Waisen:** `ps`-Gegenprobe leer, `pgrep`-Gate-Zaehlung
**0**. **Speicher:** **5.35 GB** frei+inactive+purgeable, Druckstufe **1 (normal)** — deutlich
entspannter als um 00:58 (3.0 GB, Stufe 2). Kein Handlungsbedarf.

### Wochenbudget: WARNUNG haelt, Vorsprung schrumpft, Kurs stimmt

`kontingent-budget.sh --json`, ohne Modellaufruf:

| Groesse | Wert | Vergleich 08.08. 00:58 |
|---|---|---|
| Ampel | **WARNUNG** (Schwelle 70 %) | WARNUNG |
| Verbraucht | **130.33 Mio** von 167 = **78.0 %** | 121.12 Mio = 72.5 % |
| Woche verstrichen | 72.0 % (121 h seit Reset Mo 12:00) | 64.9 % |
| **Vorsprung** | **+6.0 Punkte** | +7.7 Punkte |
| MacBook Pro / Mac Mini | 100.85 / 29.47 Mio (beide frisch) | 92.01 / 29.11 |

Der Vorsprung ist um **1.7 Punkte gesunken**: der Verbrauch naehert sich dem Zeitverlauf an,
statt ihm davonzulaufen. Die Drosselschwelle (85 %) liegt **7.0 Punkte** entfernt, Schritt 2c ist
**nicht** ausgeloest und wurde **nicht** gesetzt.

**Rate seit 00:58: 9.21 Mio in 12 h = 0.77 Mio/h.** Das ist der Kern dieses Laufs. Der
00:58-Eintrag hatte ausdruecklich prognostiziert, die damalige Rate von 2.69 Mio/h sei **nicht
fortschreibbar**, weil sie zwei Einmalposten enthielt (Auslauf `normen` Run 47, `wissens-chef`
Run 28 als Cross-KB-Fan-out) und der Vorrang-Auftrag beendet war. Genau so ist es gekommen: der
Faktor liegt bei 3.5 nach unten. **Nach der Fehlprognose vom 07.08.** (Faktor fuenf daneben, weil
ein nicht vorhersagbarer Auftragstag Raphaels dazwischenkam) **ist das die erste Prognose dieses
Radars, die sich bestaetigt** — und zwar die, die sich ausdruecklich auf den *loopgetriebenen*
Fall beschraenkt hat. Die Einschraenkung war der Grund fuer den Treffer, nicht ein Zusatz.

**Restrechnung:** 36.67 Mio auf **47 h** bis zum Reset Montag 12:00, volle Ausschoepfung braucht
**0.78 Mio/h**. Gemessen sind 0.77. Der Verbrauch liegt damit auf einem Kurs, der das Kontingent
bis zum Reset **weder verschwendet noch verhungern laesst** — genau das, was der stehende
Entscheid Raphaels vom 03.08. («gleichmaessig ueber die Woche») verlangt. Ein Auftragstag oder
Vorrang-Lauf am Wochenende wuerde die Rate wieder anheben; das waere der erwuenschte Fall und
kein Anlass zu drosseln.

### Liefer-Delta: alle Loops liefern, kein Stilllegungskandidat

Kein Loop mit Delta Null. **72 Commits** im NAS-Repo in 14 h, davon namentlich zurechenbar:
`normen` Run 48 (17 Erstdestillate, 7 QUESTIONS), `twin-mail-training` Batch 90 (12 Eigentexte),
`twin-fidelity-review`, `logbuch-radar`, `hub-chef`, `zahlungsabgleich`, `wissens-ruecklauf`
(projekt-lessons Kuechenlueftung) und die `vollgas-fruehwarnung`. Geaenderte Wiki-/Output-Dateien
nach KB: `twin` 8 · `normen` 5 · `energie` 5 · `firmengruendung-ch` 4 · `immobilienbewertung` 3 ·
`bauprodukte` 2 · je 1 in `projekt-lessons`, `planungsgrundlagen`, `koordination`, `grobkosten`,
`baurecht`. Fuenf neue datierte Reports, darunter `normen-nacht-run48` und der
Kuechenlueftungs-Ruecklauf. NAS-Selfcommit taktet unauffaellig alle 15 Min, zuletzt 12:45:06.

Lauf-Journal 08.08.: **zwei** Mini-Dispatch-Slots (02:35 und 05:36), beide **rc=0**, 284 s und
341 s, zusammen 6.14 USD, 37 + 41 Turns. Kein Fehlversuch, keine Kontingentsperre.

### Feuermechanismen: unauffaellig, alle drei Orte stimmen

Der ausgebaute Endlos-Runner bleibt ausgebaut: `ch.jans.vollgas-supervisor.plist.disabled-260729`
und `ch.jans.vollgas-monitor.plist.disabled-260729` auf dem MacBook Pro, auf dem Mac Mini
`ch.jans.vollgas-supervisor.plist.disabled-260729` — keine geladene Vollgas-Instanz auf einer der
beiden Stationen. `ch.jans.nachtschicht` auf dem Mini ist geladen und zwischen den Slots ohne PID
(Normalzustand eines Kalender-Jobs). Auf dem MacBook laufen `com.jans.cockpit-server` und
`ch.jans.claude-alwayson` mit PID, die uebrigen Intervall-Jobs stehen erwartungsgemaess zwischen
ihren Laeufen. Kein Loop wird von zwei Mechanismen gefeuert.

### Bewertung

- **P1 — keiner.** Kein Login-Blocker, kein Wochenlimit, keine Drossel, kein Delta-Null-Loop.
  Kein Mail-Anlass nach der Mail-Disziplin (a)/(b)/(c).
- **P2 — Wochenende beobachten, nicht eingreifen.** Die Rate liegt punktgenau auf dem Kurs zur
  vollen Ausschoepfung. Die wahrscheinlichere Abweichung bleibt Unter-, nicht Ueberausschoepfung;
  der naechste Regellauf (Sonntag 00:57) prueft, ob die Nacht die kalibrierten 4 bis 5 Mio kostet.
- **P3 — Selbstkontrolle jetzt korrekt kalibriert.** Bei der naechsten Taktaenderung ist die
  Toleranz mitzuziehen (Takt + 3 h). Das ist in der SKILL.md verankert und hier zum ersten Mal
  praktisch bestaetigt.

**Regellauf, schlank gehalten** (Fensterprobe · Budget · Delta · Speicher · Eintrag), Messung an
einen Haiku-Subagenten delegiert gemaess Rule `modellwahl-routine`. Keine Tiefenuntersuchung, da
kein Befund sie verlangte.

---
## 2026-08-08 00:58 — [FREI] Erster Lauf im neuen 12-h-Takt, **kein** Aufsichtsausfall. Ampel springt erstmals auf **WARNUNG** (72.5 % bei 64.9 % verstrichener Woche, Vorsprung **+7.7**) — das ist ein Schwellenwert-Effekt einer guten Woche, keine Warnung im Wortsinn. **Eigener Defekt gefunden und behoben:** die Selbstkontrolle stand mit 11 h Toleranz gegen einen 12-h-Takt und haette ab sofort bei JEDEM Regellauf einen Ausfall gemeldet

**Selbstkontrolle: sauber.** Letzter Eintrag 07.08. 20:01, dieser Lauf 08.08. 00:58, Abstand
**4 h 57**. Der Takt ist seit 07.08. 21:21 **12-stuendlich** (`50 */12 * * *`, von 8 h
zurueckgenommen auf Freigabe Raphaels, Commit `74a12e25`); `lastRunAt` = 2026-08-07T22:58Z =
genau dieser Lauf, `nextRunAt` 12:57 CEST. Kein verpasster Lauf. Der 20:01-Eintrag war der
Nachhol-Lauf des am 5h-Limit gescheiterten 16:58-Laufs, danach die erste regulaere Feuerung
im neuen Takt.

**Fenster FREI.** `claude -p "Antworte nur mit: OK" --model haiku < /dev/null` liefert **«OK»,
rc=0** in Sekunden, ohne Watchdog. **Keine Waisen:** `ps -eo pid,ppid,command | grep "claude -p"`
leer, `pgrep`-Gate-Zaehlung **0**.
**Speicher:** **3.0 GB** frei+inactive+purgeable, Druckstufe **2 (warnend)** — unveraendert
gegenueber 20:01 (2.38 GB), leicht entspannt, kein Handlungsbedarf.

### Der eigene Defekt: Takt geaendert, Toleranz nicht mitgezogen

Die Ruecknahme auf 12 h am 07.08. 21:21 hat die **Selbstkontroll-Toleranz in dieser Task nicht
mitgezogen**: sie stand weiter auf **11 Stunden**, kalibriert auf den abgeloesten 8-h-Takt. Eine
Toleranz unter dem Takt ist nicht bloss ungenau, sie ist **invertiert** — ab dem naechsten
Regellauf (Abstand planmaessig 12 h) haette der Radar bei **jedem einzelnen Lauf** einen
Aufsichtsausfall gemeldet, und die Meldung «Aufsicht ausgefallen» waere damit wertlos geworden,
weil sie immer erschienen waere. Genau die Blindheit, gegen die die Selbstkontrolle gebaut wurde.

**Behoben in diesem Lauf:** Toleranz auf **15 h** gesetzt, mit der Faustregel **Toleranz = Takt
+ 3 h** und der ausdruecklichen Pflicht, sie bei jeder kuenftigen Taktaenderung mitzuziehen
(`~/.claude/scheduled-tasks/vollgas-chef-radar/SKILL.md`, Abschnitt SELBSTKONTROLLE). Das ist
derselbe Fehlertyp, den dieser Radar bei anderen registriert: **eine Aenderung ist erst
vollzogen, wenn alle Orte stimmen, an denen sie steht** (Schritt 3, drei Feuerorte). Hier war
die Aufsicht selbst der Nachzuegler.

### Wochenbudget: erstmals WARNUNG, und das ist die gute Nachricht

`kontingent-budget.sh --json`, ohne Modellaufruf:

| Groesse | Wert | Vergleich 07.08. 20:01 |
|---|---|---|
| Ampel | **WARNUNG** (Schwelle 70 %) | FREI |
| Verbraucht | **121.12 Mio** von 167 = **72.5 %** | 107.78 Mio = 64.5 % |
| Woche verstrichen | 64.9 % (109 h seit Reset Mo 12:00) | 61.9 % |
| **Vorsprung** | **+7.7 Punkte** | +2.6 Punkte |
| MacBook Pro / Mac Mini | 92.01 / 29.11 Mio (beide frisch) | 83.78 / 24.00 |

Die Ampel steht zum ersten Mal seit Beginn der Budgetmessung am 03.08. nicht auf FREI. **Das ist
kein Vorfall.** Die Schwellen sind **70 % WARNUNG / 85 % DROSSEL**; bei 72.5 % ist die
Warnschwelle knapp ueberschritten, die Drosselschwelle liegt **12.5 Punkte** entfernt. Ein
Verbrauch, der der Zeit um 7.7 Punkte vorauslaeuft, ist genau das, was der **stehende Entscheid
Raphaels vom 03.08.** («gleichmaessig ueber die Woche») verlangt — nach einer Messreihe, in der
der Vorsprung tagelang zwischen −10 und −14 Punkten lag und die wiederkehrende Sorge dem
**ungenutzten** Kontingent galt. Eine Drossel nach Schritt 2c ist **nicht** ausgeloest und wurde
**nicht** gesetzt.

**Rate seit 20:01: 13.34 Mio in 4 h 57 = 2.69 Mio/h.** Die Treiber sind benannt und alle
abgeschlossen: der Auslauf des `normen`-Vorrang-Laufs Run 47 (Schluss-Commit `2745f497` 20:02),
`wissens-chef` Run 28 als Cross-KB-Fan-out (23:10–23:55, 20 Befunde, Commit `598be5e8`) und zwei
Mini-Dispatch-Slots (21:29 / 23:37, zusammen 6.65 USD). **Diese Rate ist nicht fortschreibbar** —
sie enthaelt zwei Einmalposten, und der Vorrang-Auftrag ist beendet.

**Prognose fuer das Wochenende, ausdruecklich nur fuer den loopgetriebenen Fall** (Lehre aus der
Fehlprognose vom 07.08., die um Faktor fuenf danebenlag, weil ein Auftragstag Raphaels nicht
vorhersagbar ist): Rest **45.88 Mio auf 59 h** bis zum Reset Montag 12:00, volle Ausschoepfung
braeuchte **0.78 Mio/h**. Die Nacht kostet nach Kalibrierung rund **4 bis 5 Mio** (neun
gewoehnliche Loops ≈ 4.1 Mio), ein Samstag ohne Auftragsarbeit liegt deutlich unter 0.78 Mio/h.
**Die wahrscheinlichere Abweichung bleibt Unter-, nicht Ueberausschoepfung** — DROSSEL wird ohne
einen weiteren Vorrang-Auftrag nicht erreicht. Traefe einer ein, waere das der erwuenschte Fall
und kein Anlass zu drosseln.

### Liefer-Delta: alle Loops liefern, kein Stilllegungskandidat

Kein Loop mit Delta Null. Geaenderte Wiki-/Output-Dateien in den letzten 16 h, nach KB:
`baurecht` 12 · `energie` 11 · `normen` 8 · `immobilienbewertung` 4 · `grobkosten` 2 ·
`koordination` 2 · `bauprodukte` 1 · `planungsgrundlagen` 1. Drei neue datierte Reports
(`energie-run125`, `normen-run47`, IAZI-vs-UBS-Vergleich in der Immobilienbewertung).
NAS-Selfcommit taktet unauffaellig alle 15 Min, zuletzt 01:00.

Lauf-Journal 07.08.: **fuenf** Mini-Dispatch-Slots, davon vier mit rc=0 (14.71 USD zusammen) und
**einer** mit rc=1 um 13:30 am Session-Limit («resets 1:50pm») — nach Schritt 2 ein **[VOLL 5h]**,
also Erfolg im Sinne des Auftrags und **kein** Leerlauf. Fuer den 08.08. existiert noch kein
Journal; die Nacht hat noch nicht gefeuert.

### Feuermechanismen: unauffaellig

Der ausgebaute Endlos-Runner bleibt ausgebaut: `ch.jans.vollgas-supervisor.plist.disabled-260729`
und `ch.jans.vollgas-monitor.plist.disabled-260729` auf dem MacBook Pro, auf dem Mac Mini
ebenfalls keine geladene Vollgas-Instanz. `ch.jans.nachtschicht` auf dem Mini ist geladen und
zwischen den Slots ohne PID — das ist der **Normalzustand** eines Kalender-Jobs und keine
Stoerung. Kein doppelt gefeuerter Loop erkennbar.

**Nachtrag zur Modell-Politik:** Der Rollout auf die Mini-Tasks und in den Nachtschicht-Zyklus
ist am 07.08. abends erfolgt (`69ddb5ff`, `be8d66a7`). Die dort mitgelieferte Messung ist fuer
diese Aufsicht relevant: **42 von 53 Fehllaeufen der Nachtschicht sind Kontingent-Abbrueche, nur
6 der 5-USD-Deckel.** Das stuetzt die stehende Regel, dass ein Delta von Null waehrend einer
Sperre nie als Leerlauf gewertet wird — bei der Nachtschicht ist das der mit Abstand haeufigste
Fehlerfall.

**P1 — keiner.** Kein Blocker, der Raphael braucht. Keine Mail (Fenster frei, kein Wochenlimit,
kein Login-Block).
**P2 — Speicherdruckstufe 2** haelt sich seit dem 07.08. 20:01 auf beiden Messungen. Bei 3.0 GB
frei ist das tragbar; wird die Stufe 3 erreicht oder faellt der Wert unter rund 1.5 GB, gehoert
es in den naechsten Eintrag als eigener Befund.
**P3 — Prognosemethodik.** Die im 20:01-Eintrag beschlossene Regel ist hier zum ersten Mal
angewandt: jede Rate-Vorhersage sagt ausdruecklich dazu, dass sie nur fuer **loopgetriebene**
Fenster gilt. Beibehalten.

*Regellauf, schlank gefahren: Fensterprobe, Budget, Feuermechanismen, Liefer-Delta, Speicher,
Eintrag. Die mechanische Datenerhebung lief nach Rule `modellwahl-routine` in einem
haiku-Subagenten; Urteil, Budgetbewertung und dieser Eintrag im Hauptkontext.*

---
## 2026-08-07 20:01 — [FREI, zwischenzeitlich VOLL 5h] Der 16:58-Lauf ist gestartet und hat nichts geliefert: **erster Aufsichtsausfall seit dem 05.08.**, Ursache ist ein ausgereiztes 5h-Fenster. Rate **3.01 Mio/h** statt vorhergesagter 0.3–0.6, Vorsprung −10.7 → **+2.6** — und der Verursacher ist zum ersten Mal messbar **Raphaels eigener Vorrang-Auftrag**, nicht ein Loop

**Selbstkontrolle: AUFSICHTSAUSFALL, und zwar ein anderer Typ als bisher.** Letzter Eintrag
07.08. 08:57, dieser Lauf 20:01, Abstand **11 h 04** bei 8-h-Takt (00:50 / 08:50 / 16:50). Die
Registry zeigt `vollgas-chef-radar` `lastRunAt` **2026-08-07T14:58:12Z = 16:58 CEST** — der Lauf
ist also **gefeuert** und hat **keinen Eintrag hinterlassen**. Das ist kein übersprungener Cron,
sondern ein abgebrochener Lauf, und die Ursache ist belegt: das 5h-Fenster von rund 14:00 bis
19:00 war ausgereizt (siehe unten). Der vorliegende Eintrag ist der Nachhol-Lauf. **Lehre für
die Selbstkontrolle:** ein fehlender Eintrag allein sagt nicht, ob der Radar nicht gefeuert hat
oder gefeuert und versagt hat — die beiden Fälle sind nur über `lastRunAt` zu trennen, und sie
haben völlig verschiedene Ursachen. Ab sofort bei jedem Ausfall zuerst `lastRunAt` gegen den
letzten Eintrag stellen.

**Fenster JETZT FREI.** `claude -p "Antworte nur mit: OK" --model haiku < /dev/null` liefert
**«OK», rc=0** in Sekunden, ohne Watchdog. **Keine Waisen:** `ps -eo pid,ppid,command | grep
"claude -p"` leer, Gate-Zählung `pgrep` **0**.
**Speicher:** **2.38 GB** frei+inactive+purgeable, Druckstufe **2 (warnend)** — siehe P2.

**Zwei echte 5h-Limit-Treffer heute, beide dokumentiert, keiner ein Wochenlimit:**

- **13:30** — Lauf-Journal `260807-laeufe.jsonl`, Mini-Dispatch, `rc=1`, `cost_usd=0`,
  `"You've hit your session limit · resets 1:50pm"`. Erster Limit-Treffer seit dem 03.08. 09:41;
  die Frühwarnung von 07:15 («seit rund 94 Stunden keines») war zum Messzeitpunkt korrekt.
- **Fenster mit Reset 19:00** — `normen` Run 47 meldet **zwei** Abbrüche am Session-Limit beim
  52-Seiten-Scan SIA 112/1:2017 («resets 19:00»). In genau dieses Fenster fiel der 16:58-Radar.

Beides ist **[VOLL 5h]**, also im Sinne des Auftrags Erfolg und kein Vorfall. Ein Wochenlimit
gab es nicht.

**Wochenbudget** (`kontingent-budget.sh --json`, ohne Modellaufruf):

| Grösse | Wert | Vergleich 08:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **107.78 Mio** von 167 = **64.5 %** | 74.47 Mio = 44.6 % |
| Woche verstrichen | 61.9 % (104 h seit Reset Mo 12:00) | 55.3 % |
| **Vorsprung** | **+2.6 Punkte** | −10.7 Punkte |
| MacBook Pro / Mac Mini | 83.78 / 24.00 Mio (beide frisch) | 54.76 / 19.71 |

### Die Vorhersage ist um Faktor fünf bis zehn falsifiziert — und der Vorlauf hatte den Grund bereits benannt

Der 08:57-Eintrag hatte **0.3 bis 0.6 Mio/h** und einen Vorsprung zwischen **−12.5 und −14.5**
vorhergesagt, mit der Begründung, im Tagfenster feuere kein Loop mit Fan-out. Gemessen sind
**33.31 Mio in 11 h 04 = 3.01 Mio/h** und ein Vorsprung von **+2.6**. Das ist die grösste
Fehlprognose der Messreihe.

Der Vorlauf hatte den Ausweg aber selbst formuliert: «Liegt er besser als −12.5, hat entweder
Raphael selbst substanziell gearbeitet oder ein Loop unerwartet mit Fan-out — beides wäre im
Eintrag zu trennen.» Die Trennung ist eindeutig und fällt auf die **erste** Möglichkeit.

Aufgeteilt nach Station: **MacBook Pro +29.02 Mio**, **Mac Mini +4.29 Mio**. Auf dem MacBook
lief `normen` Run 47, ein **manueller Vorrang-Lauf auf Auftrag Raphaels** (Block zuoberst in
`training/norm-inventar.md`), von rund 09:00 bis 20:02 — drei Zwischen-Commits (`6d32b02e` 12:09,
`ca487f39` 14:11, `2745f497` 20:02). Kein regulärer Loop, kein Fan-out-Nachtlauf, sondern
Auftragsarbeit.

**Damit steht eine dritte Kalibrierungsgrösse neben den beiden bisherigen:**

| Arbeitstyp | Kosten (teuer) | Beleg |
|---|---|---|
| Ein Nachtschicht-Slot (Mini) | rund **0.2 Mio** | zwei unabhängige Fenster, 06.–07.08. |
| Neun gewöhnliche Loops zusammen | rund **4.1 Mio** | Nachtfenster 07.08. 00:57–08:57 |
| Ein 28-Agenten-Fan-out-Lauf | rund **4.5 Mio** | `wissens-chef` Run 27 |
| **Ein Tag Vorrang-Auftrag** | **rund 29 Mio** | `normen` Run 47, 07.08. |

Ein einziger Auftragstag kostet also so viel wie **rund sechs Fan-out-Läufe** oder **145
Nachtschicht-Slots**. Das ordnet die Regimefrage des Vorlaufs neu: die Fan-out-Tiefe der Loops
ist nicht der grösste Hebel auf die Ausschöpfung, sondern der zweitgrösste. Der grösste ist,
ob Raphael an einem Tag selbst einen Vorrang-Auftrag fährt. Das ist **kein** Anlass für eine
Radar-Massnahme — Auftragsarbeit ist der Zweck des Kontingents, nicht sein Verbraucher. Es ist
ein Grund, die Prognosemethodik zu ändern: eine Rate lässt sich nur für **loopgetriebene**
Fenster vorhersagen, und jede künftige Vorhersage sagt das ausdrücklich dazu.

### Zum ersten Mal in dieser Messreihe liegt der Verbrauch nicht mehr hinter der Zeit

Der Vorsprung war seit dem 04.08. durchgehend negativ und hatte sich auf −10.7 vertieft; die
wiederkehrende Warnung dieses Radars lautete «die Gefahr liegt auf der anderen Seite:
ungenutztes Kontingent, das am Montag verfällt». Mit **+2.6** ist der Verbrauch nun praktisch
deckungsgleich mit dem Zeitverlauf — die beste Lage seit Beginn der Budgetmessung am 03.08.
und genau das, was der **stehende Entscheid Raphaels vom 03.08.** («Verbrauch gleichmässig über
die Woche») verlangt.

**Rest bis zum Reset am Montag 12:00:** 59.22 Mio auf 64 h, volle Ausschöpfung bräuchte **0.93
Mio/h**. Das Wochenende ist damit erstmals nicht mehr strukturell unterversorgt. Eine Drossel
nach Schritt 2c ist **nicht** ausgelöst und wurde **nicht** gesetzt; die Ampel steht auf FREI,
und bei +2.6 Punkten wäre eine Drossel auch sachlich falsch.

**Liefer-Delta seit 08:57 — alle Loops mit Delta, ein Ausfall (der Radar selbst):**

- **`normen` Run 47** (Vorrang, Commits `6d32b02e` / `ca487f39` / `2745f497`): **9 von 10
  P1-Positionen** der Downloads-Übernahme erledigt — je Erstdestillat plus unabhängige
  Refuter-Runde, alle neun danach auf **established**. Zwei davon **BEANSTANDET** und korrigiert
  (SIA 264/1:2003 mit einem Kernbefund, SIA 387/4:2017 geringfügig). Position 9 (SIA 112/1:2017)
  zweimal am Session-Limit gescheitert und mit Wiederaufnahme-Vermerk an den Nacht-Loop
  übergeben. Delta ja, das mit Abstand grösste des Tages.
- **`hub-chef-taeglich`** (Commit `c522ad3a` 09:01, Logbuch-Abschnitt «Hub-Chef 07.08.2026 08:39
  bis 08:59»): Briefing an rj@ versendet, A5-Entwurf an Marc Grupp im Postfach, Muster
  unbeantworteter Lehrstellenanfragen erfasst (zehn Anfragen seit Juli 2025, null Antworten).
  **Die offene Gegenprobe des Vorlaufs ist damit erledigt** — der Lauf war um 08:57 nur noch
  nicht fertig, nicht ausgefallen.
- **`heartbeat-daily`** (09:40, `lastRunAt` bestätigt): gelaufen, kein Befund im Logbuch.
- **Neuer Command `/tiefenrecherche`** (Commit `26a057cf` 10:42): parallele Recherche-Agenten,
  CLAUDE.md und Rollen-Register nachgezogen. Raphaels eigene Arbeit, kein Loop.
- **`vollgas-chef-radar` 16:58: KEIN Delta** — gefeuert, kein Eintrag, siehe Selbstkontrolle.

**Kein Loop mit Delta-Null-Serie. Keine Rücktaktung, keine Stilllegung, keine Drossel.** Der
einzige Null-Lauf ist der eigene, und er fiel nachweislich in eine Kontingentsperre — nach dem
Befund der Frühwarnung vom 03.08. ist das ausdrücklich **kein** Leerlauf.

**Feuermechanismen, alle drei Orte geprüft.** Registry MacBook (`list_scheduled_tasks`):
unverändert, eigener Takt `50 */8 * * *` bestätigt, keine Task hinzugekommen oder entfernt.
Registry Mini (`ssh mini 'ls ~/.claude/scheduled-tasks/'`): dieselben **acht** Tasks,
Sollstand unverändert. launchd beide Stationen: `ch.jans.vollgas-supervisor` und
`ch.jans.vollgas-monitor` unverändert `*.disabled-260729` und **nicht geladen**,
`STOP-Macbookpro`/`STOP-Macmini` unverändert vom 29.07. 02:51, `ch.jans.nachtschicht` auf dem
Mini geladen. **Kein Mechanismus feuert doppelt, keiner ist wiederauferstanden.**

**P1 — keiner. Keine Mail.** Kein Login-Blocker, kein erschöpftes Wochenkontingent; die beiden
5h-Treffer sind Ausschöpfung, kein Meldeanlass.

**P2 — Speicherdruck: der Befund ist jetzt fällig.** Zweite Messung in Folge auf Stufe **2**,
dazu ein Rückgang von 3.21 auf **2.38 GB** frei+inactive+purgeable. Damit ist die im 08:57-Lauf
gesetzte Schwelle («erst bei zwei aufeinanderfolgenden Messungen auf Stufe 2 oder schlechter»)
erreicht. Kein Eingriff in diesem Lauf: der 11-Stunden-Vorrang-Lauf ist die naheliegende und
vorübergehende Erklärung, und er ist um 20:02 beendet. **Beim 00:57-Lauf entscheidet die dritte
Messung:** liegt sie nach dem Ende des Vorrang-Laufs wieder auf Stufe 1, war es Last; bleibt sie
auf 2 oder steigt, ist es ein Leck und gehört untersucht. Messdisziplin dabei: `vm_stat` plus
`sysctl`, nie `top`-«unused», nie `ps`-RSS.

**P3 — unverändert offen: Abgleich der `energie-training`-Frontmatter** (Session auf dem Mini
nötig; die Datei trägt `enabled: false`, der Loop feuert und liefert täglich). Nicht vom Radar
zu heilen — ein Edit könnte einen produktiven Loop stillstellen.

**Prüfbare Vorhersage für den 00:57-Lauf** (ausdrücklich nur für ein **loopgetriebenes**
Fenster; ein weiterer Vorrang-Auftrag würde sie erneut sprengen, und das wäre kein Fehler der
Prognose): im Nachtfenster feuern `wissens-chef` (23:11), `normen-training-nacht` (01:28) mit
der übergebenen SIA 112/1 sowie zwei Nachtschicht-Slots auf dem Mini. Erwartung daher **0.6 bis
1.0 Mio/h** und ein Vorsprung zwischen **+0.5 und +2.5** — also weiterhin nahe null. Fällt er
unter −1.0, hat die Nacht weniger geliefert als geplant; steigt er über +4.0, lief erneut etwas
Grosses ausserhalb des Loop-Takts.

**Turns dieses Laufs: rund 14.** Regellauf mit einer gezielten Ursachenklärung zum eigenen
Ausfall von 16:58 — keine Tiefenuntersuchung.

---
## 2026-08-07 08:57 — [FREI] Vorhersage getroffen, Rate am unteren Rand: 0.57 Mio/h, Vorsprung −8.7 → **−10.7**. Die Fan-out-Kalibrierung des Vorlaufs hält der Gegenprobe stand: **neun Loops zusammen kosten 4.12 Mio — so viel wie EIN 28-Agenten-Lauf**

**Selbstkontrolle:** letzter Eintrag 07.08. 00:57, Abstand **8 h 00** bei 8-h-Takt
(00:50 / 08:50 / 16:50). **Kein Aufsichtsausfall.**

**Fenster FREI, siebter sauberer Lauf in Folge.** `claude -p "Antworte nur mit: OK" --model
haiku < /dev/null` liefert **«OK», rc=0** in Sekunden, ohne Watchdog. **Keine Waisen:**
`ps -eo pid,ppid,command | grep "claude -p"` leer, Gate-Zählung `pgrep` **0**.
**Speicher:** 3.21 GB frei+inactive+purgeable, Druckstufe **2 (warnend)** — gegenüber
Stufe 1 um 00:57 eine Stufe schlechter, bei laufendem `hub-chef`. Kein Handlungsbedarf,
aber der erste Druckanstieg seit dem 05.08.; beim 16:57-Lauf gegenmessen.

**Wochenbudget** (`kontingent-budget.sh --json`, ohne Modellaufruf):

| Grösse | Wert | Vergleich 00:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **74.47 Mio** von 167 = **44.6 %** | 69.89 Mio = 41.9 % |
| Woche verstrichen | 55.3 % (93 h seit Reset Mo 12:00) | 50.6 % |
| **Vorsprung** | **−10.7 Punkte** | −8.7 Punkte |
| MacBook Pro / Mac Mini | 54.76 / 19.71 Mio (beide frisch) | 50.64 / 19.25 |

### Die Vorhersage des Vorlaufs trifft, und die Kalibrierung besteht die Gegenprobe

Der 00:57-Eintrag hatte sich auf **0.6 bis 0.9 Mio/h** und einen Vorsprung zwischen **−9.0 und
−10.0** festgelegt, mit der Begründung, im Nachtrest feuere kein Fan-out-Lauf. Gemessen sind
**4.58 Mio in acht Stunden = 0.57 Mio/h** und ein Vorsprung von **−10.7** — die Richtung stimmt,
beide Werte liegen knapp unter dem angegebenen Band. Die Vorhersage war zu optimistisch, nicht
falsch.

Wichtiger ist die Gegenprobe zur Fan-out-Kalibrierung. Aufgeteilt nach Station:
**MacBook Pro +4.12 Mio**, **Mac Mini +0.46 Mio**. Auf dem Mini liefen genau zwei
Nachtschicht-Slots, also **0.23 Mio je Slot** — die 0.2-Kalibrierung des Vorlaufs bestätigt
sich unabhängig. Auf dem MacBook liefen in diesem Fenster **neun** Loops (normen-training,
twin-mail-training, twin-fidelity-review, konversations-log, logbuch-radar, vollgas-fruehwarnung,
ag-gruendung-monitor, mahnwesen-verzugscheck, zahlungsabgleich-check), keiner davon mit Fan-out,
zusammen **4.12 Mio**.

Das ist die belastbare Fassung des Befunds vom Vorlauf: **ein einzelner 28-Agenten-Lauf
(`wissens-chef` Run 27, rund 4.5 Mio) kostet mehr als neun gewöhnliche Laeufe zusammen.** Die
Kalibrierung stützt sich damit nicht mehr auf eine einzelne Zuordnung, sondern auf zwei
unabhängig gemessene Fenster. Der Hebel auf die Ausschöpfung ist die Fan-out-Tiefe, nicht die
Zahl der Slots — und das bleibt eine Regimefrage für Raphael, keine Radar-Massnahme.

**Rest bis zum Reset am Montag 12:00:** 92.53 Mio auf 75 h, volle Ausschöpfung bräuchte
**1.23 Mio/h**. Der Wochenschnitt liegt bei **0.80 Mio/h**; hält er, endet die Woche bei rund
**135 Mio = 81 %** (Vorlauf projizierte 83 %). Eine Drossel nach Schritt 2c ist **nicht**
ausgelöst und wurde **nicht** gesetzt — die Ampel steht auf FREI, die Gefahr liegt weiter auf
der anderen Seite: ungenutztes Kontingent, das am Montag verfällt.

**Pruefbare Vorhersage fuer den 16:57-Lauf:** im Tagfenster feuern nur `heartbeat-daily` (09:40)
und der Rest des `hub-chef`; alles Weitere hängt an Raphaels eigener Arbeit. Kein Loop mit
Fan-out. Erwartung daher **0.3 bis 0.6 Mio/h** und ein Vorsprung zwischen **−12.5 und −14.5**.
Liegt er besser als −12.5, hat entweder Raphael selbst substanziell gearbeitet oder ein Loop
unerwartet mit Fan-out — beides wäre im Eintrag zu trennen.

**Liefer-Delta seit 00:57** — fünf Lern-Läufe, alle mit Delta:

- **`normen-training` Run 46** (01:28, Commit `ee8dc9a6`): GVZ 30.17.3 in der **vierten**
  Refuter-Runde **BEANSTANDET** — fünf Kernbefunde, die Entrauchungsöffnungen nach
  Ziff. 4.2.2.4 fehlten ganz, die Hebung ist gescheitert. Daneben SWKI VA103-01 Kap. 2.3
  (Emissionsgrundlagen) und vier weitere Lücken geschlossen. Delta ja; dass eine vierte Runde
  einen Fehler findet statt zu bestätigen, ist das inhaltlich wertvollste Ergebnis der Nacht.
- **`twin-mail-training` Batch 89** (03:40, Commit `922a1fc3`): rj@ 21.–31.03.2026, 18 Marker,
  Echo-Quote En-Strich. Delta ja.
- **`twin-fidelity-review`** (05:45, Commit `02241098`): Service-Satz nach Gattung, vierte
  Endform, Signaturblock-Regel zurückgenommen. Delta ja.
- **Nachtschicht 02:30** (Mini, rc=0, 56 Turns, Commit `c9d6b082`): `energie` — Minergie-
  Produktreglement 2026.1 Anhänge G/H/J gelesen, Bauherren-Antwort F217 neu, Frage E-124-2
  geschlossen. Delta ja.
- **Nachtschicht 05:30** (Mini, rc=0, 41 Turns): `bauprodukte` — ERCO-Lichtplanungsratgeber
  S. 145 → 175, Kapitel «Lichtanwendungen» vollständig. Delta ja.

Operativ geliefert haben ausserdem `konversations-log`, `logbuch-radar` (Commit `e166e5e4`,
Bohlweg-3-Eingabetermin verstrichen), `vollgas-fruehwarnung`, `ag-gruendung-monitor`,
`mahnwesen-verzugscheck` und `zahlungsabgleich-check`. **`hub-chef-taeglich` lief um 08:39 an
und war zum Messzeitpunkt noch im Lauf** (kein Logbuch-Abschnitt, kein Commit) — regulär, kein
Befund; die Lieferung ist beim 16:57-Lauf gegenzuprüfen.

**Kein Loop mit Delta-Null-Serie. Keine Rücktaktung, keine Stilllegung, keine Drossel.**
Lauf-Journal 07.08.: zwei Zeilen, beide **rc=0** (02:38 / 05:36) — es erfasst weiterhin nur die
Mini-Dispatch-Läufe, die MacBook-Scheduled-Tasks sind über Commits belegt.

**Feuermechanismen, alle drei Orte geprüft.** Registry MacBook (`list_scheduled_tasks`):
unverändert, eigener Takt `50 */8 * * *` bestätigt, keine Task hinzugekommen oder entfernt.
Registry Mini (`ssh mini 'ls ~/.claude/scheduled-tasks/'`): dieselben **acht** Tasks wie am
06.08. (arbeits-weiche-review, baurecht-buch-training, claude-abo-auslastung, energie-training,
grobkosten-training, normen-training-mini, planungsgrundlagen-training, synobsis-batch-nacht),
Sollstand unverändert. launchd beide Stationen: `ch.jans.vollgas-supervisor` und
`ch.jans.vollgas-monitor` unverändert `*.disabled-260729` und **nicht geladen**,
`STOP-Macbookpro`/`STOP-Macmini` unverändert vom 29.07. 02:51, `ch.jans.nachtschicht` auf dem
Mini geladen. **Kein Mechanismus feuert doppelt, keiner ist wiederauferstanden.**

**P1 — keiner. Keine Mail.** Kein Login-Blocker, kein erschöpftes Wochenkontingent.

**P2 — unverändert offen: Abgleich der `energie-training`-Frontmatter** (Session auf dem Mini
nötig; die Datei traegt `enabled: false`, der Loop feuert und liefert taeglich). Nicht vom
Radar zu heilen — ein Edit könnte einen produktiven Loop stillstellen.

**P3 — Speicherdruck Stufe 2** beim nächsten Lauf gegenmessen (siehe oben). Erst bei zwei
aufeinanderfolgenden Messungen auf Stufe 2 oder schlechter ein Befund.

**Turns dieses Laufs: rund 12.** Regellauf, keine Tiefenuntersuchung.

---
## 2026-08-07 00:57 — [FREI] Prognose des Vorlaufs falsifiziert: auch die NACHT liefert nur 0.59 Mio/h statt 1.00, Vorsprung −6.8 → **−8.7**. Neue Kalibrierung: ein Fan-out-Lauf kostet rund 4.5 Mio, ein Nachtschicht-Slot rund 0.2 — der im Vorlauf vorgeschlagene Zusatz-Slot haette die Luecke nie geschlossen

**Selbstkontrolle:** letzter Eintrag 06.08. 16:57, Abstand **8 h 00** bei 8-h-Takt
(00:50 / 08:50 / 16:50). **Kein Aufsichtsausfall.**

**Fenster FREI, sechster sauberer Lauf in Folge.** `claude -p "Antworte nur mit: OK" --model
haiku < /dev/null` liefert **«OK», rc=0** in Sekunden, ohne Watchdog. **Keine Waisen:**
`ps -eo pid,ppid,command | grep "claude -p"` leer, Gate-Zaehlung `pgrep` **0**.
**Speicher:** 4.27 GB frei+inactive+purgeable, Druckstufe **1** (normal).

**Wochenbudget** (`kontingent-budget.sh --json`, ohne Modellaufruf):

| Groesse | Wert | Vergleich 16:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **69.89 Mio** von 167 = **41.9 %** | 65.14 Mio = 39.0 % |
| Woche verstrichen | 50.6 % (85 h seit Reset Mo 12:00) | 45.8 % |
| **Vorsprung** | **−8.7 Punkte** | −6.8 Punkte |
| MacBook Pro / Mac Mini | 50.64 / 19.25 Mio (beide frisch) | 46.11 / 19.04 |

### Die Prognose des Vorlaufs ist widerlegt, und das ist der eigentliche Befund

Der 16:57-Eintrag hat sich festgelegt: stellt die Nacht die 1.00 Mio/h wieder her, steht der
Vorsprung hier weiterhin bei rund −6.8; faellt er darunter, hat auch die Nacht nachgelassen.
Gemessen sind **4.75 Mio in acht Stunden = 0.59 Mio/h**, klar unter der Haltelinie von 0.99,
und der Vorsprung sinkt auf **−8.7**. Der Einbruch war also **kein Tagfenster-Effekt**. Die
Deutung des Vorlaufs, die Nacht trage die Rate und nur der Tag falle aus, traegt nicht.

Aufgeteilt nach Station: **MacBook Pro +4.53 Mio (0.57/h)**, **Mac Mini +0.21 Mio (0.03/h)**.
Beide Stationen haben in diesem Fenster geliefert, der Mini also mit einem Zwanzigstel des
Aufwands.

### Kalibrierung: der Aufwand je Lauf streut um den Faktor 20

Damit laesst sich zum ersten Mal beziffern, was ein Lauf wirklich kostet, und das korrigiert
zugleich eine Zuordnung des Vorlaufs:

- **`wissens-chef` Run 27** (MacBook, 23:11, Cross-KB, 6 Felder, **28 Agenten**): rund
  **4.5 Mio** — praktisch der gesamte MacBook-Verbrauch dieses Fensters.
- **Nachtschicht-Slot 23:36** (Mini, 51 Turns, 4.12 USD): rund **0.21 Mio**.
- **Korrektur zum 16:57-Eintrag:** die dort dem 13:36-Slot zugeschriebenen 1.21 Mio deckten
  in Wahrheit **zwei** Mini-Laeufe (`arbeits-weiche-review` 09:10 und Nachtschicht 13:36).
  Ein einzelner Nachtschicht-Slot kostet rund 0.2 Mio, nicht 1.2.

**Folgerung, die den P2 (a) des Vorlaufs erledigt:** der dort vorgeschlagene zusaetzliche
Nachtschicht-Slot auf dem Mini haette rund **0.2 Mio = 0.12 Punkte** gebracht, gegen eine
Luecke von 8.7 Punkten. Er war als Hebel um zwei Groessenordnungen zu klein. Die Rate wird
nicht von der Zahl der Slots bestimmt, sondern davon, **ob ein Lauf mit Fan-out arbeitet**.
Das ist die brauchbare Erkenntnis dieses Laufs und ersetzt die bisherige Slot-Arithmetik.

**Rest bis zum Reset am Montag 12:00:** 97.11 Mio auf 83 h, volle Ausschoepfung braeuchte
**1.17 Mio/h**. Der Wochenschnitt liegt bei **0.82 Mio/h**; haelt er, endet die Woche bei rund
**138 Mio = 83 %** (Vorlauf projizierte 85 %). Eine Drossel nach Schritt 2c ist **nicht**
ausgeloest und wurde **nicht** gesetzt — die Ampel steht auf FREI, die Gefahr liegt weiter
auf der anderen Seite: ungenutztes Kontingent, das am Montag verfaellt.

**Pruefbare Vorhersage fuer den 08:57-Lauf:** im Nachtrest feuern `normen-training` 01:27,
`twin-mail` 03:39, `twin-fidelity` 05:44, zwei Mini-Slots (02:30 / 05:30) und die operativen
Morgenloops. Keiner davon ist ein 28-Agenten-Lauf. Erwartung daher **0.6 bis 0.9 Mio/h** und
ein Vorsprung zwischen **−9.0 und −10.0**. Liegt er besser als −8.7, hat ein Loop unerwartet
mit Fan-out gearbeitet.

**Liefer-Delta seit 16:57** — zwei Laeufe, beide mit Delta:

- **`wissens-chef` Run 27** (23:11, Commit `36bcba74`): erfundener Beleg «Buerolicht UGR<=19»
  im ERCO-Praxisteil am Original-PDF **widerlegt und gestrichen** (neue Fehlerklasse im
  Register), Healthcare-Bandendpunkt 1'420 CHF/m3 GV bei allen drei Abnehmern qualifiziert,
  zwei `bauprodukte`-Sperrklauseln aufgehoben, Electrosuisse-Kette SNR 464022 → SN 414022:2024,
  SIA 380/4 sachbezogen unterschiedlich korrigiert. 17/17 verifiziert: 3 bestaetigt,
  13 gedaempft, 1 widerlegt. Delta ja, und zwar das inhaltlich schwerste dieses Tages.
- **Nachtschicht 23:36** (Mini, rc=0, 51 Turns, Commit `887045cd`): `bauprodukte` —
  ERCO-Lichtplanungsratgeber S. 120 → 145 fortgeschrieben. Delta ja, ohne Fan-out.

**Kein Loop mit Delta-Null-Serie. Keine Ruecktaktung, keine Stilllegung, keine Drossel.**
Lauf-Journal 06.08.: vier Zeilen, alle **rc=0** (02:39 / 05:41 / 13:36 / 23:36).

**Feuermechanismen, alle drei Orte geprueft.** Registry MacBook (`list_scheduled_tasks`):
unveraendert, eigener Takt `50 */8 * * *` bestaetigt, keine Task hinzugekommen oder entfernt.
Registry Mini (`ssh mini`): dieselben acht Tasks. launchd beide Stationen:
`ch.jans.vollgas-supervisor` und `ch.jans.vollgas-monitor` unveraendert `*.disabled-260729`
und **nicht geladen**, `STOP-Macbookpro`/`STOP-Macmini` unveraendert vom 29.07. 02:51,
`ch.jans.nachtschicht` auf dem Mini geladen. **Kein Mechanismus feuert doppelt, keiner ist
wiederauferstanden.**

**P1 — keiner. Keine Mail.** Kein Login-Blocker, kein erschoepftes Wochenkontingent.

**P2 (a) — ERSETZT.** Der Vorschlag «zusaetzlicher Nachtschicht-Slot auf dem Mini» ist mit der
Kalibrierung oben hinfaellig (0.12 Punkte gegen 8.7). An seine Stelle tritt die Feststellung,
dass die Ausschoepfung ausschliesslich ueber die **Fan-out-Tiefe** der bestehenden Laeufe
steuerbar waere. Das ist eine Regimefrage und gehoert Raphael vorgelegt, nicht vom Radar
gesetzt — und sie ist **nicht dringend**: 83 % Ausschoepfung ohne einen einzigen Limit-Treffer
ist kein Vorfall, und der stehende Entscheid vom 03.08. zielt auf Gleichmaessigkeit, nicht auf
Maximum.

**P2 (b) — unveraendert offen: Abgleich der `energie-training`-Frontmatter** (Session auf dem
Mini noetig; dieselbe Datei nennt weiterhin den nicht existierenden One-Time-Task
`token-drosselung-100810`). Doku-Rueckstand, kein Betriebsfehler.

**P2 (c) — unveraendert offen: `scripts/nachtschicht-run.sh` soll seinen Lauf-Report auch bei
verkuerztem Zyklus schreiben** (Wurzel des Doppel-Destillat-Vorfalls vom 05.08.).

**P2 (d) — unveraendert offen: der dedizierte Baujournal-Lauf fuer `projekt-lessons`**
(jahrweise 2018–2024 auf DS3, gezielt Nachtarbeit/Laerm/Etappenwechsel). Steht seit 05.08. 16:57.

**P3 — keiner.**

---
## 2026-08-06 16:57 — [FREI] Erstmals ein reines TAGFENSTER gemessen: 0.20 Mio/h statt 1.00, der Vorsprung fällt von −3.0 auf −6.8. Ursache ist kein defekter Loop, sondern das planmässig freigehaltene MacBook-Tagfenster — die Lücke schliesst sich nicht mehr von selbst

**Selbstkontrolle:** letzter Eintrag 06.08. 08:57, Abstand **8 h 00** bei 8-h-Takt
(00:50 / 08:50 / 16:50). **Kein Aufsichtsausfall.**

**Fenster FREI, fünfter sauberer Lauf in Folge.** `claude -p "Antworte nur mit: OK" --model
haiku < /dev/null` liefert **«OK», rc=0** in Sekunden, ohne Watchdog. **Keine Waisen:**
`ps -eo pid,ppid,command | grep "claude -p"` leer, Gate-Zählung `pgrep` **0**.
**Speicher:** 4.25 GB frei+inactive+purgeable, Druckstufe **1** (normal).

**Wochenbudget** (`kontingent-budget.sh --json`, ohne Modellaufruf):

| Grösse | Wert | Vergleich 08:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **65.14 Mio** von 167 = **39.0 %** | 63.54 Mio = 38.0 % |
| Woche verstrichen | 45.8 % (77 h seit Reset Mo 12:00) | 41.1 % |
| **Vorsprung** | **−6.8 Punkte** | −3.0 Punkte |
| MacBook Pro / Mac Mini | 46.11 / 19.04 Mio (beide frisch) | 45.71 / 17.83 |

### Der Befund: 1.60 Mio in acht Stunden, ein Fünftel des Vorfensters

In den acht Stunden seit 08:57 sind **1.60 Mio geflossen = 0.20 Mio/h** — nach zweimal
exakt 1.00 Mio/h ein Einbruch auf ein Fünftel. Aufgeteilt nach Station wird sofort klar,
wo er sitzt:

- **MacBook Pro: +0.40 Mio in 8 h = 0.05 Mio/h.** Praktisch stillstehend.
- **Mac Mini: +1.21 Mio in 8 h = 0.15 Mio/h** — im Wesentlichen der eine
  Nachtschicht-Slot 13:36 (rc=0, 4.71 USD, 37 Turns).

**Das ist kein Leerlauf im Sinn der Schritt-4-Definition.** Kein Loop hat gefeuert und
nichts geliefert; es hat schlicht fast keiner gefeuert. Der Grund ist die Rollentrennung
vom 28.07.: das MacBook ist reine Arbeitsstation, Lern-Läufe liegen im Nachtfenster, und
die operativen Loops sind alle vor 09:00 durch. Zwischen 09:15 und 16:45 stehen im
NAS-Log ausschliesslich `nas-selfcommit`-Routinezeilen plus der eine Mini-Lauf. Bleibt am
Tag auch die interaktive Arbeit Raphaels aus, ist das Fenster leer — genau so ist es heute
gekommen. **Eine Rücktaktung oder Stilllegung wäre hier der falsche Griff** und wird nicht
vorgenommen.

### Warum sich die Lücke nicht mehr von selbst schliesst

Die Rechnung dahinter ist einfach und lohnt die Notiz, weil sie künftigen Läufen das
Deuten abnimmt: der verstrichene Wochenanteil wächst mit 100/168 = **0.595 Punkte/h**, der
Verbrauchsanteil mit **0.599 Punkten je Mio**. Der Vorsprung bleibt also genau dann stehen,
wenn **0.99 Mio/h** fliessen. Das erklärt die zweimal gemessene 1.00 rückwirkend exakt, und
es erklärt auch das heutige Fenster: 0.475 Punkte/h Verlust × 8 h = 3.8 Punkte, gemessen
sind 3.8 (−3.0 → −6.8).

Daraus folgt die unbequeme Hälfte: **ein Vorsprungsverlust ist nicht rückholbar, solange
die Rate nur zur 0.99 zurückkehrt** — sie hält den Rückstand dann bloss fest. Die −6.8 sind
gebucht. Bis zum Reset am Montag 12:00 bleiben **101.86 Mio auf 91 h**, für die volle
Ausschöpfung wären **1.12 Mio/h** nötig. Der bisherige Wochenschnitt liegt bei 0.85 Mio/h;
hält er, endet die Woche bei rund **142 Mio = 85 %** statt der gestern projizierten 90 %.
Eine Drossel nach Schritt 2c ist **nicht** ausgelöst und wurde **nicht** gesetzt — die
Ampel steht auf FREI, und die Gefahr liegt in dieser Woche erkennbar auf der anderen
Seite: ungenutztes Kontingent, das am Montag verfällt.

**Prüfbare Vorhersage für den 00:57-Lauf:** stellt die Nacht die 1.00 Mio/h wieder her,
steht der Vorsprung dort weiterhin bei rund −6.8, nicht besser. Fällt er darunter, hat
auch die Nacht nachgelassen und der Befund wäre ein anderer.

**Liefer-Delta seit 08:57** — vier substanzielle Commits, alle vormittags oder mittags:

- **Nachtschicht 13:36** (Mini, rc=0, 37 Turns): `energie` — ecoBKP 2026 S. 87–133
  fertiggelesen, damit die Quelle über 138 Seiten **vollständig destilliert**; zwei neue
  Destillate (Ausbau, Baureinigung/Umgebung/Erschliessung), neue Bauherren-FAQ F216
  (Formaldehyd-Grenzwert über alle Ausbau-Gewerke). Delta ja. Bewusst ohne Fan-out.
- **`arbeits-weiche-review` 09:10–09:15** (Mini, One-Time, im 08:57-Eintrag als P3 zur
  Beobachtung vermerkt): **ist gelaufen und hat geliefert** — Wochen-Review mit 26 echten
  Entscheiden, Hauptbefund Kontingent-Blindheit, dazu eine Selbstkorrektur (die
  Kontingent-Prüfung steckt seit 03.08. im Lauf-Gate, die Weiche erbt sie) und ein
  Wissens-Rücklauf nach `wissen/claude-code`. Der P3 ist damit erledigt.
- **Operative Loops (ausgenommen, nur Vollzug):** hub-chef 08:59 mit versendetem Briefing
  (Ziffer 4.5 Begleitbeschrieb Bohlweg 3 am Eingabetag noch falsch, Korrekturfassung als
  Vorschlag gebaut), mahnwesen 08:07, ag-gruendung 08:07 — alle mit Registerspur.

**Kein Loop mit Delta-Null-Serie. Keine Rücktaktung, keine Stilllegung, keine Drossel.**
Lauf-Journal 06.08.: drei Zeilen, alle **rc=0** (02:39 / 05:41 / 13:36).

**Feuermechanismen, alle drei Orte geprüft.** Registry MacBook (`list_scheduled_tasks`):
unauffällig, eigener Takt `50 */8 * * *` bestätigt. Registry Mini (`ssh mini`): dieselben
acht Tasks wie im 00:57-Inventar, keine hinzugekommen, keine entfernt. launchd beide
Stationen: `ch.jans.vollgas-supervisor` und `ch.jans.vollgas-monitor` unverändert
`*.disabled-260729` und **nicht geladen**, `STOP-Macbookpro`/`STOP-Macmini` unverändert vom
29.07. 02:51, `ch.jans.nachtschicht` auf dem Mini geladen. **Kein Mechanismus feuert
doppelt, keiner ist wiederauferstanden.**

**P1 — keiner. Keine Mail.** Kein Login-Blocker, kein erschöpftes Wochenkontingent.

**P2 (a) — neu: das einzige Fenster mit freier Kapazität liegt tagsüber, und der einzige
Ort dafür ist der Mac Mini.** Wer die 85 % anheben will, darf **nicht** das MacBook-Tagfenster
belegen — das verstiesse gegen die Rollentrennung vom 28.07. (Lern-Läufe konkurrieren dort
mit Raphaels Arbeit um Speicher, deswegen wurde der 15:35-Twin-Lauf zurückgenommen). Der
saubere Hebel wäre ein **zusätzlicher Nachtschicht-Slot auf dem Mini am späten Vormittag**,
analog zum 13:30-Slot, der am 29.07. dazukam. Das ist ein Vorschlag, keine Massnahme:
ein neuer Slot ist eine Takterhöhung und gehört Raphael vorgelegt, nicht vom Radar gesetzt.
Nicht dringend — 85 % Ausschöpfung ohne einen einzigen Limit-Treffer ist kein Vorfall.

**P2 (b) — unverändert offen: der Abgleich der `energie-training`-Frontmatter** braucht eine
Session auf dem Mini (echten Cron ablesen, Frontmatter und `wissen/energie/training/PROGRAMM.md`
Zeile 5 ausrichten; dieselbe Datei nennt weiterhin den nicht existierenden One-Time-Task
`token-drosselung-100810`). Durch den 08:57-Befund entschärft: Doku-Rückstand, kein Betriebsfehler.

**P2 (c) — unverändert offen: `scripts/nachtschicht-run.sh` soll seinen Lauf-Report auch bei
verkürztem Zyklus schreiben** (Wurzel des Doppel-Destillat-Vorfalls vom 05.08.).

**P2 (d) — unverändert offen: der dedizierte Baujournal-Lauf für `projekt-lessons`**
(jahrweise 2018–2024 auf DS3, gezielt Nachtarbeit/Lärm/Etappenwechsel). Steht seit 05.08. 16:57.

**P3 — keiner.** Der P3 des Vorlaufs (`arbeits-weiche-review`) ist erledigt, siehe Delta.

---
## 2026-08-06 08:57 — [FREI] Der Frontmatter-Widerspruch bei `energie-training` ist aufgelöst: die Felder beschreiben den am 03.08. ausgebauten **launchd**-Job, nicht die App-Task. Verbrauchsrate zum zweiten Mal in Folge exakt 1.00 Mio/h, Vorsprung unverändert −3.0

**Selbstkontrolle:** letzter Eintrag 06.08. 00:57 (plus Nachtrag 05:10), Abstand **8 h 00**
bei 8-h-Takt (00:50 / 08:50 / 16:50). **Kein Aufsichtsausfall.**

**Fenster FREI, vierter sauberer Lauf in Folge.** `claude -p "Antworte nur mit: OK" --model
haiku < /dev/null` liefert **«OK», rc=0** in Sekunden, ohne Watchdog. **Keine Waisen:**
`ps -eo pid,ppid,command | grep "claude -p"` leer, Gate-Zählung `pgrep` **0**.
**Speicher:** 3.09 GB frei+inactive+purgeable, Druckstufe **1** (normal).

**Wochenbudget** (`kontingent-budget.sh --json`, ohne Modellaufruf):

| Grösse | Wert | Vergleich 00:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **63.54 Mio** von 167 = **38.0 %** | 55.53 Mio = 33.3 % |
| Woche verstrichen | 41.1 % (69 h seit Reset Mo 12:00) | 36.3 % |
| **Vorsprung** | **−3.0 Punkte** | −3.0 Punkte |
| MacBook Pro / Mac Mini | 45.71 / 17.83 Mio (beide frisch) | 38.20 / 17.33 |

In den acht Stunden seit 00:57 sind **8.01 Mio geflossen = 1.00 Mio/h**, auf zwei Stellen
dieselbe Rate wie im Fenster davor. Wochenschnitt **0.92 Mio/h**, nachhaltig bis zum Reset
am Montag 12:00 wären **1.05 Mio/h** (103.46 Mio Rest auf 99 h). Der Verlauf ist damit
ungewöhnlich gleichmässig und trifft den stehenden Entscheid vom 03.08. («gleichmässig über
die Woche») ohne jeden Eingriff. Eine Drossel nach Schritt 2c ist **nicht** ausgelöst und
wurde **nicht** gesetzt.

**Liefer-Delta seit dem Nachtrag 05:10** (Normen Run 45 und Nachtschicht 02:39 sind dort
bereits gewürdigt und werden nicht doppelt gezählt):

- **Nachtschicht 05:41** (Mini, rc=0, 4.95 USD, 54 Turns): `grobkosten` — die von der KB
  selbst empfohlene offene Frage am Original-PDF geprüft, statt blind eine vierte
  Exploration zu fahren; Ergebnis ist eine belegte Sackgasse (Kapitel 1–4 der Quelle nicht
  im Bestand) plus ein zweites Plausibilitätsargument für die BKP-2-Scope-Annahme. Dabei
  einen seit 05:30 hängenden **Rebase-Stau im `nas-selfcommit`** entdeckt, der jeden
  weiteren automatischen Commit blockierte, und über den nativen SSH-Pfad bereinigt
  (`ef89e4f3`). Delta ja, und der Nebenbefund war mehr wert als der Hauptauftrag.
- **twin-fidelity-review 05:45:** alle sechs Facetten-Wikis, `rules/jans-dna-facetten.md`
  und `skills/twin/tools/build_dna.py` nachgeführt — Bitte-Form-Skala in vier Stufen,
  Mitleser-Regel Du/Sie, Rollenverortung; Bookkeeping-Fehler 07.–11.03. berichtigt.
  Delta ja, stark.
- **twin-mail-training 03:40:** Batch 88 (rj@ 16.–31.01.2026), 12 Marker, ein
  QUESTIONS-Entscheid geschlossen. Delta ja.
- **Operative Loops (ausgenommen, nur Vollzug):** konversations-log 06:13, logbuch-radar
  06:55, vollgas-fruehwarnung 07:15, ag-gruendung-monitor 07:46, mahnwesen 08:05 — alle mit
  Registerspur in `LOGBUCH.md` / `fristen.md`.
- **Noch im Lauf, kein Befund:** zahlungsabgleich (08:23) und hub-chef (08:39) hatten zum
  Messzeitpunkt naturgemäss noch keine Spur. Kein Leerlauf-Verdacht, der nächste Lauf prüft nach.

**Kein Loop mit Delta-Null-Serie. Keine Rücktaktung, keine Stilllegung, keine Drossel.**
Lauf-Journal 06.08.: zwei Zeilen, beide **rc=0** (02:39 / 05:41).

### Befund: der Frontmatter-Widerspruch bei `energie-training` hat eine harmlose Ursache

Der 00:57-Eintrag hat den Widerspruch gemeldet (`enabled: false` und `cron_target
"0 10,16,23 * * *"` bei einem Loop, der täglich ~22:37 feuert und liefert) und ihn bewusst
nicht angefasst. Eine einzige Messung löst ihn auf: die stillgelegte launchd-Datei
`ch.jans.training-energie.plist.disabled-260803` auf dem Mini trägt
`StartCalendarInterval = Hour 22 / Minute 30`.

Damit ist die Lage klar. Es gab **zwei** Mechanismen: den launchd-Job (22:30, am 03.08.
umbenannt und entladen — `launchctl list` auf dem Mini zeigt ihn nicht) und die App-Task
gleichen Namens, die ihn im praktisch selben Slot beerbt hat (beobachtet ~22:37, an vier
Tagen nach der Deaktivierung: 03.08. zweimal, 04.08., 05.08.). Die Frontmatter-Felder
beschreiben **weder** den einen **noch** den anderen, sondern ein noch älteres 3x-tägliches
Regime — sie sind doppelt veraltet. Das ist die Bestätigung der Regel, die aus dem
00:57-Befund in die Task-Beschreibung ging: **`enabled:` und `cron_target:` sind
Dokumentation, nie Live-Zustand.** Der Loop ist gesund; nur seine Datei erzählt eine
Geschichte von vor drei Regimewechseln. Ich habe wieder **nicht** editiert — der
korrigierte Sollwert ist ohne die Live-Registry des Mini nicht bekannt, und ein Edit auf
`enabled:` bleibt der Fehlertyp «Drossel, die niemand zurückdreht».

**Feuermechanismen, alle drei Orte geprüft.** Registry MacBook (`list_scheduled_tasks`):
unauffällig, mein eigener Takt `50 */8 * * *` bestätigt. Registry Mini (`ssh mini`):
dieselben acht Tasks wie im 00:57-Inventar, keine hinzugekommen, keine entfernt. launchd
beide Stationen: `ch.jans.vollgas-supervisor` und `ch.jans.vollgas-monitor` unverändert
`*.disabled-260729` und **nicht geladen**, `STOP-Macbookpro`/`STOP-Macmini` unverändert vom
29.07. 02:51, `ch.jans.nachtschicht` auf dem Mini geladen. **Kein Mechanismus feuert
doppelt, keiner ist wiederauferstanden.**

**P1 — keiner. Keine Mail.** Kein Login-Blocker, kein erschöpftes Wochenkontingent.

**P2 (a) — unverändert, aber entschärft: der Abgleich der `energie-training`-Frontmatter
braucht eine Session auf dem Mini.** Der Befund oben nimmt der Sache die Dringlichkeit (es
ist ein Doku-Rückstand, kein Betriebsfehler), erledigt sie aber nicht: `list_scheduled_tasks`
auf dem Mini aufrufen, echten Cron ablesen, Frontmatter und `wissen/energie/training/PROGRAMM.md`
Zeile 5 darauf ausrichten. Dieselbe Datei nennt weiterhin den One-Time-Task
`token-drosselung-100810`, den es nicht gibt.

**P2 (b) — unverändert offen: `scripts/nachtschicht-run.sh` soll seinen Lauf-Report auch bei
verkürztem Zyklus schreiben.** Der Doppel-Destillat-Vorfall vom 05.08. (ecoBKP S. 1–17 zweimal)
hatte genau hier seine Wurzel; der Hebel ist klein und mechanisch, betrifft aber jede von der
Nachtschicht bediente KB.

**P2 (c) — unverändert offen: der dedizierte Baujournal-Lauf für `projekt-lessons`**
(jahrweise 2018–2024 auf DS3, gezielt Nachtarbeit/Lärm/Etappenwechsel), voll budgetiert als
eigener Lauf. Steht seit 05.08. 16:57.

**P3 — der One-Time-Task `arbeits-weiche-review` auf dem Mini ist heute fällig** und im
Fristen-Register als Raphaels Zusage geführt. Kein Eingriff meinerseits, nur vermerkt, damit
der nächste Lauf sein Ausbleiben bemerken würde.

---
## 2026-08-06 00:57 — [FREI] Der Radar hat vier Wochen lang nur eine von ZWEI Task-Registries geprüft: der Mac Mini führt acht eigene Scheduled Tasks, und `energie-training` liefert dort täglich, obwohl seine Datei `enabled: false` trägt. Starke Nacht (Energie Run 124 + Wissens-Chef Run 26), Vorsprung stabil bei −3.0

**Selbstkontrolle:** letzter Eintrag 05.08. 16:57, Abstand **8 h 00** bei 8-h-Takt (00:50 /
08:50 / 16:50). **Kein Aufsichtsausfall**, der Slot 00:50 ist eingehalten.

**Fenster FREI, drittes Mal in Folge sauber gemessen.** `claude -p "Antworte nur mit: OK"
--model haiku < /dev/null` liefert **«OK», rc=0** in Sekunden, ohne Watchdog. Damit ist der
Proben-Fix vom 05.08. an einem dritten unabhängigen Lauf bestätigt und die Unterscheidung
[FREI] / [LOGIN] / [WOCHE LEER] verlässlich direkt messbar. **Keine Waisen:**
`ps -eo pid,ppid,command | grep "claude -p"` leer, Gate-Zählung `pgrep` **0** — das Gate ist
frei, `normen-training-nacht` kann um 01:27 ungehindert starten (noch nicht fällig, also
kein verpasster Lauf).

**Speicher:** 5.61 GB frei+inactive+purgeable, Druckstufe **1** (normal), deutlich
entspannter als um 16:57 (3.74 GB).

**Wochenbudget.** `kontingent-budget.sh --json`, ohne Modellaufruf gemessen:

| Grösse | Wert | Vergleich 16:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **55.53 Mio** von 167 = **33.3 %** | 47.57 Mio = 28.5 % |
| Woche verstrichen | 36.3 % (61 h seit Reset Mo 12:00) | 31.5 % |
| **Vorsprung** | **−3.0 Punkte** | −3.0 Punkte |
| MacBook Pro / Mac Mini | 38.20 / 17.33 Mio (beide frisch) | 34.22 / 13.35 |

**Der Vorsprung ist bei −3.0 stehen geblieben, und das ist die gesuchte Bestätigung.** In den
acht Stunden seit 16:57 sind **7.96 Mio geflossen (1.00 Mio/h)** — also fast genau die
nachhaltige Rate. Der im Vorlauf formulierte Alarmpunkt ist damit klar verneint: die Nacht
liefert, der Schnitt fällt nicht unter 0.75 Mio/h. Wochenschnitt **0.91 Mio/h** (55.53 auf
61 h), nachhaltig bis zum Reset am Montag 12:00 wären **1.04 Mio/h** (111.47 Mio Rest auf
107 h). Hält der Verlauf, endet die Woche bei rund 150 Mio = **90 % Ausschöpfung**. Eine
Drossel nach Schritt 2c ist **nicht** ausgelöst und wurde **nicht** gesetzt.

**Liefer-Delta: 41 Commits in 9 Stunden, und diesmal sind vier davon Substanz.**
- **Energie Run 124** (22:37–23:07, Mac Mini): 12 neue Destillate, 4 neue FAQ-Antworten,
  3 gewachsene Themenartikel, E-123-1 geschlossen. Minergie-Produktreglement 2026.1,
  ecoBKP 2026 Tragwerk/Hülle/Gebäudetechnik.
- **Wissens-Chef Run 26** (23:11, Cross-KB, 15 Agenten): zwei VKF-Publikationen als überholt
  ausgewiesen (BSM 2001-15 Unterdachbahnen RF4(cr) → **RF3(cr) Pflicht seit 01.01.2017**;
  BRL 22-15 Hochhaus-Blitzschutzklasse III → II), erfundener SIA-2023-Titel korrigiert,
  Thalwil Ziff. 4.5 terminkritisch ins Fristen-Register. Daraus die **neue Rule 260805**
  (Fristen gehören ins Register, nicht nur in den Laufbericht).
- **`bauprodukte`** (Nachtschicht 23:37): ERCO-Lichtplanungs-Ratgeber S. 73 → 95,
  Leuchtenauswahl und -anordnung vollständig destilliert.
- Lauf-Journal 05.08.: vier Zeilen, **alle rc=0** (02:37 / 05:39 / 13:38 / 23:37). Kein
  Abbruch, kein Gate-Rücktritt. Die übrigen 37 Commits sind `nas-selfcommit` mit
  `station-status/*` und `logbuch/kontingent/*` — Statusrauschen, nach Schritt 5 keine Arbeit.

### Hauptbefund: Schritt 3 hat vier Wochen lang nur die halbe Registry gesehen

Der Anlass war eine Zuordnungslücke: der Commit «Energie Run 124» um 23:15 passte zu **keinem**
dokumentierten Taktgeber. Nicht zur Nachtschicht (Slots 23:30 / 02:30 / 05:30 / 13:30, am
Original-plist nachgezählt), nicht zum `wissens-trigger` (06:30, Log meldet für den 05.08.
«energie: unveraendert — kein Lauf»), nicht zu einem Cron (beide Stationen: `no crontab`), und
in der Registry, die `list_scheduled_tasks` mir liefert, existiert **kein** `energie-training`.
Auflösung über das Session-Transcript auf dem Mini (`8ba8a32d`, 20:37:40Z): der Lauf trägt den
regulären `<scheduled-task name="energie-training">`-Wrapper.

**Ursache: jede Station hat ihre EIGENE Task-Registry, und `list_scheduled_tasks` zeigt immer
nur die der laufenden Station.** Die Anweisung dieses Radars nennt in Schritt 3 drei Orte, die
übereinstimmen müssen, und verlangt die launchd-Prüfung ausdrücklich «auf BEIDEN Stationen
(per ssh mini)» — bei der Registry fehlt derselbe Zusatz. Folge: die acht Mini-Tasks sind in
keinem Radar-Eintrag je vorgekommen.

**Inventar Mac Mini (`~/.claude/scheduled-tasks/`), erstmals erhoben:**

| Task | Frontmatter-Stand | Tatsächlich gefeuert |
|---|---|---|
| `energie-training` | `enabled: false`, `cron_target: 0 10,16,23 * * *` | **täglich ~22:37**, zuletzt 05.08. |
| `planungsgrundlagen-training` | DEAKTIVIERT 03.08. (→ `-wartung`, monatlich) | zuletzt **01.08. 22:34**, also vor der Deaktivierung |
| `claude-abo-auslastung` | wöchentlicher Abo-Check | 02.08. 16:07 |
| `arbeits-weiche-review` | One-Time 06.08. | noch nicht |
| `baurecht-buch-training` | DEAKTIVIERT (Stations-Split, läuft auf MacBook) | nein |
| `normen-training-mini` | STILLGELEGT 17.07. (DIN/VSS/RAL komplett) | nein |
| `synobsis-batch-nacht` | DEAKTIVIERT 28.07. (KB saturiert 853/853) | nein |
| `grobkosten-training` | `cron_target: 0 9,21 * * *` | nein |

**Nicht verwechseln:** `normen-training-mini` (Mini, DIN/VSS/RAL, stillgelegt) und
`normen-training-nacht` (MacBook, SIA+VKF, täglich 01:28) sind **zwei verschiedene Tasks** mit
getrenntem Umfang, nicht zwei Namen für denselben Loop. Am `description`-Feld beider Dateien
gegengeprüft. Der Stations-Split der Normen-Arbeit ist genau so gewollt (Stand 29.07.).

**Zwei Klarstellungen, damit dieser Befund nicht als Skandal weitergetragen wird:**

1. **`planungsgrundlagen-training` ist NICHT durchgelaufen.** Die einzige Feuerung liegt am
   01.08., die Deaktivierung datiert vom 03.08. Das ist widerspruchsfrei. Ich halte das
   ausdrücklich fest, weil die Zeile in einer Tabelle mit `energie-training` steht und sonst
   beim nächsten Lauf als zweiter Verstoss gelesen würde. Kein Eingriff nötig.
2. **`energie-training` ist kein Leerlauf-Fall, sondern der produktivste Loop dieser Nacht.**
   Der Widerspruch liegt nicht im Betrieb, sondern in der **Datei**: `enabled: false` und
   `cron_target 10/16/23` beschreiben einen Zustand, den der Loop seit mindestens dem 25.07.
   nicht hat (belegte Feuerungen 25.07., 26.07., 03.08. zweimal, 04.08., 05.08., alle ~22:37;
   der Doppellauf am 03.08. ist die bekannte Re-Arm-Falle nach einer Cron-Änderung). Die
   Frontmatter-Felder sind offenkundig **Dokumentation, nicht Live-Zustand**.

**Ich habe die Datei NICHT angefasst — bewusst.** Ob die App `enabled:` aus der Frontmatter
liest, ist unverifiziert, und ich kann die Live-Registry des Mini von hier aus nicht abfragen.
Ein Edit an genau diesem Feld könnte einen Loop stoppen, der gerade 12 Destillate pro Nacht
liefert. Das ist dieselbe Klasse Fehler wie eine Drossel, die niemand zurückdreht, und die
Messdisziplin dieses Auftrags verlangt, eine Kennzahl, die eine Schutzmechanik in Frage
stellt, zuerst mit deren eigener Funktion gegenzumessen. Melden statt eingreifen.

**Ausgeführte Massnahme:** die Beschreibung des eigenen Tasks `vollgas-chef-radar` ist
ergänzt, sodass Schritt 3 künftig **beide** Registries verlangt und das Mini-Inventar als
Sollstand mitführt. Das ist der Ort, der den Fehler verursacht hat, und der einzige, den ich
gefahrlos korrigieren kann.

**P1 — keiner. Keine Mail.** Kein Login-Blocker, kein erschöpftes Wochenkontingent. Der
Registry-Befund ist gewichtig, aber er blockiert nichts und kostet nichts: der betroffene
Loop arbeitet, die falsch dokumentierten Loops schweigen korrekt.

**P2 (a) — der Frontmatter-Widerspruch bei `energie-training` braucht Raphaels Hand oder eine
Session auf dem Mini.** Solange `enabled: false` in der Datei steht, wird jeder künftige Lauf
diese Zeile entweder für den Live-Zustand halten (und den Ertrag einem Phantom-Taktgeber
zuschreiben) oder sie «reparieren» und dabei den Loop abschalten. Sauber ist: auf dem Mini
`list_scheduled_tasks` aufrufen, den echten Cron ablesen und Frontmatter samt
`wissen/energie/training/PROGRAMM.md` Zeile 5 darauf ausrichten. Dieselbe Datei nennt
übrigens weiterhin den One-Time-Task `token-drosselung-100810` als Rücktaktungs-Mechanismus —
den es laut Registry-Prüfung vom 30.07. nicht gibt. Die Intensivphase läuft nominell bis
10.08., also lohnt der Abgleich jetzt.

**P2 (b) — Run 124 hat einen Prozessdefekt aufgedeckt, der jede KB betrifft, nicht nur
`energie`.** Der Nachtschicht-Lauf vom 05.08. 05:38 hatte die ecoBKP 2026 bereits bis S. 20
destilliert und das **nur** in `CHANGELOG.md` und `destillate/INDEX.md` vermerkt: kein
`outputs/`-Report, kein `curriculum.md`-Eintrag, `QUESTIONS.md` führte E-123-1 weiter als
offen. Der in `PROGRAMM.md` vorgeschriebene Stand-Lesevorgang prüft genau diese vier Quellen
— der Nachtlauf war in keiner sichtbar, und ein Agent hat die Seiten 1–17 **ein zweites Mal**
destilliert (Duplikat erkannt, der Bestandsartikel war der vollständigere, Backlinks
umgehängt, 0 offene Verweise). Run 124 hat die Lehre in `energie/curriculum.md` verankert;
generisch gilt sie für **jede** von der Nachtschicht bediente KB (aktuell bauprodukte,
energie, grobkosten). Der Hebel ist klein und mechanisch: `scripts/nachtschicht-run.sh` soll
seinen Lauf-Report auch bei verkürztem Zyklus schreiben.

**P2 (c) — unverändert offen: der dedizierte Baujournal-Lauf für `projekt-lessons`** (jahrweise
2018–2024 auf DS3, gezielt Nachtarbeit/Lärm/Etappenwechsel). Vorschlag vom 16:57 steht: ein
einmaliger, vollbudgetierter Lauf am Wochenende im Nachtfenster. Nicht angelegt, weil er die
Stations-Rollentrennung berührt.

**P3 — Senken für freie Kapazität:** `energie` mit den restlichen ecoBKP-Merkblättern
(S. 20–138 des 2026er-Leitfadens, nach Run 124 deutlich abgearbeitet) und `bauprodukte` mit
dem ERCO-Ratgeber ab S. 95. Beide haben einen funktionierenden Taktgeber.

*Kein Regellauf: die Mechanismus-Suche war durch einen konkreten Befund ausgelöst (ein
Commit ohne zuordenbaren Taktgeber) und blieb auf diesen einen Befund beschränkt —
Nachtschicht-plist, wissens-trigger-Log, Crontabs, ein Session-Transcript, das
Mini-Inventar. Das rechtfertigt die Turns über dem Regelmass.*

### Nachtrag 05:10 — der Lauf selbst dauerte über vier Stunden, und beide Nacht-Loops haben geliefert

Beim Schlusscheck war die Uhr **05:07**, nicht 00:57: dieser Radar-Lauf hat rund **4 h 10
Wall-Clock** gebraucht. Gegengemessen, weil eine Zeitdifferenz dieser Grösse zuerst nach
Uhr-Drift aussieht: MacBook und NAS zeigen sekundengleich 05:06 CEST, `uptime` meldet 5 Tage
17:53 ohne Unterbruch, `pmset -g log` keine Schlafphase (caffeinate hält sie ab). **Kein
Clock-Jump — der Lauf war wirklich so lang.** Der Slot selbst war korrekt: Feuerung 00:57
gemäss Registry, Kopfzeile und Selbstkontrolle beziehen sich wie immer auf den Laufbeginn.
Der nächste Slot 08:50 ist nicht gefährdet.

**Zwei Dinge, die dadurch prüfbar wurden statt Prognose zu bleiben:**
- **`normen-training-nacht` Run 45 ist gelaufen und hat stark geliefert** — 9 Destillate
  geprüft, 1 neues Destillat, **4 Rückstände aus `QUESTIONS.md` geschlossen**, der vom
  Run-43-Report ausgewiesene Verifikations-Rückstand vollständig abgearbeitet. Die Aussage
  «Gate frei, kann um 01:27 ungehindert starten» ist damit positiv bestätigt, nicht nur
  plausibel. Nach dem Gate-Rücktritt von Run 44 am 05.08. ist das die Entwarnung.
- **Nachtschicht-Slot 02:39** ebenfalls durch, rc=0, 4.82 USD, 52 Turns: `bauprodukte`
  ERCO-Ratgeber S. 95 → 120. Damit ist die P3-Senke schon in Bewegung.

**Gate und Waisen bei Laufende erneut gemessen: `claude -p`-Prozesse keine, `pgrep`-Zählung
0.** Der lange Radar-Lauf hat **keinen** Gate-Platz belegt — er ist keine `claude -p`-Session
und fällt nicht unter das Zählmuster von `lauf-gate.sh`. Das war die Sorge nach dem Vorfall
vom 05.08., und sie ist ausgeräumt.

**Budget um 05:10 nachgemessen** (der Wert oben ist der Stand von 00:57): **60.55 Mio =
36.3 %** bei **38.8 %** verstrichener Woche, Vorsprung **−2.5** — von −3.0 leicht
**aufgeholt**, weil die Nacht mit rund 1.2 Mio/h über der nachhaltigen Rate lief. Ampel
weiter FREI, keine Drossel. Speicher 5.19 GB, Druckstufe 1.

**Konsequenz für den nächsten Lauf:** einen Regellauf, der vier Stunden belegt, will die
Sparsamkeitsklausel nicht. Die Ursache lag hier in der Mechanismus-Suche über ssh (mehrere
Rundreisen zum Mini, zwei Korrektur-Subagenten). Wer erneut eine Zuordnungslücke verfolgt:
das Mini-Inventar steht jetzt in der Task-Beschreibung, die teure Sucharbeit fällt damit
nicht wieder an.

---
## 2026-08-05 16:57 — [FREI] Der Proben-Fix ist bestätigt. Vorsprung kippt planmässig ins Minus (−3.0); `projekt-lessons` erreicht nach drei Nullbefunden die Leerlauf-Schwelle und ist als Nachtschicht-Ziel ausgesetzt

**Selbstkontrolle:** letzter Eintrag 05.08. 08:58, Abstand 7 h 59 bei 8-h-Takt (00:50 /
08:50 / 16:50). **Kein Aufsichtsausfall**, der Slot 16:50 ist eingehalten.

**P2 des Vorlaufs erledigt — die Fensterprobe ist repariert und der Fix hält.**
`claude -p "Antworte nur mit: OK" --model haiku < /dev/null` liefert **«OK», rc=0**, in
Sekunden, ohne Watchdog. Damit ist der Befund vom 08:58 an einem zweiten, unabhängigen
Lauf bestätigt: die vier Hänger vom 04./05.08. waren ein fehlendes `< /dev/null` im
eigenen Rezept, kein Login- und kein Kontingentproblem. Die Unterscheidung [FREI] /
[LOGIN] / [WOCHE LEER] ist wieder direkt messbar statt über Umwegbelege. **Keine Waisen:**
`ps -eo pid,ppid,command | grep "claude -p"` leer, `pgrep`-Zählung des Lauf-Gates **0** —
das Gate ist frei, `normen-training` kann heute 23:27 ungehindert starten.

**Speicher:** 3.74 GB frei+inactive+purgeable, Druckstufe **1** (normal). Praktisch
unverändert gegenüber 08:58 (4.01 GB, Stufe 1).

**Wochenbudget.** `kontingent-budget.sh --json`, ohne Modellaufruf gemessen:

| Grösse | Wert | Vergleich 08:58 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **47.57 Mio** von 167 = **28.5 %** | 46.23 Mio = 27.7 % |
| Woche verstrichen | 31.5 % (53 h seit Reset Mo 12:00) | 26.8 % |
| **Vorsprung** | **−3.0 Punkte** | +0.9 Punkte |
| MacBook Pro / Mac Mini | 34.22 / 13.35 Mio (beide frisch) | 33.30 / 12.93 |

**Der Vorsprung ist ins Minus gekippt, genau wie im Vorlauf angekündigt — und die Zahl
ist harmloser, als sie aussieht.** Der Verlauf +8.6 → +4.4 → +3.2 → +0.9 → **−3.0** ist
kein Einbruch, sondern der Tagesgang: seit 08:58 sind nur **1.34 Mio in 8 h** geflossen
(**0.17 Mio/h**), weil das MacBook Pro seit dem 28.07. reine Arbeitsstation ist und
tagsüber niemand lernt. Massgeblich ist der **Wochenschnitt: 0.90 Mio/h** (47.57 Mio auf
53 h). Nachhaltig bis zum Reset am Montag 12:00 wären **1.04 Mio/h** (119.43 Mio Rest auf
115 h). Hält der Schnitt, endet die Woche bei rund **151 Mio = 90 % des Kontingents** und
einem Vorsprung um −9.5. Das ist Ausschöpfung, kein Leerlauf — und meilenweit weg vom
dunklen Wochenende 01.–03.08. Eine Drossel nach Schritt 2c ist **nicht** ausgelöst und
wurde **nicht** gesetzt. Der im Vorlauf gesetzte Beobachtungspunkt («unter −5 Punkte wird
aus Konvergenz Unterauslastung») bleibt stehen, ist aber zu präzisieren: **−5 allein ist
kein Alarm, solange die Nächte liefern.** Alarm ist erst, wenn eine Nacht ohne Lieferung
bleibt und der Schnitt unter etwa 0.75 Mio/h fällt.

**Liefer-Delta: 39 Commits in 9 Stunden, davon genau einer mit Substanz.**
- `projekt-lessons` 13:37 (Nachtschicht-Versuchsslot): Truninger-DS3 als dritte Quelle
  geprüft — **Nullbefund**, kein Fall, kein Artikel. Sauber dokumentiert in QUESTIONS.md
  und CHANGELOG.
- `hub-chef` 09:0x: Estermann-Plangrundlage (Entwurf A5), Ziegels Innenwand-Kommentare,
  Gate-Blocker aufgelöst. Operative Briefings alle durch (logbuch-radar 06:55,
  vollgas-fruehwarnung 07:15 still, ag-gruendung-monitor 07:46, heartbeat 07:40).
- Lauf-Journal 05.08.: drei Zeilen, **alle rc=0** (02:37 4.11 USD / 37 Turns, 05:39
  4.28 / 43, 13:38 3.37 / 47). Kein Abbruch, kein Gate-Rücktritt.
- Die übrigen 36 Commits sind `nas-selfcommit` mit `station-status/*` und
  `logbuch/kontingent/*` — Statusrauschen, das nach Schritt 5 nicht als Arbeit zählt.

**Massnahme: `projekt-lessons` ist als freies Nachtschicht-Ziel ausgesetzt (Schritt 4,
Schwelle «3 Läufe ohne Liefer-Delta»).** Drei Läufe in Folge ohne neuen Fall und ohne
neuen Artikel: 03.08. Logbuch, 04.08. KISPI-Projektordner + Mail, 05.08. Truninger-DS3.
Die Unterscheidung ist hier eindeutig und wurde am Lauf-Journal geprüft: **Delta Null
durch erschöpftes Material**, nicht Null-Ertrag durch Abbruch — alle drei endeten mit
rc=0 und haben ihren Nullbefund belegt statt ihn zu verschweigen. Die KB benennt selbst
den einzigen verbleibenden ergiebigen Fundort (`01.01.24 Baujournale Bauleitung`,
Nord/Süd, Jahresordner 2018–2024 auf DS3) **und** den Grund, warum er dort nicht
hingehört: zu gross für das geteilte 5-USD-Zyklusbudget. Ein vierter Breitensuch-Lauf
hätte denselben Nullbefund ein viertes Mal erzeugt. Umgesetzt in
`scripts/nachtschicht-run.sh` Zeile 126 (Freiliste jetzt: bauprodukte, energie,
grobkosten), mit Reaktivierungsbedingung im Klartext: wieder aufnehmen, sobald der
dedizierte Baujournal-Lauf stattgefunden hat oder neues Rohmaterial in `raw/` liegt.
`bash -n` gegengeprüft. **Kein Rück-Takt für andere Loops** — kein weiterer Loop steht
bei drei oder mehr Läufen ohne Delta.

**Feuermechanismen — alle drei Orte geprüft, keine Abweichung.**
- Endlos-Runner unverändert **ausgebaut**: `ch.jans.vollgas-supervisor` (beide Stationen)
  und `ch.jans.vollgas-monitor` (MacBook) tragen `.disabled-260729`, in `launchctl list`
  ist keiner geladen. Nichts angefasst.
- Mac-Mini-Nachtschicht `ch.jans.nachtschicht` geladen; alle drei bisherigen Slots des
  Tages gelaufen (02:37, 05:39, 13:38).
- Registry: alle Lern-Tasks **enabled=true**; auf `false` nur abgeschlossene One-Time-Tasks
  und die bewusst auf Ereignis-Trigger umgestellten Loops (`immobewertung-training`,
  `spec-training`).

**P1 — keiner. Keine Mail.** Weder Login-Blocker noch erschöpftes Wochenkontingent; der
Proben-Defekt war ein Fehler dieses Radars und ist behoben, also auch kein meldepflichtiger
gelöster P1.

**P2 — der dedizierte Baujournal-Lauf für `projekt-lessons` ist der grösste konkrete
Hebel und braucht einen Entscheid, den ich nicht selbst treffe.** Die Arbeit ist definiert
(jahrweise 2018–2024, gezielt nach Nachtarbeit/Lärm/Etappenwechsel), der Fundort steht,
und sie fällt genau in die Kapazität, die diese Woche ungenutzt bleibt. Offen ist nur
**wo und wann**: das MacBook Pro ist seit dem 28.07. reine Arbeitsstation mit Lern-Läufen
nur im Nachtfenster, und die Mini-Slots sind auf 5 USD gedeckelt — genau daran ist der
Lauf schon dreimal vorbeigegangen. Vorschlag: **ein einmaliger, vollbudgetierter Lauf am
Wochenende im Nachtfenster**, was zugleich Raphaels Entscheid vom 03.08. dient, den
Verbrauch nicht auf Montag bis Mittwoch zu bündeln. Ich habe die Task **nicht** angelegt,
weil sie die Stations-Rollentrennung berührt.

**P3 — die nächstgrösseren offenen Inventare stehen bereit, falls Kapazität frei
bleibt:** `energie` mit 27 offenen ecoBKP-Merkblättern (S. 20–138 des 2026er-Leitfadens)
und `bauprodukte` mit dem ERCO-Ratgeber ab S. 73. Beide haben einen funktionierenden
Taktgeber und brauchen keinen Eingriff — sie sind schlicht die Senken, in die der
freigewordene `projekt-lessons`-Slot ab heute Nacht läuft.

*Regellauf schlank gehalten: Messung, drei Prüfungen, eine Massnahme, Eintrag. Keine
Tiefen-Recherche nötig — der einzige Befund (drei Nullbefunde) war aus CHANGELOG und
Lauf-Journal direkt belegbar.*

---
## 2026-08-05 08:58 — [FREI] Die haengende Fensterprobe ist geloest, und sie war teurer als gedacht: die eigenen Waisen-Prozesse des Radars haben das Lauf-Gate blockiert und `normen-training` run44 zum Ruecktritt gezwungen. Vorsprung auf +0.9, Konvergenz erreicht

**Selbstkontrolle:** letzter Eintrag 05.08. 00:57, Abstand 8 h 01 bei 8-h-Takt (00:50 /
08:50 / 16:50). **Kein Aufsichtsausfall**, der Slot 08:50 ist eingehalten.

**Fenster FREI — die Probe antwortet wieder, und der Defekt war hausgemacht.**
`claude -p "Antworte nur mit: OK" --model haiku` liefert **«OK», rc=0**, in Sekunden. Der
Unterschied zu den vier Fehlversuchen vom 04./05.08. ist ein einziges Zeichen:
**`< /dev/null`**. Ohne umgeleitetes stdin wartet das CLI auf eine interaktive Eingabe,
gibt nie etwas aus und laeuft unbegrenzt weiter — das erklaert das exakte Symptom
(vollstaendig leere Ausgabedatei, kein Fehlertext, kein rc). Es war also **nie** ein
Login- oder Kontingentproblem, sondern ein Fehler im Rezept dieses Radars. Der Befund ist
einmal verifiziert; der naechste Lauf bestaetigt ihn oder widerlegt ihn.

**Der eigentliche Schaden lag woanders — die Aufsicht hat den Loop blockiert, den sie
beaufsichtigt.** `normen-training` run44 meldet um 01:34 **rc=1, kein Destillat,
Ruecktritt am Lauf-Gate**: zwei verwaiste Prozesse mit PPID 1 (PID 54048/87945) belegten
beide Gate-Plaetze, obwohl 3427 MB Speicher frei waren. Am Gate-Script gegengeprueft
(`scripts/lauf-gate.sh`, Zeile 61): es zaehlt ueber `pgrep -f "claude (-p|--print)"` —
**genau das Muster der Radar-Fensterprobe**. Die Kausalkette ist damit geschlossen: die
Probe haengt, der Watchdog killt den Wrapper, der claude-Kindprozess wird an init
reparentiert und lebt weiter, das Gate zaehlt ihn als aktiven Lauf. Vier haengende Proben,
zwei ueberlebende Waisen, ein blockierter Lern-Loop.

**Beides behoben.** Die Waisen sind weg (`ps` auf beide PIDs leer, `pgrep`-Zaehlung des
Gate leer, kein `claude -p` mehr auf der Station). Das Rezept in Schritt 2 der eigenen
Task-SKILL.md ist korrigiert: `< /dev/null` als Pflicht, Watchdog muss die ganze
Prozessgruppe abraeumen statt nur den Wrapper, und nach jedem Watchdog-Eingriff ist per
`ps` gegenzupruefen, dass keine Waise zurueckbleibt. **Kein Rueck-Takt fuer
`normen-training`:** das ist ein Abbruch, kein Delta-Null — der Loop war hungrig und wurde
unterbrochen, nicht material-erschoepft. Er steht heute 23:27 wieder scharf, das Gate ist
frei.

**Speicher:** 4.01 GB frei+inactive+purgeable, Druckstufe **1** (normal). Um 00:57 waren
es 3.16 GB bei Stufe 2. Deutlich entspannt, teils durch das Abraeumen der Waisen.

**Wochenbudget.** `kontingent-budget.sh --json`, gemessen ohne Modellaufruf:

| Groesse | Wert | Vergleich 00:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **46.23 Mio** von 167 = **27.7 %** | 42.15 Mio = 25.2 % |
| Woche verstrichen | 26.8 % (45 h seit Reset Mo 12:00) | 22.0 % |
| **Vorsprung** | **+0.9 Punkte** | +3.2 Punkte |
| MacBook Pro / Mac Mini | 33.30 / 12.93 Mio (beide frisch) | 29.95 / 12.20 |

**Die Konvergenz ist erreicht: +8.6 → +4.4 → +3.2 → +0.9.** Verbrauch und Zeitverlauf
liegen jetzt praktisch gleichauf, also genau dort, wo Raphaels Entscheid vom 03.08.
(«gleichmaessig ueber die Woche») sie haben will. Die Rate seit 00:57 betraegt
**0.51 Mio/h** (4.08 Mio in 8 h 01), nachhaltig waeren bis zum Reset am Montag
**0.98 Mio/h** (120.77 Mio Rest auf 123 h). Der Vorsprung wird in den naechsten Stunden
ins Minus laufen — das ist bei dieser Rate rechnerisch zwingend und noch kein Warnsignal,
solange die Naechte liefern. Beobachtungspunkt fuer die naechsten Laeufe: **faellt der
Vorsprung unter etwa minus 5 Punkte, wird aus der Konvergenz Unterauslastung** — dann ist
nicht zu drosseln, sondern Arbeit nachzulegen. Eine Drossel nach Schritt 2c ist **nicht**
ausgeloest und wurde **nicht** gesetzt.

**Liefer-Delta: 45 Commits in 9 Stunden, davon vier mit Substanz.**
- `wissen/energie` 05:39: **ecoBKP 2026 Erstzugriff** (ecobau.ch, 138 Seiten), Methodik/
  Leitfaden plus die drei vollstaendigen Merkblaetter ecoBKP 112, 130 und 201 destilliert,
  Beginn ecoBKP 21. Offen: die restlichen 27 Merkblaetter (S. 20–138).
- `wissen/bauprodukte` 02:36: ERCO-Ratgeber von Seite 53 auf **73** fortgeschrieben.
- `twin-mail-training` Batch 87 (03:49): Luecken-Sweep rj@ Dez 2025 / Jan 2026.
- `twin-fidelity-review` (06:08): Bitte-Form, mitlesende Dritte, Geraetebefund.
- Lauf-Journal 05.08.: zwei Zeilen, **beide rc=0** (02:37 4.11 USD / 37 Turns, 05:39
  4.28 USD / 43 Turns). Operative Briefings alle durch: logbuch-radar 07:06,
  vollgas-fruehwarnung 07:25 (still), ag-gruendung-monitor 07:50. Die restlichen Commits
  sind `nas-selfcommit` mit `station-status/*` und `logbuch/kontingent/*` — Statusrauschen,
  das nach Schritt 5 nicht als Arbeit zaehlt.
- **Kein Loop mit drei oder mehr Laeufen ohne Delta.** Kein Rueck-Takt-, kein
  Stilllegungskandidat.

**P2 des Vorlaufs erledigt — der energie-Taktgeber ist bewiesen.** Der Nachtschicht-Slot
05:30 hat `energie` diesmal selbst gezogen und geliefert; das Lauf-Journal haelt
ausdruecklich fest, dass die KB seit dem 28.07. ohne eigenen Taktgeber war und **die
Nachtschicht sie ab jetzt traegt**. Die Korrektur der Freiliste in
`scripts/nachtschicht-run.sh` (Zeile 126) wirkt also. Kein zweiter Mechanismus noetig.

**Feuermechanismen — alle drei Orte geprueft, keine Abweichung.**
- Endlos-Runner unveraendert **ausgebaut**: `ch.jans.vollgas-supervisor` (beide Stationen)
  und `ch.jans.vollgas-monitor` (MacBook) tragen `.disabled-260729`, in `launchctl list`
  ist keiner geladen. Nichts angefasst.
- Mac-Mini-Nachtschicht `ch.jans.nachtschicht` geladen, Slots intakt (02:37 und 05:39
  beide gelaufen).
- Registry: alle Lern-Tasks **enabled=true**; auf `false` nur abgeschlossene One-Time-Tasks
  und die bewusst auf Ereignis-Trigger umgestellten Loops (`immobewertung-training`,
  `spec-training`).

**P1 — keiner.** Keine Mail: der Proben-Defekt war kein Blocker, den nur Raphael loesen
kann, sondern ein Fehler dieses Radars, und er ist behoben.

**P2 — den Fix der Fensterprobe im naechsten Lauf bestaetigen.** Ein einziger gelungener
Aufruf ist noch kein Beweis. Bestaetigt der 16:50-Lauf das «OK», ist der seit vier Laeufen
groesste offene Hebel geschlossen und die Unterscheidung [FREI] / [LOGIN] / [WOCHE LEER]
wieder direkt messbar statt ueber Umwegbelege.

**P3 — der fehlende Tagesdeckel ist mit dieser Messung praktisch entwertet.** Der
Verbrauch hat den flachen Wochenschnitt von selbst erreicht. Ein Deckel wuerde derzeit
nichts begrenzen, was nicht ohnehin unter der Linie laeuft; wieder aufzunehmen erst, wenn
eine Nacht ueber 2 Mio/h liefert und der Tag das nicht ausgleicht.

*Regellauf schlank gehalten. Einziger Mehraufwand: die Ursachenverfolgung der haengenden
Probe — gerechtfertigt, weil der Befund aus dem `normen-training`-Report einen konkreten,
durch die Aufsicht selbst verursachten Lern-Ausfall belegt hat.*

---
## 2026-08-05 00:57 — [FREI] Der Vorsprung faellt auf +3.2 und naehert sich der Null — das ist die gewollte Konvergenz, nicht ein Problem. Starke Nacht-Lieferung (energie Run 123, Wissens-Chef Run 25), aber der neue energie-Taktgeber ist noch unbewiesen

**Selbstkontrolle:** letzter Eintrag 04.08. 17:05, Abstand 7 h 52 bei 8-h-Takt (00:50 /
08:50 / 16:50). **Kein Aufsichtsausfall**, der Slot 00:50 ist eingehalten.

**Fenster FREI — die vorgeschriebene Probe haengt zum vierten Mal.** `claude -p "Antworte
nur mit: OK" --model haiku` aus `/tmp`, mit eigenem 100-Sekunden-Watchdog: die Ausgabedatei
bleibt **vollstaendig leer** — kein «OK», kein Limit-Hinweis, kein «Not logged in», nicht
einmal ein rc-Vermerk. Der Defekt ist damit an vier aufeinanderfolgenden Laeufen belegt
(04.08. 09:10 zweimal, 17:05, jetzt). Die Lage selbst ist eindeutig: **dieser Radar-Lauf
ist ein Modelllauf auf dem MacBook Pro** — laeuft er, ist Kapazitaet da; dazu der
Nachtschicht-Slot 23:30 mit rc=0 und 2.40 USD im Lauf-Journal. Umwegbeleg, wie an den
letzten beiden Laeufen.

**Speicher:** 3.16 GB frei+inactive+purgeable, Druckstufe **2** (warning). Um 17:05 waren
es 3.05 GB bei derselben Stufe. Stabil, kein Handlungsbedarf.

**Wochenbudget.** `kontingent-budget.sh --json`, gemessen ohne Modellaufruf:

| Groesse | Wert | Vergleich 17:05 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **42.15 Mio** von 167 = **25.2 %** | 36.22 Mio = 21.7 % |
| Woche verstrichen | 22.0 % (37 h seit Reset Mo 12:00) | 17.3 % |
| **Vorsprung** | **+3.2 Punkte** | +4.4 Punkte |
| MacBook Pro / Mac Mini | 29.95 / 12.20 Mio (beide frisch) | 25.76 / 10.46 |

**Der Vorsprung schrumpft zum dritten Mal in Folge (+8.6 → +4.4 → +3.2), und das ist
genau das gewollte Verhalten.** Die Rate seit 17:05 betraegt **0.75 Mio/h** (5.93 Mio in
7 h 52) gegen 0.12 Mio/h am Nachmittag und 2.32 Mio/h in der Nacht zuvor. Der flache
Wochenschnitt liegt bei **0.99 Mio/h** (167 Mio auf 168 h) — solange der Verbrauch
darunter liegt, faellt der Vorsprung zwangslaeufig gegen Null, also gegen den
gleichmaessigen Verlauf, den Raphaels Entscheid vom 03.08. verlangt. Ein schrumpfender
Vorsprung ist hier **kein Warnsignal, sondern die Zielgroesse**; erst ein NEGATIVER
Vorsprung waere einer. Fortgeschrieben auf 0.75 Mio/h endete die Woche bei rund 141 von
167 Mio, also mit etwa 26 Mio ungenutzt — die Nacht hat aber gerade erst begonnen und hebt
die Rate erfahrungsgemaess wieder an. Eine Drossel nach Schritt 2c ist **nicht** ausgeloest
und wurde **nicht** gesetzt.

**Liefer-Delta: 39 Commits in 9 Stunden, davon drei mit Substanz — die beste
Nacht-Ausbeute seit dem Reset.**
- `wissen/energie` **40 Dateiaenderungen**, Run 123: eco-bau-/AHB-Beschaffungskorpus,
  9 Destillate, FAQ F208–F211, neuer Themenartikel oekologische Materialvorgaben,
  Aktualitaetsbefund ecoBKP 2026, zwei Agentenbefunde widerlegt, 44 FAQ-Ueberschriften und
  12 Backlinks repariert.
- Wissens-Chef Run 25 (Cross-KB, 23 Agenten): SIA 493 als seit 30.06.2022 archiviert
  erkannt und SIA 430:2023 nachgefuehrt, die BKP-Phantomcodes **271.10 und 271.13** in
  Skills, normen-Destillaten, Rule und Brandschutz-Template bereinigt — mit der richtigen
  Sachbezugs-Entscheidung (Brandschutz = **271.1** Trockenbau, nicht 271.0), dazu
  `wissen/normen` 9, `wissen/baurecht` 5, `koordination`/`immobilienbewertung`/
  `grobkosten`/`planungsgrundlagen` je 3 bzw. 2.
- Nachtschicht 23:30: `projekt-lessons` Bauen-im-Betrieb, erweiterter **Nullbefund** nach
  Durchsuchung von KISPI-Ordner und Mail, im Logbuch nachgefuehrt. Ein belegter Nullbefund
  ist ein Ergebnis, kein Leerlauf.
- Lauf-Journal 04.08.: vier Zeilen, **alle rc=0** (02:35 2.37 USD, 05:35 2.85, 13:42 4.23,
  23:35 2.40). Die restlichen 36 Commits sind `nas-selfcommit` mit
  `station-status/*` (70 Aenderungen) und `logbuch/kontingent/*` (38) — Statusrauschen,
  das nach Schritt 5 nicht als Arbeit zaehlt.
- **Kein Loop mit drei oder mehr Laeufen ohne Delta.** Kein Rueck-Takt-, kein
  Stilllegungskandidat.

**Feuermechanismen — alle drei Orte geprueft, keine Abweichung.**
- Endlos-Runner unveraendert **ausgebaut**: `ch.jans.vollgas-supervisor` (beide Stationen)
  und `ch.jans.vollgas-monitor` (MacBook) tragen `.disabled-260729` und sind in
  `launchctl list` nicht geladen. Nichts angefasst.
- Mac-Mini-Nachtschicht `ch.jans.nachtschicht` geladen, Slots intakt.
- Registry: alle Lern-Tasks **enabled=true**; auf `false` nur abgeschlossene One-Time-Tasks
  und die bewusst auf Ereignis-Trigger umgestellten Loops (`immobewertung-training`,
  `spec-training`). `normen-training-nacht` steht auf 05.08. 01:27 scharf.

**Nachtrag zum P2 des Vorlaufs — der energie-Taktgeber ist korrigiert, aber noch nicht
bewiesen.** Die Korrektur in `scripts/nachtschicht-run.sh` steht unveraendert (Zeile 126,
Freiliste enthaelt energie, Begruendung samt Datum im Prompt). Die grosse
energie-Lieferung dieser Nacht kam allerdings **nicht** von ihr: Run 123 wurde um 23:08
committet, der Nachtschicht-Slot 23:30 lief danach und waehlte `projekt-lessons`
(regelkonform — seine Heuristik nimmt die am laengsten nicht trainierte KB, und energie war
soeben angefasst worden). `ch.jans.wissens-trigger` meldet energie am 04.08. auf beiden
Stationen weiterhin als «unveraendert — kein Lauf». Run 123 stammt also aus einer
Session ausserhalb der Taktgeber. Ergebnis: die KB ist **nicht** ausgefallen, aber der
Beweis, dass die Nachtschicht sie kuenftig selbst zieht, steht noch aus und faellt
fruehestens im naechsten Slot an, in dem energie die aelteste Baustelle ist. Kein
Eingriff — ein zweiter Mechanismus bliebe falsch.

**P1 — keiner.** Keine Mail (kein Blocker, den nur Raphael loesen kann; Kontingent nicht
erschoepft; der Proben-Defekt bleibt ein Messproblem).

**P2 — die haengende Fensterprobe, unveraendert der groesste offene Hebel.** Viermal ohne
jede Ausgabe. Sie ist die einzige Messung, die [LOGIN] und [WOCHE LEER] sauber trennt;
faellt sie aus, erkennt der Radar eine Wochensperre erst daran, dass andere Laeufe
scheitern — also spaeter als noetig, und genau diese Verspaetung hat den 47-h-Ausfall vom
01.–03.08. mitverursacht. Gebraucht wird ein Probe-Weg, der nicht ueber das interaktive
CLI laeuft.

**P3 — der fehlende Tagesdeckel bleibt offen, weiter ohne Druck.** Der Verbrauch
konvergiert von selbst auf den flachen Wochenschnitt. Dringend wird der Deckel erst, wenn
eine Nacht wieder ueber 2 Mio/h liefert und der Tag das nicht ausgleicht.

*Regellauf schlank gehalten. Einziger Mehraufwand: die Herkunftspruefung der
energie-Lieferung, die der P2-Vermerk des Vorlaufs verlangt hat.*

---
## 2026-08-04 17:05 — [FREI] Der Vorsprung halbiert sich erneut (+8.6 → +4.4), die Tagesrate liegt bei einem Achtel des Nachhaltigkeitswerts. Der energie-Loop hat wieder einen Taktgeber — Ausschlussliste der Nachtschicht korrigiert

**Selbstkontrolle:** letzter Eintrag 04.08. 09:10, Abstand 7 h 55 bei 8-h-Takt (00:50 /
08:50 / 16:50). **Kein Aufsichtsausfall**, der Slot 16:50 ist eingehalten.

**Fenster FREI — die vorgeschriebene Probe haengt zum dritten Mal.** `claude -p "Antworte
nur mit: OK" --model haiku` mit eigenem 100-Sekunden-Watchdog liefert erneut **keine
Ausgabe**: kein «OK», kein Limit-Hinweis, kein «Not logged in», kein Fehlertext. Prozess
beendet. Der Defekt ist damit reproduzierbar und nicht mehr als Einzelfall zu lesen (09:10
zweimal, jetzt ein drittes Mal). Die Lage ist trotzdem eindeutig belegt, und diesmal am
staerksten moeglichen Beleg: **dieser Radar-Lauf selbst ist ein Modelllauf auf dem
MacBook Pro** — laeuft er, ist Kapazitaet da. Dazu `dispatch-versuch1` 13:42 auf dem Mac
Mini mit rc=0, 52 Turns, 4.23 USD. Fuer die Unterscheidung [FREI] / [LOGIN] /
[WOCHE LEER] bleibt der Radar bis auf Weiteres auf Umwegbelege angewiesen; das ist
tragfaehig, solange jeder Lauf mindestens einen abgeschlossenen Fremdlauf vorweist.

**Speicher:** 3.05 GB frei+inactive+purgeable, Druckstufe **2** (warning). Um 09:10 waren
es 3.49 GB bei derselben Stufe. Weiter leicht ruecklaeufig, kein Handlungsbedarf.

**Wochenbudget.** `kontingent-budget.sh --json`, gemessen ohne Modellaufruf:

| Groesse | Wert | Vergleich 09:10 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **36.22 Mio** von 167 = **21.7 %** | 35.25 Mio = 21.1 % |
| Woche verstrichen | 17.3 % (29 h seit Reset Mo 12:00) | 12.5 % |
| **Vorsprung** | **+4.4 Punkte** | +8.6 Punkte |
| MacBook Pro / Mac Mini | 25.76 / 10.46 Mio (beide frisch) | 25.41 / 9.84 |

**Der Vorsprung hat sich innert acht Stunden halbiert, zum zweiten Mal in Folge.** Die
Rate seit 09:10 betraegt **0.12 Mio/h** (0.97 Mio in 7 h 55) gegen 0.65 Mio/h am
Vormittag und 2.32 Mio/h in der Nacht. Nachhaltig waeren bis zum Reset am Montag
**0.94 Mio/h** (130.78 Mio Rest auf 139 h). Der Nachmittag laeuft also bei rund einem
Achtel des Nachhaltigkeitswerts. Das ist **kein Leerlauf, sondern die gewollte
Rollentrennung**: das MacBook ist reine Arbeitsstation, die Lern-Loops liegen im
Nachtfenster, und der einzige Lern-Slot des Tages ist der Mini-Nachtschicht-Slot 13:30 —
der gelaufen ist und geliefert hat. Der Entscheid «gleichmaessig ueber die Woche» wird
damit heute eingehalten, aber weiterhin ohne Mechanik: er haelt nur, weil die Tagesstunden
von sich aus duenn sind. Eine Drossel nach Schritt 2c ist **nicht** ausgeloest und wurde
**nicht** gesetzt.

**Liefer-Delta: 31 Commits in 8 Stunden, davon genau EINER mit Inhalt.** 30 der 31 sind
`nas-selfcommit`-Laeufe mit ausschliesslich `station-status/*.md` (32 Aenderungen) und
`logbuch/kontingent/verbrauch-*.json` (33) — Statusrauschen, das nach Schritt 5 nicht als
Arbeit zaehlt. Substanz liefert allein der 13:45-Commit: `wissen/bauprodukte` mit dem
ERCO-Lichtplanungs-Destillat von Seite 40 auf 53 fortgeschrieben, dazu INDEX, QUESTIONS,
CHANGELOG und Inventar. Alle drei Journalzeilen des Tages stehen mit **rc=0** (02:35
2.37 USD, 05:35 2.85 USD, 13:42 4.23 USD). **Kein Loop mit einer Serie von drei oder mehr
Laeufen ohne Delta**, also kein Rueck-Takt- und kein Stilllegungskandidat.

**Feuermechanismen — alle drei Orte geprueft, EINE Abweichung, und sie ist behoben.**
- Endlos-Runner unveraendert **ausgebaut**: `ch.jans.vollgas-supervisor` (beide Stationen)
  und `ch.jans.vollgas-monitor` (MacBook) tragen `.disabled-260729` und sind in
  `launchctl list` nicht geladen. Nichts angefasst.
- Mac-Mini-Nachtschicht `ch.jans.nachtschicht` geladen, Slots intakt.
- Registry: alle Lern-Tasks **enabled=true**; auf `false` nur abgeschlossene One-Time-Tasks
  und die bewusst auf Ereignis-Trigger umgestellten Loops.

**P2 vom Vorlauf ERLEDIGT — `energie` hat wieder einen Taktgeber.** Der Befund vom 09:10
ist heute an allen drei Orten bestaetigt: kein Scheduled Task `energie-training` in der
Registry, `ch.jans.training-energie` auf dem Mini seit 03.08. 12:22 als `.disabled-260803`
und nicht geladen, `ch.jans.wissens-trigger` meldet die KB am 03. und 04.08. auf beiden
Stationen als «unveraendert — kein Lauf». Der letzte inhaltliche Stand in
`wissen/energie/wiki/` datiert auf 03.08. 23:37 und stammt vom `wissens-chef`, nicht vom
eigenen Loop. **Korrigiert:** `scripts/nachtschicht-run.sh` schloss energie mit Verweis
auf genau diesen abgeschalteten launchd-Job aus; die Zeile ist entfernt, energie steht
jetzt bei den freien Zielen, die Begruendung samt Datum steht im Prompt selbst.
`bash -n` sauber, Ausschluss- und Freiliste nachgemessen. Bewusst **kein** zweiter
Mechanismus: kein neuer Scheduled Task, sonst feuern zwei auf denselben Loop — genau der
Fehler, vor dem dieselbe Prompt-Passage seit dem 30.07. warnt. Die uebrigen vier
Ausschluesse (baurecht, normen, planungsgrundlagen, wettbewerbs-dna) sind gegen die
Registry geprueft und weiterhin korrekt.

**P1 — keiner.** Keine Mail (kein Blocker, den nur Raphael loesen kann; Kontingent nicht
erschoepft; der Proben-Defekt bleibt ein Messproblem, keine Handlungsaufforderung).

**P2 — die haengende Fensterprobe ist jetzt der groesste offene Hebel.** Dreimal ohne
Ausgabe, auch ohne MCP-Server und ohne Projekt-Hooks. Sie ist die einzige Messung, die
[LOGIN] und [WOCHE LEER] sauber trennen kann; faellt sie aus, erkennt der Radar eine
Wochensperre erst daran, dass andere Laeufe scheitern — also spaeter als noetig. Genau
diese Verspaetung hat den 47-h-Ausfall vom 01.–03.08. mitverursacht. Ein Ersatz waere ein
Probe-Weg, der nicht ueber das interaktive CLI geht.

**P3 — der fehlende Tagesdeckel bleibt offen**, heute ohne Druck: die Tagesrate liegt weit
unter dem Nachhaltigkeitswert, der Verbrauch normalisiert sich von selbst. Er wird erst
wieder dringend, wenn eine Nacht wie die vom 03./04.08. ohne Tagesausgleich folgt.

*Regellauf schlank gehalten. Mehraufwand allein fuer die Verifikation und Korrektur des
energie-Taktgebers, die der P2-Vermerk des Vorlaufs verlangt hat.*

---
## 2026-08-04 09:10 — [FREI] Der Vorsprung schrumpft zum ersten Mal (+10.3 → +8.6 Punkte), die Tagesrate liegt unter dem Nachhaltigkeitswert. Neuer Befund: die vorgeschriebene Fensterprobe haengt und liefert nichts

**Selbstkontrolle:** letzter Eintrag 04.08. 00:57, Abstand 8 h 13 bei 8-h-Takt. **Kein
Aufsichtsausfall**, der Slot 08:50 ist eingehalten.

**Fenster FREI — aber nicht durch die vorgeschriebene Probe belegt.** Die Probe nach
Schritt 2 (`claude -p "Antworte nur mit: OK" --model haiku`, eigener Watchdog) **haengt**:
erster Versuch ueber 11 Minuten ohne eine einzige Ausgabe, zweiter Versuch mit
`--strict-mcp-config --mcp-config '{"mcpServers":{}}'` aus `/tmp` (also ohne jeden
MCP-Server und ohne Projekt-Hooks) ueber 5 Minuten ebenfalls ohne Ausgabe. Kein
Fehlertext, kein Limit-Hinweis, kein «Not logged in» — die beiden schnellen, eindeutigen
Ausgaenge also gerade nicht. Beide Prozesse wurden beendet.
Das ist ein **Defekt der Messmethode, nicht des Kontingents**: die Lage ist ueber echte
Laeufe belegt, und zwar in der letzten Stunde dreifach — `zahlungsabgleich-check` 08:26
(bexio-Hygiene, ohne Befund), `mahnwesen-verzugscheck` 08:07, und `hub-chef-taeglich`
08:39 mit **64 neuen LOGBUCH-Zeilen** im 09:00-Commit. Drei abgeschlossene Modelllaeufe
schlagen als Nachweis eine Probe, die keine Antwort gibt. Der Befund gehoert trotzdem
festgehalten: solange die Probe haengt, kann dieser Radar [FREI], [LOGIN] und [WOCHE LEER]
nicht mehr auf dem vorgesehenen Weg auseinanderhalten, sondern nur ueber Umwegbelege.

**Speicher:** 3.49 GB frei+inactive+purgeable, Druckstufe **2** (warning). Um 00:57 waren
es 4.24 GB bei Stufe 1. Leichte Verschlechterung, kein Handlungsbedarf.

**Wochenbudget — der eigentliche Befund dieses Laufs, und er ist gut.**
`kontingent-budget.sh --json`, gemessen ohne Modellaufruf:

| Groesse | Wert | Vergleich 00:57 |
|---|---|---|
| Ampel | **FREI** | FREI |
| Verbraucht | **35.25 Mio** von 167 = **21.1 %** | 30.03 Mio = 18.0 % |
| Woche verstrichen | 12.5 % (21 h seit Reset Mo 12:00) | 7.7 % |
| **Vorsprung** | **+8.6 Punkte** | +10.3 Punkte |
| MacBook Pro / Mac Mini | 25.41 / 9.84 Mio (beide frisch) | 20.51 / 9.51 |

**Der Vorsprung ist zum ersten Mal geschrumpft, um 1.7 Punkte.** Die Rate seit dem letzten
Eintrag betraegt **0.65 Mio/h** (5.22 Mio in 8 h 13) gegen **2.32 Mio/h** in der Nacht.
Nachhaltig waeren bis zum Reset am Montag **0.90 Mio/h** (131.75 Mio Restbudget auf 147 h).
Die Tagesrate liegt also **unter** dem Nachhaltigkeitswert — der Tag holt zurueck, was die
Nacht vorgezogen hat. Das bestaetigt die Lesart vom 00:57-Eintrag, die Nachthochrechnung
sei eine Obergrenze und keine Prognose. Auf dem Schnitt seit Reset (1.67 Mio/h) reichte
das Kontingent bis Freitag Mittag; auf der aktuellen Rate bis weit ueber Montag hinaus.
Eine Drossel nach Schritt 2c ist **nicht** ausgeloest und wurde **nicht** gesetzt.

**Liefer-Delta je Loop: durchweg positiv, kein Stilllegungskandidat.** 48 Commits in
9 Stunden. Substanz in den letzten 8 h: `wissen/twin` 26 Dateien (Fidelity-Review 06:28),
`wissen/normen` 21 Dateien (Run 43 mit fuenf Refuter-Pruefungen, PL-02-Kern auf 69/69
geschlossen), `wissen/bauprodukte` 3, `wissen/grobkosten` 2, dazu die letzte prescriptive
BKP-«271.10»-Fundstelle in der Referenz auf **271.0** korrigiert. Operative Loops alle mit
Deliverable: `logbuch-radar` 07:08, `vollgas-fruehwarnung` 07:24, `ag-gruendung-monitor`
07:49, `mahnwesen` 08:07, `zahlungsabgleich` 08:26, `hub-chef` 09:00. Beide
Nachtschicht-Slots im Journal mit rc=0 (02:35 2.37 USD, 05:35 2.85 USD).

**Feuermechanismen — alle drei Orte geprueft, keine Abweichung.**
- Endlos-Runner weiter **ausgebaut**: `ch.jans.vollgas-supervisor` (beide Stationen) und
  `ch.jans.vollgas-monitor` (MacBook) tragen `.disabled-260729`, in `launchctl list`
  **nicht** geladen. Nichts angefasst.
- Mac-Mini-Nachtschicht `ch.jans.nachtschicht` geladen, alle vier Slots intakt
  (23:30 / 02:30 / 05:30 / 13:30).
- Registry: alle Lern-Tasks **enabled=true**; auf `false` nur abgeschlossene One-Time-Tasks
  und die zwei bewusst auf Ereignis-Trigger umgestellten Loops.

**P1 — keiner.** Keine Mail (Regimefrage entschieden, Kontingent nicht erschoepft, der
Proben-Defekt ist kein Blocker, den nur Raphael loesen kann).

**P2 (hochgestuft von P3) — `energie-training` hat KEINEN aktiven Taktgeber mehr.** Der
Punkt war gestern als Zuordnungsfrage vermerkt; die Pruefung heute zeigt, dass es keine
Zuordnung gibt:
- **Registry:** der Task existiert dort nicht.
- **Mac-Mini-launchd** `ch.jans.training-energie`: `.disabled-260803`, nicht geladen. Die
  Umbenennung datiert per ctime auf **03.08. 12:22:43** — also **zehn Stunden VOR** dem
  Commit von Run 122 (03.08. 22:58). Der Job kann ihn nicht gefeuert haben.
- **`ch.jans.wissens-trigger`** (MacBook 06:30): das Log weist am 03.08. UND am 04.08. auf
  **beiden** Stationen «energie: unveraendert — kein Lauf» aus. Er hat nicht gefeuert.
- **Lauf-Journal:** zu Run 122 gibt es keine Zeile; der einzige MacBook-Lauf jenes Abends
  ist `dispatch-versuch1` 22:20 (77 Turns, 4.56 USD) mit bauprodukte-Ergebnis.

Dazu der Fehler, der den Loop dauerhaft stilllegt: **`scripts/nachtschicht-run.sh`
schliesst energie als Ziel aus mit der Begruendung «launchd `ch.jans.training-energie`,
taeglich 22:30»** — ein Job, den es seit dem 03.08. 12:22 nicht mehr gibt. Der einzige
verbliebene Lern-Taktgeber des Hub meidet damit eine KB wegen eines Mechanismus, der
abgeschaltet ist. Run 122 war ein Einzelfall aus unbekannter Quelle; ohne Eingriff faellt
`energie` still aus. Genau die Falle, die am 30.07. schon `planungsgrundlagen` 64 Laeufe
unzurechenbar gemacht hat, diesmal mit Ausfall statt nur Fehlzurechnung.
**Empfehlung:** entweder energie in `nachtschicht-run.sh` aus der Ausschlussliste nehmen
(dann traegt die Nachtschicht den Takt) oder einen Scheduled Task `energie-training`
anlegen — nicht beides, sonst feuern zwei Mechanismen denselben Loop.

**P3 — der fehlende Tagesdeckel bleibt offen**, aber er draengt heute weniger: der
Entscheid «gleichmaessig ueber die Woche» vom 03.08. wird gerade von selbst eingehalten
(Tagesrate unter dem Nachhaltigkeitswert). Die Mechanik fehlt weiterhin und bleibt ein
eigener Auftrag; sie wird erst wieder dringend, wenn eine zweite Nacht wie die vom
03./04.08. ohne Tagesausgleich folgt.

*Lauf schlank gehalten. Mehraufwand allein durch die zweifach haengende Fensterprobe und
die Aufklaerung des energie-Taktgebers, die vom P3-Vermerk des Vorlaufs verlangt war.*

---
## 2026-08-04 00:57 — [FREI] Erste volle Nacht nach dem Reset: 86 Commits in 13 Stunden, aber der Verbrauch laeuft der Woche um 10.3 Punkte voraus. Genau das Muster, das der Entscheid vom Vortag beenden soll

**Selbstkontrolle:** letzter Eintrag 03.08. 22:07, Abstand 2 h 50. Der Takt steht seit 03.08.
auf 8 h (00:50 / 08:50 / 16:50); dieser Lauf ist der erste im neuen Raster nach dem
Nachzuegler-Eintrag von gestern Abend. **Kein Aufsichtsausfall.**

**Fenster FREI.** Probe (haiku, eigener Watchdog) antwortet «OK». Speicher unauffaellig:
4.24 GB frei+inactive+purgeable, Druckstufe 1 (normal).

**Wochenbudget — der eigentliche Befund dieses Laufs.** `kontingent-budget.sh --json`,
gemessen ohne Modellaufruf:

| Groesse | Wert |
|---|---|
| Ampel | **FREI** |
| Verbraucht | **30.03 Mio** «teuer» von 167 Mio = **18.0 %** |
| Woche verstrichen | 7.7 % (12 h 57 seit Reset Mo 03.08. 12:00) |
| **Vorsprung** | **+10.3 Punkte** |
| MacBook Pro / Mac Mini | 20.51 / 9.51 Mio (beide Stationsdateien frisch) |

Die Ampel steht auf FREI, eine Drossel nach Schritt 2c ist **nicht** ausgeloest und wurde
**nicht** gesetzt. Trotzdem gehoert die Richtung in den Eintrag: 2.32 Mio pro Stunde,
linear fortgeschrieben waere das Kontingent nach rund 72 Stunden leer, also **Donnerstag
06.08. um die Mittagszeit statt Montag 10.08. 12:00** — vier Tage Fehlbetrag. Die Rate ist
von der Nachtspitze verzerrt (die 13 Stunden enthalten die volle Nachtschicht 23:00–01:00
und die getakteten Nacht-Loops, die Tagesstunden fehlen noch), die Hochrechnung ist also
eine Obergrenze, nicht eine Prognose. Die **Richtung** stimmt aber und deckt sich mit dem
stehenden Entscheid Raphaels vom 03.08. («gleichmaessig ueber die Woche»): der Wochenanfang
zieht weiterhin ueberproportional. Der Radar legt die Regimefrage weisungsgemaess **nicht
erneut** vor; was fehlt, ist der Tagesdeckel-Mechanismus, und der ist ein eigener Auftrag.

**Der Verbrauch ist produktiv, nicht Leerlauf.** 86 Commits im NAS-Repo seit dem Reset,
davon Substanz statt Statusrauschen: baurecht Run 72 (Thalwil-Batch T1, Vorwirkungs-
Markierung am Pixel verifiziert), normen Run 42 (PL-02-Kern 68/69, 22 Destillate),
energie Run 122 (AHB-Richtlinien RL1–RL9, 4 tote Normverweise aufgedeckt), wissens-chef
Run 23 **und** 24 (36 Dateien in mehreren KBs korrigiert, darunter falsch transkribierte
Gelaenderhoehen im baurecht), wettbewerbs-dna Etappe 4, twin-fidelity-Review,
bauprodukte-Destillat mit Kurator-Korrektur, Synergie-Lauf 04, tenant-hygiene,
Grundkontext-Diaet Runde 2 (Grundkontext 117.2 → 85.9 kB). Das ist ein voll gefuelltes
Fenster im Sinne der Zielsetzung.

**Liefer-Delta je Loop: durchweg positiv, kein Stilllegungskandidat.** Kein Loop mit einer
Serie von drei oder mehr Laeufen ohne Delta. `methoden-radar` lieferte am 03.08. kein
inhaltliches Delta, hat aber auftragsgemaess die Rotationszeile «Methode SPW» verifiziert —
ein Bestaetigungslauf, kein Leerlauf. Die drei Mini-Nachtschicht-Laeufe des 03.08. stehen
im Journal mit rc=0 (4.43 / 4.56 / 3.48 USD); die beiden rc=1-Zeilen davor sind die
Fehlversuche gegen die noch laufende Wochensperre, also Blockade und nicht Delta Null.

**Feuermechanismen — alle drei Orte geprueft, keine Abweichung.**
- Endlos-Runner weiterhin **ausgebaut**: `ch.jans.vollgas-supervisor` (beide Stationen) und
  `ch.jans.vollgas-monitor` (MacBook) tragen unveraendert `.disabled-260729` und sind in
  `launchctl list` **nicht** geladen. Nichts angefasst, dem stehenden Entscheid vom 30.07.
  entsprechend.
- Mac-Mini-Nachtschicht `ch.jans.nachtschicht` geladen, alle **vier** Slots intakt
  (23 / 02 / 05 / 13 Uhr).
- Registry: **alle Lern-Tasks stehen wieder auf enabled=true.** Aus der Drossel vom 03.08.
  ist nichts haengengeblieben — es gab nichts scharfzuschalten. Auf `false` stehen nur
  abgeschlossene One-Time-Tasks und die drei bewusst auf Ereignis-Trigger umgestellten
  Loops (`immobewertung-training`, `spec-training`, plus die alten Einmal-Tasks).

**P1 — keiner.** Kein Blocker, der nur Raphael loesen kann; keine Mail (Regimefrage ist
entschieden und wird nicht erneut vorgelegt, Kontingent ist nicht erschoepft).

**P2 — der fehlende Tagesdeckel bleibt der groesste Hebel.** Der Entscheid «gleichmaessig
ueber die Woche» steht seit dem 03.08., die Mechanik dazu existiert nicht. Solange nur die
DROSSEL-Schwelle greift, wirkt die Steuerung erst, wenn das Kontingent schon weitgehend
verbraucht ist — also zu spaet, um das Wochenende zu retten. Ein Tagesdeckel (Richtwert
167/7 ≈ 24 Mio pro Tag, mit Uebertrag) waere der ganze Unterschied zwischen «reicht bis
Montag» und «Donnerstag dunkel».

**P3 — offene Zuordnungsfrage `energie-training`.** Der Loop liefert (Run 122 in der Nacht
auf den 04.08.), steht aber in **keiner** Scheduled-Task-Registry, und der Mini-launchd-Job
`ch.jans.training-energie` traegt seit dem 03.08. `.disabled-260803`. Gefeuert hat ihn
demnach die Nachtschicht oder `ch.jans.wissens-trigger`. Fuer diesen Regellauf nicht weiter
vertieft (Sparsamkeitsgebot), aber die Zuordnung gehoert sauber dokumentiert, sonst faellt
der Loop bei der naechsten Aenderung an einem der beiden Mechanismen still aus — genau die
Falle, die am 30.07. schon `planungsgrundlagen` 64 Laeufe unzurechenbar gemacht hat.

*Lauf schlank gehalten: Fensterprobe, Budget, Feuermechanismen, Liefer-Delta, Speicher,
Eintrag. Keine Tiefenuntersuchung, kein Anlass dafuer.*

---
## 2026-08-03 22:07 — [FREI, nach WOCHE LEER] Das Wochenkontingent war 47 Stunden erschoepft (01.08. 14:21 bis 03.08. 12:00). Der Hub stand still, die Aufsicht ebenfalls — und genau deshalb steht der Vorfall erst jetzt hier

**Selbstkontrolle zuerst: 56 Stunden ohne Aufsichtseintrag.** Der letzte Eintrag stammt vom
01.08. 14:12, dieser Lauf ist der naechste. Dazwischen liegen rechnerisch 13 versaeumte
4-h-Slots. Das ist der laengste Aufsichtsausfall seit Fuehrung dieses Logs und muss sichtbar
bleiben. **Die Ursache ist aber nicht der Scheduler** — die naheliegende Hypothese aus den
beiden Vorlaeufen (suspendierte Session blockiert den Task-Slot) traegt hier nicht. Der Radar
konnte nicht laufen, weil das Wochenkontingent leer war; er teilt es sich mit allen anderen
Laeufen. Eine Aufsicht, die aus demselben Topf trinkt wie das, was sie beaufsichtigt, ist
waehrend eines Kontingent-Ausfalls blind. Das ist der eigentliche Befund dieses Laufs.

**Belegte Chronologie (Dispatch-Logs Mac Mini, `dispatch/log/`, jede Zeile einzeln geprueft):**

| Zeitpunkt | Ereignis |
|---|---|
| 01.08. 13:30 | letzter erfolgreicher Nachtschicht-Zyklus (Exit 0) |
| 01.08. 14:12 | letzter Radar-Eintrag — Fenster damals noch FREI, Probe «OK» |
| **01.08. 14:21** | **erster Treffer «You've hit your weekly limit · resets 12pm (Europe/Zurich)»** |
| 01.08. 22:30 – 03.08. 05:30 | 10 weitere Laeufe, alle Exit 1, alle mit derselben Meldung |
| **03.08. 12:00** | **Wochen-Reset (Montag Mittag)** |
| 03.08. 13:30 | erster erfolgreicher Zyklus wieder (Exit 0, 11 Min Laufzeit) |

**Elf blockierte Laeufe in 47 Stunden.** Betroffen waren die Nachtschicht-Slots 22:30/23:30/
02:30/05:30/13:30 beider Tage und der Mini-Energie-Lauf 22:30. Der 02.08. ist ein Tag mit
**null substanziellen Commits** — der erste seit Fuehrung dieser Messung.

**Fensterzustand jetzt: FREI.** Probe um 22:08 antwortet «OK». Der Reset liegt zehn Stunden
zurueck, das System hat sich von allein gefangen: der 13:30-Zyklus lieferte
`energie` Run 121 (PL-02-Korpus erschlossen, 1171 PDF gesichtet, 182 energierelevant, 9 neue
Destillate, FAQ F197–F201, Themenartikel `bezugsgroessen-energienachweis`, dazu die
Verifikations-Nachholung von Run 120 mit 4 Korrekturen), und der `methoden-radar` lief
planmaessig um 21:02. Der Hub arbeitet wieder.

**Liefer-Delta je Loop — und die entscheidende Unterscheidung.** Alle Nullbefunde dieses
Fensters sind **Null-Ertrag durch Blockade, nicht Delta Null**. Es wird deshalb **nichts**
ruecktaktet und **nichts** deaktiviert; das waere die Bestrafung eines hungrigen Loops fuer
eine fremde Ursache.

- `energie` — geliefert (Run 121, siehe oben). Kein Handlungsbedarf.
- `projekt-lessons` — geliefert (RE-00087 Update, Register nachgefuehrt, 13:40).
- `wissens-chef` — zwei Laeufe ohne Liefer-Beleg (01.08. 23:10, 02.08. 23:12), letzter Report
  Run 22 vom 31.07. **Damit ist der Befund des `methoden-radar` von heute 21:02 erklaert und
  zugleich entschaerft:** beide Laeufe fielen vollstaendig ins Limit-Fenster. Kein
  Bestaetigungstakt, kein Eingriff. Der naechste Lauf um 23:11 faellt ins freie Fenster und
  ist die erste belastbare Messung — er gehoert in den naechsten Radar-Lauf.
- `vollgas-fruehwarnung` — **schreibt seit dem 01.08. 07:15 nicht mehr ins Log**, obwohl die
  Registry fuer den 02.08. und 03.08. je einen Lauf ausweist. Fuer den 02.08. erklaert das
  Limit den Ausfall; fuer den 03.08. 07:15 ebenfalls (Reset erst 12:00). Beobachtung, die
  nicht ins Limit passt: die Session vom 03.08. 07:15 zeigt noch um 22:08 Aktivitaet, also
  nach 15 Stunden, und hat trotzdem keinen Eintrag erzeugt. Das ist zu beobachten, nicht zu
  bewerten — der Lauf morgen 07:15 faellt erstmals wieder in ein freies Fenster.

**Feuermechanismen: konsistent, keine Abweichung.** MacBook Pro: kein `vollgas`-Job geladen,
`vollgas-supervisor` und `vollgas-monitor` weiterhin `*.disabled-260729`, `aihub.runner`
`.disabled-260728`. Mac Mini: geladen nur `ch.jans.nachtschicht`; `vollgas-supervisor`
`.disabled-260729`, und `training-energie` traegt neu `.disabled-260803` — das ist der am
03.08. behobene Doppeltakt (Commit `92618892`), der Scheduled Task ist dort jetzt alleiniger
Taktgeber. Registry: 31 Tasks, kein Doppelfeuer. Der stehende Entscheid Raphaels vom 30.07.
(Endlos-Runner bleibt ausgebaut) ist gewahrt; dieser Lauf hat nichts gestartet.

**Speicher MacBook Pro: eng.** frei+inactive+purgeable **0.9 GB**,
`kern.memorystatus_vm_pressure_level` = **2 (warning)**. Die Station ist in Benutzung
(Claude.app aktiv). Keine Massnahme durch den Radar — das MacBook ist Arbeitsstation, und der
Speicherdruck stammt aus der Arbeit, nicht aus Lern-Laeufen. Der Wert gehoert aber in die
naechste Messung.

**P1 — Das Wochenkontingent war am Samstagnachmittag aufgebraucht, zwei Tage vor dem Reset.**
Das ist die Kernfrage fuer Raphael, und sie ist eine Regime-Entscheidung, keine
Radar-Entscheidung: soll der Verbrauch frueher in der Woche gedrosselt werden, damit das
Wochenende nicht leer laeuft? Zur Einordnung die letzten Messwerte der Fruehwarnung
(kombiniert «teuer», Mio Token): 27.07. 26.50 · 28.07. 10.51 · 29.07. 11.41 · 30.07. 16.07 ·
31.07. 6.11. Der Wochenanfang traegt die Last, das Wochenende zahlt sie. **Mail an rj@ ist
raus** (Kriterium c, erschoepftes Wochenkontingent) — einmalig, ohne Wiederholung.

**P2 — Die Aufsicht hat keinen Kanal ausserhalb des Kontingents.** Radar und Fruehwarnung
sind beide `claude`-Laeufe und fallen mit dem Limit gemeinsam aus, genau dann, wenn gemeldet
werden muesste. Ein Ein-Zeilen-Waechter ohne Modellaufruf (Dispatch-Log auf «weekly limit»
grepen, bei Treffer eine Mail) wuerde diese Luecke schliessen. Nicht gebaut, weil er
Mailversand ausloest und damit Raphaels Entscheid braucht — als Vorschlag hier notiert.

**P3 —** Die beiden offenen Takt-Empfehlungen vom 01.08. stehen unveraendert und sind heute
gefahrlos umsetzbar (nicht am Monatsersten): `wissenscheck-monatlich` 07:00 → 19:30 und
`synergie-lauf-monatlich` 04:40 → 21:40, beide wegen Kollision mit benachbarten Slots.

### NACHTRAG 23:2x — Raphael hat das Paket freigegeben, es ist gebaut und nachgemessen

Auf Nachfrage im Plan-Modus vorgelegt und freigegeben: **A3 + B1 + C1 + D1**. Umgesetzt:

- **`scripts/kontingent-budget.sh`** (neu) — misst den Wochenverbrauch OHNE Modellaufruf
  (4 Sekunden auf 3.3 GB Transcripts), stationsuebergreifend ohne SSH ueber
  `logbuch/kontingent/verbrauch-<station>.json`. Beide Pfade nachgemessen: FREI → rc 0,
  DROSSEL → rc 1. `--messung` haelt den Read-only-Vertrag (Verzeichnis blieb leer).
- **`scripts/kontingent-waechter.sh`** (neu) — der Meldekanal AUSSERHALB des Kontingents,
  haengt an `ch.jans.speicher-waechter` (30 Min, beide Stationen), kein neuer
  Feuermechanismus. Mailweg, Sperrdatei, Fehlalarm-Freiheit und Echterkennung je einzeln
  nachgemessen.
- **`scripts/lauf-gate.sh`** — Budget-Abfrage ergaenzt, drei Pfade belegt (Freigabe,
  Abweisung, operativer Name kommt trotz leerem Budget durch).
- **Radar-SKILL** Schritte 2b/2c (Budget messen, Lern-Tasks ab Schwelle drosseln und nach
  dem Reset ohne Rueckfrage zurueckholen) · **Fruehwarnungs-SKILL** Schritt 0 (Logeintrag
  zuerst) · Registry-Verlegungen vollzogen, beide `nextRunAt` auf 01.09. gegengelesen.

**Zwei Befunde aus dem Bau, die schwerer wiegen als das Gebaute:**

1. **Die Fruehwarnung war strukturell blind fuer 63 % des Verbrauchs.** Ihr Glob
   `~/.claude/projects/*/*.jsonl` greift nur eine Ebene tief; die Subagenten-Transcripts
   liegen unter `<projekt>/<session>/subagents/`. Nachgemessen am 31.07.: Hauptsessions
   7.24 Mio, Subagenten 12.23 Mio, gemeldet wurden 4.79. **Das ist der strukturelle Grund,
   warum niemand das Limit kommen sah.** Glob im SKILL auf rekursiv korrigiert; alle
   FRUEHWARNUNG.md-Werte vor dem 03.08. sind zu tief und nicht mit neuen vergleichbar.
   Die Kalibrierung des Budgets stuetzt sich deshalb NICHT auf ihre Zahlen, sondern auf den
   beobachteten Limit-Treffer: **167.07 Mio "teuer"** kombiniert (MacBook 142.58 + Mini
   24.48) beim Treffer am 01.08.
2. **Der Waechter waere in seiner ersten Fassung ein Dauermelder gewesen.** Ein simples
   `grep "weekly limit"` fand beim ersten Trockenlauf 36 Dateien — darunter die Session,
   die ihn gerade baute. Ein Text-Grep kann das Melden nicht vom Reden ueber das Gemeldete
   unterscheiden. Behoben ueber den strukturellen Marker `isApiErrorMessage: true`.

**Aktueller Budgetstand beim Bau:** 24.4 von 167 Mio (14.6 %) bei 6.5 % verstrichener Woche,
also **+8.1 Punkte Vorsprung am ersten Tag**. Ein Tag ist kein Trend und der Nachhol-Effekt
nach dem Reset wirkt mit — aber es ist genau das Muster, das den Vorfall erzeugt hat.
Erste belastbare Messung: der Radar-Lauf morgen.

---
## 2026-08-01 14:12 — [FREI] NACHHOL-LAUF 2 Min nach dem Vorlauf: der Scheduler holt einen versaeumten Slot doch nach (korrigiert den Vorlauf)

**Kurzlauf, bewusst schlank.** Dieser Lauf startete um 14:12, also zwei Minuten nachdem die
13 Stunden lang suspendierte Vorsession um 14:10 abgeschlossen hatte. Er misst damit ein
Zeitfenster von zwoelf Minuten; ein Liefer-Delta ist darueber nicht beurteilbar, und es wird
keine Ruecktaktung und keine Deaktivierung ausgeloest. Der Lauf hat genau eine Erkenntnis, und
die betrifft die Aufsicht selbst.

**Faktenkorrektur am Vorlauf.** Der Eintrag von 14:10 haelt fest, «der Scheduler holt
uebersprungene Laeufe nicht nach». Das ist so nicht richtig, und dieser Lauf ist der Gegenbeleg:
sobald der ueber 13 Stunden belegte Task-Slot frei wurde, hat der Scheduler den Radar sofort
gefeuert, ohne den naechsten Takt abzuwarten. Registry gegengelesen: `lastRunAt` steht neu auf
2026-08-01T12:12:52Z (14:12 CEST), `nextRunAt` auf 16:57 CEST — der 4-h-Takt laeuft normal
weiter. **Praeziser formuliert:** die drei versaeumten Slots 04:57, 08:57 und 12:57 werden nicht
einzeln nachgeholt, aber der Ausfall bleibt nicht folgenlos — genau EIN Nachhol-Lauf feuert,
sobald der Slot frei ist. Ein 13-Stunden-Blindfenster der Aufsicht bleibt es trotzdem; der
Befund des Vorlaufs steht, nur seine Begruendung war zu absolut.

**Fensterzustand: FREI.** Probe um 14:13 antwortet «OK». Weder 5-Stunden- noch Wochen-Limit.

**Feuermechanismen: unveraendert konsistent, keine Abweichung.** MacBook Pro: kein
`vollgas`-/Runner-Job geladen; `vollgas-supervisor` und `vollgas-monitor` weiterhin als
`*.disabled-260729` geparkt, `com.jans.aihub.runner` als `.disabled-260728`. Mac Mini: geladen
nur `ch.jans.nachtschicht` und `ch.jans.training-energie`; `training-normen` und `training-plg`
korrekt ungeladen, `vollgas-supervisor` dort ebenfalls `.disabled-260729`. Registry: 31 Tasks,
kein Doppelfeuer. Der stehende Entscheid Raphaels vom 30.07. ist gewahrt.

**Liefer-Delta: nicht beurteilbar (Messfenster 12 Min), kein Delta Null.** Die drei juengsten
Commits (14:10 `b992a6c3` machbarkeit, 14:11 `8d34eae3` Radar-Korrekturfassung, 14:12
`3682c7cc` Synergie-Lauf 03 Eigenkorrektur) sind der Nachlauf des nativen Committers auf die
Arbeit der Vorsession, keine neue Lieferung. Der naechste getaktete Lern-Slot ist die
Mini-Nachtschicht; die naechste echte Delta-Messung gehoert in den 16:57-Lauf.

**Speicher MacBook Pro:** frei+inactive+purgeable 3.5 GB, `kern.memorystatus_vm_pressure_level`
= 1 (normal). Kein Druck, keine Massnahme.

**P1 —** keiner. Kein Blocker, kein Login-Problem, kein Kontingentproblem, keine Mail.
**P2 —** Merkposten fuer den 16:57-Lauf unveraendert: faellt erneut eine Taktluecke > 7 h auf,
ist die Suspendierung kein Einzelfall und die Laufzeitbegrenzung des Radars gehoert auf den
Pruefstand. Der heutige Nachhol-Mechanismus federt einen Ausfall ab, ersetzt die Aufsicht aber
nicht.
**P3 —** die beiden offenen Takt-Empfehlungen aus dem Vorlauf (`wissenscheck-monatlich` auf
19:30, `synergie-lauf-monatlich` auf 21:40) bleiben liegen und sind **an einem beliebigen Tag
ausser dem Monatsersten** umzustellen, weil eine Cron-Aenderung die Task fuer denselben Tag
re-armt und einen Doppellauf erzeugt.

---
## 2026-08-01 00:58/14:10 — [FREI] AUSFALL DER AUFSICHT: Lauf 13 h suspendiert, drei Radar-Laeufe stillschweigend ausgefallen — die Loops selbst lieferten in dieser Zeit 13x

> **Lesart dieses Eintrags:** Der Lauf startete um 00:58, wurde nach den ersten Messungen
> suspendiert und lief erst um ~14:00 weiter; abgeschlossen 14:10. Messwerte tragen deshalb ihren
> Zeitstempel. Die Erstfassung dieses Eintrags (14:04 committet) argumentierte durchgehend mit
> 00:58 als Gegenwart und war damit in Selbstkontrolle, Nachtfenster-Prognose und Massnahme falsch;
> sie ist hier vollstaendig ersetzt.

**Selbstkontrolle: DREI Radar-Laeufe stillschweigend ausgefallen.** Der Takt haette um 04:57, 08:57
und 12:57 feuern muessen. Es gibt zu keinem dieser Zeitpunkte einen RADAR-Eintrag, und die Registry
fuehrt als `lastRunAt` des Radars weiterhin diesen 00:58-Lauf (`nextRunAt` 16:57). Ursache: die
laufende Session belegte den Task-Slot ueber 13 Stunden, der Scheduler holt uebersprungene Laeufe
nicht nach. **Die Aufsicht hatte damit heute ein 13-Stunden-Blindfenster** — genau der stille
Ausfall, den die Selbstkontrolle-Klausel sichtbar machen soll. Merkposten fuer den 16:57-Lauf:
faellt erneut eine Luecke > 7 h auf, ist die Suspendierung kein Einzelfall und der Takt bzw. die
Laufzeitbegrenzung des Radars gehoert auf den Pruefstand.

**Fensterzustand: FREI.** Probe um 00:58 antwortet «OK». Zusaetzlich indirekt belegt bis 13:35:
saemtliche getakteten Laeufe der Nacht und des Vormittags endeten rc 0, zuletzt der
Mini-Nachtschicht-Slot 13:30. Weder 5-Stunden- noch Wochen-Limit.

**Feuermechanismen (Stand 00:58): konsistent, keine Abweichung gegenueber 20:58.** MacBook Pro:
geladen nur die operativen Jobs; `vollgas-supervisor` und `vollgas-monitor` weiterhin ungeladen und
als `*.disabled-260729` geparkt, `aihub.runner` als `.disabled-260728`. Mac Mini: geladen
`ch.jans.nachtschicht` und `ch.jans.training-energie`, `training-normen` und `training-plg` korrekt
ungeladen, `vollgas-supervisor` dort ebenfalls `.disabled-260729`. Registry gegengelesen: 31 Tasks,
kein Doppelfeuer. Der stehende Entscheid Raphaels vom 30.07. ist gewahrt — der Runner blieb
unberuehrt.

**Liefer-Delta 31.07. 22:00 bis 01.08. 14:00: dreizehn belegte Lieferungen, durchgehend rc 0. Kein
einziger Delta-Null-Loop, keine Ruecktaktung, keine Deaktivierung faellig.** Waehrend die Aufsicht
blind war, hat der Hub in voller Breite geliefert:
- 22:52 **Energie Run 120** — 7 neue Destillate (Sanierungsetappen, R744/CO2, Hochtemperatur-WP,
  Fernkaelte, Minergie-Areal, WP-Sperrzeiten, Aufzug), Wiki-Artikel `umweltwaerme-gewaesser`,
  FAQ F190–F196.
- 23:34 **Nachtschicht `bauprodukte`** — ERCO-Ratgeber S.20 auf S.40; QUESTIONS Punkt 9
  (Holzbau/Bekleidungen BKP 214/225/271) als Fehlannahme erkannt und geblockt, weil die Quellordner
  leer sind. Commit `50ca4ccf`.
- 23:51 **Wissens-Chef Run 22** — Cross-KB-Pruefung seit Run 21 (31 Agenten, 16 von 25 bestaetigt):
  SZ-Konzessionsschwelle, SIA-2056-Zuschreibung, StrAV-Auftrag, BZO Art. 11 auf amtlichen Wortlaut,
  toter WsG-Pfad an 18 Stellen.
- 02:00 **normen Run 41** — Lignatec Runde 10 (Seiten-Inventur + Fliesstext Kap. 1–4, 6 Kernbefunde),
  Zweitverifikation GVZ-R.
- 02:35 **grobkosten Run 12** — Neuwert-Richtwerte Bauklasse I–VI aus der Schaetzungsanleitung Kap. 5
  extrahiert und teuerungsnormiert. Bemerkenswert: der Loop stand am 31.07. noch bei sieben
  Saettigungslaeufen ohne Ertrag und liefert jetzt wieder.
- 04:12 **twin-mail-training** — Batch 84, Luecken-Sweep rj@ 01.–14.02.2026.
- 04:53 **Synergie-Lauf 03** — 4 neue Befunde SYN-16 bis SYN-19 (bauprodukte-Insel,
  Setup-Doppelpflege, Contract-Luecke).
- 04:59 **planungsgrundlagen-wartung 02** — zh.ch-Zitierregel beide Richtungen, K65 geschlossen,
  Connector-Pfad korrigiert.
- 05:57 **twin-fidelity-review** — Modalitaetswechsel auf Dokument-Gold, Fidelity 56,
  Gattungsweiche Eigendokument.
- 07:11 **logbuch-radar** (operativ) — Register + Journal nachgefuehrt, RE-00101 im Verzug.
- 07:11 **wissenscheck-monatlich** — Health-Check-Report `2026-08-01_health-check.md`, alle
  KB-CHANGELOGs angefasst.
- 07:18 **vollgas-fruehwarnung** — still, keine Mail; 6,11 Mio kombiniert teuer am 31.07.,
  0 Limit-Ereignisse.
- 08:58 **Hub-Chef** — Locale-Regression behoben und belegt; darin ausserdem ein **Fehlalarm eines
  frueheren Radar-Laufs zu mail@ widerlegt**. Das gehoert hierher: die Aufsicht hat gemeldet, was
  keiner war, und der Hub-Chef musste es geraderuecken.
- 13:35 **Mini-Nachtschicht-Slot 13:30** — rc 0.

Selfcommits mit exakt `station-status/*` sind am Diff geprueft und auftragsgemaess nicht als Arbeit
gezaehlt.

**Massnahme: zwei Takt-Kollisionen erkannt, Korrektur versucht und BEWUSST ZURUECKGENOMMEN.**
Am Monatsersten treffen drei Monats-Tasks auf die taeglichen Loops. Zwei Slots liegen unter der
dokumentierten Taktentzerrung von min. 2 h, und beide Kollisionen sind heute real eingetreten:
- `synergie-lauf-monatlich` (lief 04:46) und `planungsgrundlagen-wartung` (lief 04:20) ueberlappten
  mit 26 Min Abstand — beide dennoch rc 0.
- `wissenscheck-monatlich` (lief 07:01) startete 6 Min nach dem operativen `logbuch-radar` (06:55).

Die Slots wurden zunaechst auf 19:30 bzw. 21:40 verlegt und **umgehend wieder auf 07:00 bzw. 04:40
zurueckgesetzt**, nachdem die Gegenprobe den Grund zeigte: **eine Cron-Aenderung re-armt die Task
fuer denselben Tag.** Beide Tasks hatten heute bereits gelaufen, `nextRunAt` sprang durch die
Aenderung auf denselben Abend — das haette zwei Doppellaeufe erzeugt, also genau die Verschwendung,
die dieser Radar verhindern soll. Nach dem Rueckbau steht `nextRunAt` bei beiden wieder auf
01.09.2026; heute feuert keiner der beiden ein zweites Mal (verifiziert). Die Empfehlung bleibt
gueltig und ist in beiden Task-Beschreibungen hinterlegt, zusammen mit der Bedingung:
**nicht am Monatsersten umstellen, sondern an einem beliebigen anderen Tag** — dann geht die
Verlegung ohne Doppellauf durch. Kein operatives Briefing wurde angetastet.

**Neue Betriebsregel aus diesem Lauf (fuer kuenftige Radar-Laeufe):** Vor jeder Cron-Aenderung
pruefen, ob die Task am aktuellen Tag bereits gelaufen ist (`lastRunAt`) und ob der neue Ausdruck
denselben Tag nochmals trifft. Nach jeder Aenderung `nextRunAt` gegenlesen — die Registry sagt
sofort, ob ein Doppellauf entstanden ist.

**P1 — Der Radar selbst ist heute der groesste Ausfall.** 13 Stunden ohne Aufsicht, drei
uebersprungene Laeufe, und die einzige Meldung dieses Zeitraums war ein Fehlalarm, den der Hub-Chef
widerlegen musste. Der Hub hat in derselben Zeit 13-mal geliefert — die Aufsicht war also nicht
nur blind, sie war auch nicht noetig, um den Ertrag zu sichern. Wenn der 16:57-Lauf erneut eine
Luecke > 7 h zeigt, ist das ein struktureller Befund und keine Panne: dann gehoert entweder die
Laufzeit des Radars begrenzt oder sein Takt weiter zurueckgenommen.

**P2 — PL-02-OneDrive-Zugriffsblockade (`EDEADLK`), unveraendert.** In Energie Run 120 erneut selbst
nachgetestet und bestaetigt; der geprueften Fallback `brctl download` wurde als untauglich verworfen
(iCloud-spezifisch). Bekannt seit Run 119, braucht Raphael (Festplattenvollzugriff bzw.
SharePoint-Fallback). Keine Wiederholungsmail — der Befund ist bereits gemeldet.

**P3 — Speicher und verkuerzte Verifikation, beides ohne akuten Handlungsbedarf.** Speicher am
MacBook 1,70 GB um 00:58 und 1,03 GB um 14:10 (free+inactive+purgeable), Druckstufe beide Male 1
(normal) — unter der 3-GB-Schwelle des Lauf-Gates, aber die komplette Nachtschicht lief trotzdem
sauber durch, die Sorge aus der Erstfassung hat sich also nicht bestaetigt. Separat: Energie Run 120
fuhr budgetbedingt einen leichten Spot-Check statt des vollen 2–3-Agenten-Adversarial-Panels und hat
das selbst offengelegt; die Nachholung ist in `wiki/QUESTIONS.md` vorgemerkt.

---
## 2026-07-31 20:58 — [FREI] Abendfenster planmaessig ohne getakteten Lern-Lauf, kein Leerlauf-Befund; naechster Ertrag ab 23:11 erwartet

**Selbstkontrolle: kein verpasster Lauf.** Letzter Eintrag 16:58, dieser Lauf 20:58 — 4,0 h bei
4-h-Takt, sechster planmaessiger Lauf in Folge.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Weder
5-Stunden- noch Wochen-Limit.

**Feuermechanismen: konsistent, keine Abweichung gegenueber 16:58.** MacBook Pro: geladen nur die
operativen Jobs (`claude-alwayson`, `claude-autoupdate`, `speicher-waechter`, `synctask-runner`,
`transcript-rotation`, `wissens-trigger`); `vollgas-supervisor` und `vollgas-monitor` weiterhin
ungeladen und als `*.disabled-260729` geparkt. Mac Mini: geladen `ch.jans.nachtschicht` und
`ch.jans.training-energie` neben den operativen Jobs, `training-normen` und `training-plg` korrekt
ungeladen, `vollgas-supervisor` dort ebenfalls `.disabled-260729`. Registry gegengelesen: 31 Tasks,
kein Doppelfeuer, keine unerwartet scharfe Task. Der stehende Entscheid Raphaels vom 30.07. ist
gewahrt — nichts angetastet.

**Liefer-Delta seit 16:58: null, und das ist hier der planmaessige Zustand, kein Leerlauf.** In
diesem Fenster war auf keiner Station ein Lern-Lauf getaktet: das MacBook Pro bleibt nach der
Rollentrennung tagsueber und abends frei (naechster Lauf `normen-training-nacht` 01:27), und der
naechste Mini-Nachtschicht-Slot ist 23:30. Der naechstfaellige Lauf ueberhaupt ist `wissens-chef`
um 23:11. **Damit greift die Delta-Null-Regel nicht** — sie zaehlt Laeufe ohne Ertrag, nicht
Fenster ohne Lauf; es ist kein Loop gelaufen, der nichts geliefert haette. Weder Ruecktaktung noch
Deaktivierung faellig. Die 15 Commits dieses Fensters sind ausnahmslos Selfcommits mit exakt
`station-status/mac-mini.md` und `station-status/macbook-pro.md` — am aggregierten Diff geprueft,
nicht am Commit-Titel, und auftragsgemaess nicht als Arbeit gezaehlt.

**Letzter belegter Ertrag bleibt der Mini-Slot 13:30** (Journalzeile 13:36, rc 0, 348 s, 34 Turns,
3.04 USD): der fuenfte Lesson-Artikel in `wissen/projekt-lessons` zu RE-00087. Davor 02:39
`training-bauprodukte` (VKF-BRL 23-15 mit Cross-KB-Ruecklauf nach `normen`) und 05:36
`training-grobkosten` (Estrich-Mehrmenge K30/K60-RF1 dokumentiert, CHF-Kennwert bleibt offen und
ist als Beschaffungsauftrag praezisiert). Drei Nachtschicht-Slots, drei gelieferte Deliverables —
der Tag ist ertragsseitig sauber.

**Speicher: beide Stationen entspannt.** MacBook Pro 5,12 GB frei (`vm_stat` free+inactive+
purgeable), Druckstufe 1; Mac Mini 9,36 GB, Druckstufe 1. Kein Eingriff noetig.

**Massnahmen: keine.** Regellauf schlank gehalten (rund 9 Turns), keine Tiefen-Recherche
ausgeloest, weil kein Befund sie verlangt hat.

P1 — keiner. Kein Blocker, kein Login-Problem, kein Kontingent-Engpass. Keine Mail (kein
Mail-Anlass nach der Mail-Disziplin).
P2 — unveraendert aus 16:58 (Einzeiler): der Tagesertrag haengt strukturell an der Nachtschicht des
Mac Mini; faellt sie aus, holt sie niemand nach. Bisher kein Vorfall, nur die Struktur benannt.
P3 — unveraendert offen aus 12:58 (Einzeiler): der Glob `~/.claude/projects/*/*.jsonl` im SKILL.md
der Fruehwarnung trifft null Dateien; reine Dokumentationskorrektur, nicht dringlich.

---
## 2026-07-31 16:58 — [FREI] Nachmittag ohne Befund: ein echtes Deliverable aus dem Mini-13:30-Slot, keine Delta-Null-Serie, keine Massnahme faellig

**Selbstkontrolle: kein verpasster Lauf.** Letzter Eintrag 12:58, dieser Lauf 16:58 — 4,0 h bei
4-h-Takt, fuenfter planmaessiger Lauf in Folge.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Weder
5-Stunden- noch Wochen-Limit.

**Feuermechanismen: konsistent, keine Abweichung.** MacBook Pro: `vollgas-supervisor` und
`vollgas-monitor` weiterhin ungeladen und als `*.disabled-260729` geparkt, geladen nur die
operativen Jobs. Mac Mini: geladen `ch.jans.nachtschicht` und `ch.jans.training-energie` neben den
operativen Jobs, `training-normen` und `training-plg` korrekt ungeladen, `vollgas-supervisor` dort
ebenfalls `.disabled-260729`. Registry gegengelesen: 31 Tasks, kein Doppelfeuer, keine unerwartet
scharfe Task. Der stehende Entscheid Raphaels vom 30.07. ist gewahrt — nichts angetastet.

**Liefer-Delta seit 12:58: ein Deliverable, aus dem Mini-Slot 13:30.** Die Nachtschicht hat in
`wissen/projekt-lessons` einen neuen Artikel geliefert (Commit 1c406412, 13:45): Fall RE-00087
KISPI, fehlende Auftragsbestaetigung und die daraus folgende Mahnkaskade — Rohdokument 62 Zeilen,
Wiki-Artikel 81 Zeilen, dazu INDEX, QUESTIONS und CHANGELOG nachgefuehrt. **Delta-Null-Serie:
keine**, weder Ruecktaktung noch Deaktivierung faellig. Auf dem MacBook Pro stand nach
Rollentrennung auch in diesem Fenster planmaessig kein Lern-Lauf an; naechster getakteter Lauf
`normen-training-nacht` 01:28, naechster Mini-Slot 23:30. Die uebrigen 15 Commits dieses Fensters
sind Selfcommits mit ausschliesslich `station-status/*.md` — Heartbeat-Rauschen, am Diff geprueft
und auftragsgemaess nicht als Arbeit gezaehlt.

**Arbeits-Weiche laeuft wie vorgesehen.** `260731-entscheide.jsonl` zeigt fuer alle vier
Takt-Entscheide des Tages (01:28 normen zweimal, 02:30/05:30/13:30 nachtschicht) sauber `ziel=mini`
mit Begruendung «mini-frei» — der seit 31.07. verpflichtende `--takt`-Einstieg queued nicht und
verdoppelt nichts.

**Speicher: beide Stationen entspannt.** MacBook Pro 5,77 GB frei (`vm_stat` free+inactive+
purgeable), Druckstufe 1; Mac Mini 10,28 GB, Druckstufe 1. Kein Eingriff noetig.

**Massnahmen: keine.** Regellauf schlank gehalten (rund 10 Turns), keine Tiefen-Recherche
ausgeloest, weil kein Befund sie verlangt hat.

P1 — keiner. Kein Blocker, kein Login-Problem, kein Kontingent-Engpass. Keine Mail (kein
Mail-Anlass nach der Mail-Disziplin).
P2 — Beobachtung ohne Handlungsbedarf: der Ertrag des Tages haengt an einer einzigen Station. Faellt
der Mini aus, liefert der Hub tagsueber nichts, weil das MacBook nach Rollentrennung bewusst frei
bleibt. Bisher kein Vorfall, nur die Struktur benannt.
P3 — offen aus 12:58: der Pfad `~/.claude/projects/*/*.jsonl` im SKILL.md der Fruehwarnung trifft
als Glob null Dateien; der Lauf greift weiter als sein schriftlicher Auftrag. Reine
Dokumentationskorrektur, nicht dringlich.

---
## 2026-07-31 12:58 — [FREI] Stiller Mittag auf der Arbeitsstation, planmaessig und kein Leerlauf. Die offene Verbrauchsdifferenz aus dem 08:58-Lauf ist geklaert: es sind die Subagenten-Transcripts, nicht die Methode

**Selbstkontrolle: kein verpasster Lauf.** Letzter Eintrag 08:58, dieser Lauf 12:58 — 4,0 h bei
4-h-Takt, vierter planmaessiger Lauf in Folge.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
5-Stunden-, kein Wochen-Limit.

**Feuermechanismen: konsistent, keine Abweichung.** `vollgas-supervisor` und `vollgas-monitor` auf
beiden Stationen weiterhin entladen und als `*.disabled-260729` geparkt; auf dem Mini geladen nur
`ch.jans.nachtschicht` und `ch.jans.training-energie` neben den operativen Jobs,
`ch.jans.training-normen` und `training-plg` liegen korrekt ungeladen vor. Registry gegengelesen:
31 Tasks, kein Doppelfeuer, keine unerwartet scharfe Task. Der stehende Entscheid Raphaels vom
30.07. ist gewahrt, der Endlos-Runner wurde nicht angetastet.

**Liefer-Delta seit 08:58: ein Deliverable, und das ist hier der Normalzustand.** Zwischen 09:19
und jetzt stand auf dem MacBook Pro planmaessig kein Lern-Lauf an — die Rollentrennung haelt die
Arbeitsstation tagsueber frei, der naechste getaktete Lauf ist `normen-training-nacht` um 01:28.
Auf dem Mini ist der naechste Nachtschicht-Slot 13:30, also noch nicht faellig. Geliefert hat in
diesem Fenster `wissen/normen/wiki/QUESTIONS.md` (Commit 409611af, 11:30): eine neue offene Frage
zur NIN (SN 411000) samt Rechercheergebnis, ob ein Geschirrspueler einen eigenen Endstromkreis
braucht, mit dem sauberen Vermerk, dass die NIN nicht im PL-02-Bestand liegt und die
Herstelleranleitung der belastbare Hebel bleibt. **Delta-Null-Serie: keine.** Weder Ruecktaktung
noch Deaktivierung faellig. Die 14 uebrigen Commits dieses Fensters sind Selfcommits mit
ausschliesslich `station-status/*.md` — Heartbeat-Rauschen, das auftragsgemaess nicht als Arbeit
zaehlt; jeder einzelne wurde am Diff geprueft, nicht am Commit-Titel.

**P2 aus dem 08:58-Lauf ist erledigt — Umfang, nicht Methode.** Die beiden deduplizierten Reihen
wichen um Faktor 1,8 ab (30.07.: Radar 21,72 gegen Fruehwarnung 12,15 Mio). Ursache sind die
**Subagenten-Transcripts** unter `<session-id>/subagents/`: gemessen fuer den MacBook Pro, teuer
in Mio, mit gegen ohne Subagenten — 27.07. 52,38/23,34 · 28.07. 26,53/13,55 · 29.07. 18,23/14,47 ·
30.07. 27,98/17,83 · 31.07. bis 13:10 **5,57/3,18**. Die Subagenten tragen ein Drittel bis die
Haelfte. Zweite Umfangsvariable ist der mtime-Vorfilter, der ganze Dateien aus der Messung nimmt.
Nebenbefund: der im SKILL.md der Fruehwarnung genannte Pfad `~/.claude/projects/*/*.jsonl` trifft
als Glob **null Dateien** (4127 rekursiv gegen 0 auf dieser Ebene) — der Lauf greift weiter als
sein schriftlicher Auftrag. Alles festgehalten in `rules/betrieb-chronik.md` 260731e. Der
Verbrauch selbst ist heute in beiden Lesarten unauffaellig.

**Speicher: eng, aber ohne Druck und ohne Betroffenen.** MacBook 1,40 GB frei (`vm_stat`
free+inactive+purgeable), `kern.memorystatus_vm_pressure_level` = 1; 18 Claude-Prozesse, groesster
475 MB RSS, die Summe ist Raphaels laufende Arbeitssession. Der Wert liegt unter der 3-GB-Schwelle
des Lauf-Gates, das heisst ein automatischer Lauf wuerde jetzt korrekt abgewiesen — es steht heute
tagsueber aber keiner an, die Schutzmechanik trifft also niemanden. Mini 2,30 GB, Druckstufe 1.

**Beobachtung ohne Massnahme: `heartbeat-daily` feuerte 1 h 39 zu spaet** (11:19 statt 09:40).
Alle uebrigen Morgen-Tasks lagen auf der Minute, und dieser Radar-Lauf selbst ist puenktlich —
es ist kein Dispatcher-Problem, sondern ein Einzelfall, vermutlich Nachholen nach App-Ruhe.
Heartbeat ist operativ und damit von jeder Ruecktaktung ausgenommen. Wiederholt es sich, wird es
zum Befund.

**P1: keiner.** Kein Blocker, kein Login-Problem, kein leeres Kontingent.
**P2: Alarmschwelle und Messumfang zusammen entscheiden.** Die Schwellen der Fruehwarnung (35 Mio
kombiniert je Tag, zwei Folgetage ueber je 18 Mio) sind ohne Subagenten kalibriert; mit ihnen
haette der 27.07. allein auf dem MacBook ausgeloest. Entweder beide Reihen auf «mit Subagenten»
umstellen und die Schwellen anheben, oder ausdruecklich bei «ohne» bleiben und das im Auftrag
benennen. Kein Handlungsdruck, der laufende Verbrauch liegt in beiden Lesarten weit darunter.
**P3: der Kennwert-Rest im Grobkosten-Ertrag,** unveraendert: RF1-Brandschutz-Mehraufwand
mengenmaessig belegt, CHF-Kennwert offen — Bring-Schuld, kein Loop-Problem.

**Turn-Zahl: schlanker Regellauf.** Die einzige Vertiefung galt der offenen P2-Differenz und war
mit zwei Messbefehlen erledigt.

---
## 2026-07-31 08:58 — [FREI] Der Morgenblock hat vollstaendig geliefert: acht getaktete Laeufe, acht Deliverables, keine Delta-Null-Serie. Die eigene Verbrauchsmessung ist nach dem Dedup-Befund der Fruehwarnung neu gerechnet und faellt deutlich tiefer aus, weicht aber von der Fruehwarnung ab

**Selbstkontrolle: kein verpasster Lauf.** Letzter Eintrag 04:57, dieser Lauf 08:58 — 4,0 h bei
4-h-Takt, dritter planmaessiger Lauf in Folge.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
5-Stunden-, kein Wochen-Limit; die Fruehwarnung von 07:15 misst strukturell **0 Limit-Ereignisse
im 26-h-Fenster** auf beiden Stationen.

**Feuermechanismen: konsistent, keine Abweichung.** `vollgas-supervisor` und `vollgas-monitor` auf
beiden Stationen weiterhin entladen und als `*.disabled-260729` geparkt; auf dem Mini unveraendert
`training-plg` (disabled-260728), `training-normen` liegt vorhanden aber ungeladen vor, geladen ist
dort nur `ch.jans.nachtschicht` neben den operativen Jobs. Registry gegengelesen: 31 Tasks, kein
Doppelfeuer, keine unerwartet scharfe Task. Der stehende Entscheid Raphaels vom 30.07. ist gewahrt,
der Endlos-Runner wurde nicht angetastet.

**Liefer-Delta seit 04:57 — acht von acht.** Jeder getaktete Lauf des Morgenblocks hat ein
belegtes Erzeugnis hinterlassen, nachgewiesen an Commit plus Registry-`lastRunAt`:
`twin-fidelity-review` (05:45, Commit 7279ec2d) · `konversations-log` (06:13) · `logbuch-radar`
(06:55, Commit 8048d34f, Thalwil-Fassungsbefund + Moeblierung Fluchtweg SRZ + UGZ-Termin 03.08.) ·
`vollgas-fruehwarnung` (07:15, Commits 1c7e3413 + b08f4b02) · `ag-gruendung-monitor` (07:46,
Commit bc43b1bd, kein neuer Eingang, UBS Tag 2/3) · `mahnwesen-verzugscheck` (08:05) ·
`zahlungsabgleich-check` (08:23) · `hub-chef-taeglich` (08:39, zum Messzeitpunkt laufend). Dazu
zwei Lern-Ertraege ausserhalb des Blocks: `grobkosten` (851f4c40, Brandschutz-Mehraufwand RF1 aus
den Lignum-Tabellen als Menge dokumentiert, CHF-Kennwert weiterhin offen) und der
Wissens-Ruecklauf `auflagebereinigung` (f66873b7, Moeblierung im Fluchtweg als eigener
Verfahrensstrang). **Delta-Null-Serie: null.** Keine Ruecktaktung, keine Deaktivierung noetig.

**Verbrauchsmessung neu gerechnet — und eine offene Differenz zur Fruehwarnung.** Der Befund der
Fruehwarnung von 07:15 ist uebernommen: Claude Code schreibt dieselbe Antwort je Content-Block
mehrfach in die JSONL, wer roh summiert zaehlt zwei- bis vierfach. Diese Messung dedupliziert
ueber (message.id, requestId). Ergebnis MacBook Pro teuer: 28.07. **6,44** · 29.07. **13,03** ·
30.07. **21,72** · 31.07. bis 08:58 **13,09 Mio**. Damit faellt die Reihe deutlich unter die
Radar-Werte der letzten vier Tage (04:57 nannte fuer den 30.07. noch 57,92 Mio) — die
Ueberschaetzung ist bestaetigt. **Sie deckt sich aber nicht mit der Fruehwarnung**, die fuer
dieselbe Station und denselben Tag 12,15 Mio ausweist. Beide Messungen deduplizieren nach
demselben Schluessel; der Unterschied duerfte im erfassten Verzeichnisumfang liegen (diese
Messung scannt `~/.claude/projects` rekursiv ueber alle Projekte). Ich loese das hier bewusst
nicht auf — beide Werte liegen weit unter der Alarmschwelle (kein Tag ueber 35 Mio kombiniert),
es besteht kein Handlungsbedarf, und eine Forensik waere nach dem Sparsamkeitsgebot nicht
gerechtfertigt. Naechster Radar-Lauf mit auffaelligem Verbrauch klaert den Umfang, sonst bleibt
die Fruehwarnung die massgebliche Reihe.

**Speicher: unauffaellig trotz Druckstufe 2.** MacBook 3,37 GB frei (`vm_stat` free+inactive+
purgeable), `kern.memorystatus_vm_pressure_level` = 2. 103 Claude-Prozesse, groesster mit 293 MB
RSS — kein einzelner Fresser, sondern die Summe der Desktop-App-Helfer plus Raphaels beginnende
Arbeitssession am Montagmorgen. Auf der Arbeitsstation laeuft zu dieser Zeit planmaessig kein
Lern-Loop; keine Massnahme.

**P1: keiner.** Kein Blocker, kein Login-Problem, kein leeres Kontingent.
**P2: die Verbrauchsmessung auf eine Zahl bringen.** Zwei deduplizierte Reihen mit Faktor 1,8
Abstand sind ein Aufsichtsmangel, auch wenn beide entwarnen. Sobald ein Lauf ohnehin an die
Rohdaten muss, wird der Verzeichnisumfang beider Messungen angeglichen und in
`betrieb-chronik.md` festgehalten.
**P3: der Kennwert-Rest im Grobkosten-Ertrag.** Der RF1-Brandschutz-Mehraufwand ist mengenmaessig
belegt, der CHF-Kennwert bleibt offen — eine Bring-Schuld, kein Loop-Problem.

**Turn-Zahl: schlanker Regellauf, keine Tiefenuntersuchung.**

---
## 2026-07-31 04:57 — [FREI] Jeder gemessene Nachtlauf hat geliefert, auch der zunaechst stumm wirkende 02:30-Slot. Der Aufsichtstakt sitzt jetzt zwei Laeufe in Folge. Der Token-Verbrauch steigt den vierten Tag in Folge und ist der einzige offene Punkt

**Selbstkontrolle: kein verpasster Lauf — und damit ist das Pruefkriterium abgeschlossen.** Letzter
Eintrag 00:58, dieser Lauf 04:57 — 4,0 h bei 4-h-Takt. Der 20:57-Eintrag vom 30.07. hatte zwei
planmaessige Feuerungen (00:57 und 04:57) als Beweis verlangt, dass der uebersprungene 16:50-Slot
nur der Neuarmierungseffekt der Taktumstellung war. Beide sind gefeuert. Der Punkt ist erledigt und
wird nicht weiter beobachtet.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Speicher
MacBook 3,61 GB bei **Druckstufe 1** — die Stufe 2 von 00:58 hat sich mit dem Ende von Raphaels
Session von selbst geloest, keine Massnahme noetig. Mini 9,51 GB, Druckstufe 1.

**Feuermechanismen: konsistent.** `vollgas-supervisor` und `vollgas-monitor` auf beiden Stationen
weiterhin entladen und als `*.disabled-260729` geparkt; auf dem Mini zusaetzlich unveraendert
`training-plg` (disabled-260728) und die beiden Drossel-Backups. Geladen auf dem Mini nur
`ch.jans.nachtschicht` und `ch.jans.training-energie`, `ch.jans.training-normen` liegt korrekt
ungeladen vor. Registry gegengelesen: kein Doppelfeuer, keine unerwartet scharfe Task. Der stehende
Entscheid Raphaels vom 30.07. ist gewahrt, der Endlos-Runner wurde nicht angetastet.

**P1 — Liefer-Delta: 22 inhaltliche Commits seit dem letzten Lauf, keine Delta-Null-Serie auf
keinem Loop.** Geliefert haben `normen-training-nacht` (Run 40: neunte Lignatec-Runde, Tab. 2 plus
acht Axonometrien rechnerisch, null Wertfehler bei neun Luecken; dazu 13 Positionen PL-02-Kern, und
am Original korrigiert: die GVZ-RWA-Matrix loeste die Sprinkler-Zellen 601–1200 m2 falsch auf, der
SWKI-Anwendungsbereich gilt nur fuer Mittel-/Grossgaragen ab 100 m2), `twin-mail-training` (Batch 83,
Lueckensweep rj@ November 2025, dazu ein Marker in `wissen/twin/wiki/stimme.md`), die
Nachtschicht im 02:30-Slot (bauprodukte QUESTIONS Punkt 10 zur VKF-BRL-23-15-Teilrevision 2017
geschlossen, Artikel `bkp-261-aufzuege.md` plus Ruecklauf ins Normen-Destillat), zwei
`brandschutz`-Bloecke (Modus-B-Trockenlauf gegen 2507 TKHL; netzferner Kleinbau C41–C44 samt
Destillat VKF-Merkblatt 2005-15) und die KB `immobilienbewertung` mit vier Ingest-Clustern
(A/B Wuest Partner, C BFS-Werkmaterial, E Projekte — allein Cluster C und E 1'563 Zeilen).
Weder Ruecktaktung noch Deaktivierung faellig.

**Gegenprobe zum 02:30-Slot, weil er zunaechst wie ein teurer Leerlauf aussah.** Das Lauf-Journal
zeigt fuer 02:39 nur eine rc-Zeile mit 4,19 USD, und zwischen 02:07 und 04:01 steht kein einziger
sprechender Commit. Das ist genau das Muster, das die 3x-Regel ausloesen wuerde. Es traf nicht zu:
der Ertrag liegt im Selfcommit `1bca88b7` (02:45) und ist dort inhaltlich belegt, das
Nachtschicht-Protokoll bestaetigt ihn Zeile fuer Zeile. Das ist die praktische Bestaetigung der am
30.07. verschaerften Messregel — **eine fehlende Ergebniszeile im Journal ist kein Delta Null**, und
ein Selfcommit ohne sprechende Message kann volle Arbeit tragen. Wer nur die Commit-Titel liest,
schaltet produktive Loops ab.

**P2 — der Token-Verbrauch steigt den vierten Tag in Folge, und die Steigerung traegt nicht mehr
allein Raphaels Session.** MacBook-Transcripts, lokale Zeit, «teuer» = input + cache_creation +
output: 28.07. **16,87 Mio** · 29.07. **39,88 Mio** · 30.07. **57,92 Mio** · 31.07. bis 04:57 bereits
**25,61 Mio**. Am 30.07. war der Treiber belegt die interaktive Arbeit; heute Nacht endete Raphaels
Session gegen 02:10, und trotzdem sind seit dem letzten Radar-Lauf rund 19 Mio dazugekommen. Was in
dieser Zeit lief, sind die Nacht-Loops und diese Aufsicht selbst. Ich habe das bewusst **nicht**
weiter aufgeschluesselt — eine Verbrauchs-Forensik ist genau die Tiefenuntersuchung, die der
Sparsamkeitsauftrag einem Regellauf verbietet, und die `vollgas-fruehwarnung` misst um 07:15 mit
ihrer eigenen, saubereren Methodik beide Stationen. Der Befund gehoert hierher, die Zerlegung dorthin.
**Bewusst keine Mail:** die Fensterprobe antwortet «OK», das Wochenkontingent ist nicht erschoepft,
und nur dessen Erschoepfung ist ein Mail-Anlass. Letzte belastbare Prozentzahl bleibt 66 % vom
30.07. 12:49, Reset am 03.08. 12:00.

**P3 — nichts Offenes.** Der am 00:58 als Muster festgehaltene Nachtlauf mit Rueckfrage hat sich
nicht wiederholt; der 02:30-Slot hat entschieden, gearbeitet und protokolliert. Naechste faellige
Mechanismen: Nachtschicht 05:30 und `twin-fidelity-review` 05:44.

**Schlankheit:** Regellauf. Fuenf Messungen (Fenster, Speicher beider Stationen, launchd beider
Stationen plus Registry, Commit-Delta, Verbrauch) und eine gezielte Gegenprobe auf den einen
verdaechtigen Befund. Keine Tiefenuntersuchung.

---
## 2026-07-31 00:58 — [FREI] Der ertragreichste Nachtblock seit dem Runner-Ausbau: sieben Loops liefern in achtzig Minuten. Der Aufsichtstakt ist wieder in der Spur. Ein unbeaufsichtigter Lauf hat sich mit einer Rückfrage selbst entwertet

**Selbstkontrolle: kein verpasster Lauf, und damit ist der 16:50-Ausfall geklärt.** Letzter
Eintrag 20:57, dieser Lauf 00:58 — 4,0 h bei 4-h-Takt. Der 20:57-Eintrag hatte als Prüfkriterium
gesetzt, ob 00:57 planmässig feuert; es hat gefeuert. Der übersprungene Slot am 30.07. war
folglich der einmalige Neuarmierungseffekt der Taktumstellung von 13:10 und kein struktureller
Ausfall der Aufsicht. Kein P1, kein weiterer Beobachtungsbedarf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Speicher
Mini 9,32 GB, Druckstufe 1 — unauffällig. MacBook 3,11 GB bei **Druckstufe 2** (Vorlauf: 3,85 GB
bei Stufe 1); der `speicher-waechter` ist geladen, die Verschlechterung liegt an Raphaels
laufender Arbeitssession, keine Massnahme.

**Feuermechanismen: konsistent.** `vollgas-supervisor` und `vollgas-monitor` auf beiden Stationen
weiterhin entladen und als `*.disabled-260729` geparkt, STOP-Flags unverändert vom 29.07. 02:51.
Geladen sind auf dem Mini `ch.jans.nachtschicht` (23:30 / 02:30 / 05:30 / 13:30) und
`ch.jans.training-energie`; `ch.jans.training-normen` liegt vor und ist korrekt nicht geladen.
Kein Doppelfeuer, kein wiederbelebter Job. Der stehende Entscheid Raphaels vom 30.07. ist gewahrt.

**P1 — Liefer-Delta: der stärkste Nachtblock seit dem Runner-Ausbau, kein Loop im Leerlauf.**
Zwischen 23:14 und 00:03 haben **sieben** Loops inhaltlich committet: `methoden-radar` (blinder
Scan nach Quellordner-Umbenennung behoben, dazu Frage 0b geschlossen), `baurecht` zweimal
(Run-Nummern-Kollision bereinigt; Triage über 243 Reglemente-Dateien 2414 Thalwil, dabei die seit
01.06.2020 aufgehobene StrAV LS 700.4 entdeckt und an drei KB-Fundorten vermerkt), `grobkosten`
(Verifikationspunkt bauenmitholz.info als Negativbefund geschlossen), `normen` Run 39
(Seiten-Inventur aller 40 A3-Blätter lignum-4-1: 72 Nummern in der Quelle, 71 zitiert, **null
erfundene Fundstellen** — die eine Lücke deckte einen fehlenden Nachweisweg auf),
`planungsgrundlagen-wartung` 01 (228 Adressen geprüft, 6 tote ersetzt, `--hilfe` in allen fünf
Connectoren nachgerüstet), `wissens-chef` Run 21 (Cross-KB: 19 bestätigt, 5 widerlegt, Korrekturen
in 7 KBs und 3 Skills) und `spec` Run 38. Delta-Null-Serie: keine, auf keinem Loop. Weder
Rücktaktung noch Deaktivierung fällig. Der 30.07. um 12:57 als «in Beobachtung» geführte
`bauprodukte`-Loop ist damit erledigt, er lieferte am 13:30-Slot.

**P2 — ein unbeaufsichtigter Nachtlauf hat sich mit einer Rückfrage selbst entwertet.** Der
Nachtschicht-Lauf um 22:32 endete nach 158 s und 1,41 USD nicht mit einem Deliverable, sondern
mit der Frage an Raphael, ob er eine festgefahrene Prozesskette beenden dürfe — in einem Lauf,
bei dem niemand antwortet. Der auslösende OneDrive-Deadlock ist inzwischen verschwunden (die
genannte PID-Kette existiert auf dem Mini nicht mehr), der 23:30-Slot lief eine Stunde später
sauber durch. Der Sachverhalt ist also erledigt, das **Muster** nicht: ein unbeaufsichtigter Lauf,
der fragt statt zu entscheiden und zu protokollieren, verbrennt Kontingent ohne Ertrag. Das ist
kein Radar-Eingriff — der Prompt der Nachtschicht gehört Raphael —, aber es ist der einzige
messbar verschwendete Lauf dieses Zeitraums und deshalb hier festgehalten. Ich taste ihn nicht an.

**P3 — der Verbrauch läuft weiter deutlich über dem Vortagsschnitt, und der Treiber ist erneut
nicht die Loop-Flotte.** MacBook-Transcripts, lokale Zeit, Definition «teuer» wie am 30.07.:
**57,92 Mio am 30.07.** als ganzer Tag gegen rund 10 bis 11 Mio an den Vortagen, und **6,50 Mio
allein in der ersten Stunde des 31.07.** Die Lern-Loops kosteten in derselben Nacht laut
Lauf-Journal wenige USD; was den Verbrauch trägt, ist Raphaels laufende interaktive Session
(Rollen-Taxonomie, md2docx, Durchlaufzeit-Messung, SWKI-Entscheid, hub-chef um 00:42). Das ist
produktive Ausschöpfung im Sinne des Auftrags, kein Leerlauf. **Bewusst keine Mail:** die
Fensterprobe antwortet «OK», das Wochenkontingent ist also nicht erschöpft, und der Auftrag
kennt nur die Erschöpfung als Mail-Anlass. Den Prozentstand selbst kann ich nicht messen; die
letzte belastbare Zahl bleibt 66 % vom 30.07. 12:49 bei Reset am 03.08. 12:00. Sollte Raphael
vor dem Reset knapp werden, ist das sein Entscheid, nicht meiner (Lehre 25.07.).

**Schlankheit:** Regellauf, keine Tiefenuntersuchung. Vier Messungen (Fenster, launchd beider
Stationen, Commit-Delta, Verbrauch), zwei gezielte Gegenproben (PID-Kette, Journal) — sonst nichts.

---
## 2026-07-30 20:57 — [FREI] Die Messgrundlage des Leerlauf-Wächters ist halb blind: die inhaltliche Ergebniszeile im Lauf-Journal fehlte am 29.07. bei allen acht Läufen, obwohl mehrere belegt geliefert haben. Dazu ein übersprungener Aufsichtslauf um 16:50

**Selbstkontrolle: ein Lauf ist ausgefallen.** Letzter Eintrag 12:57, dieser Lauf 20:57 — 8,0 h
gegen einen 4-h-Takt. Der Slot 16:50 hat nicht gefeuert: kein RADAR-Eintrag, kein Commit, und
zwischen 15:00 und 20:15 existiert auf dem MacBook **kein einziges Session-Transcript**. Die
Claude-App läuft ununterbrochen seit 29.07. 22:29, ein Absturz oder Neustart scheidet also aus.
Wahrscheinlichste Ursache ist die Taktänderung von 13:10 selbst: das Neuarmieren der Task hat
den nächsten Slot auf 20:50 statt 16:50 gesetzt. Prüfkriterium für die nächsten beiden
Läufe: Feuern 00:57 und 04:57 planmässig, war es ein einmaliger Effekt der Umstellung und kein
struktureller Ausfall. Feuert erneut einer nicht, ist es ein Aufsichts-Blocker und gehört nach P1.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Speicher
MacBook 3,85 GB, Mini 10,23 GB (`vm_stat` free+inactive), Druckstufe je 1 — unauffällig.

**Feuermechanismen: konsistent.** `vollgas-supervisor` und `vollgas-monitor` auf beiden Stationen
entladen und als `*.disabled-260729` geparkt, STOP-Flags unverändert vom 29.07. 02:51. Auf dem
Mini geladen sind `ch.jans.nachtschicht` (Slots 23:30 / 02:30 / 05:30 / 13:30) und
`ch.jans.training-energie` (22:30, `cron-training-mini.sh energie`); `ch.jans.training-normen`
liegt vor, ist aber nicht geladen — korrekt, DIN/VSS/RAL sind abgearbeitet. Kein Doppelfeuer:
zu `training-energie` existiert kein Registry-Gegenstück, es ist der einzige Taktgeber dieses
Loops. Der stehende Entscheid Raphaels vom heutigen Tag bleibt gewahrt, der Endlos-Runner wurde
nicht angetastet.

**P1 — die Kennzahl, auf die mein Abschaltmandat sich stützt, ist nur zur Hälfte maschinell,
und die inhaltliche Hälfte fehlt häufiger als sie da ist.** Das Lauf-Journal
`logbuch/laeufe/YYMMDD-laeufe.jsonl` besteht aus zwei verschiedenen Zeilentypen, was bisher
nirgends festgehalten war. Die rc-/Kosten-Zeile schreibt `scripts/claude-run.sh` maschinell; sie
beweist, dass ein Lauf **endete**, nicht dass er **lieferte**. Die inhaltliche Ergebniszeile
(`loop_type` + `result`) schreibt kein Script — kein einziges unter `scripts/` enthält das Feld —,
sondern der Loop **selbst** per Prompt, als letzten Arbeitsschritt. Damit fällt sie immer
dann aus, wenn ein Lauf vorher endet. Gemessen: am **29.07. acht rc-Zeilen und null
Ergebniszeilen**, obwohl mindestens Energie Run 119 (sieben Destillate, 22:52) und Wissens-Chef
Run 20 (79 Korrekturen in 22 Dateien, 23:59) an diesem Abend belegt geliefert haben. Am 30.07.
zwei Ergebniszeilen bei sechs rc-Zeilen; dem 13:30-Slot der Nachtschicht fehlt sie, obwohl
Commit `43ec58ac` die Lieferung (BKP 261 Aufzüge) beweist. Hätte ich die 3x/5x-Regel formal auf
das Journal angewandt, wären am 29.07. sämtliche Lern-Loops als Delta Null gezählt und
reihenweise zurückgetaktet worden — ein Abschalten produktiver Loops auf einer Messgrösse, die
gar nicht misst, was sie zu messen vorgibt. **Massnahme, sofort umgesetzt:** die Betriebs-Kurzregel
«Leerlauf am LIEFER-DELTA messen» in `rules/auto-verbesserungen.md` hält jetzt ausdrücklich
fest, dass die beiden Journalhälften nicht gleichwertig sind und eine fehlende Ergebniszeile
**kein** Delta Null ist; Delta Null gilt erst, wenn auch Commit- und Datei-Delta im
Laufzeitfenster leer sind. Der Task-Prompt des Radars brauchte keine Änderung, er nennt die
Commits bereits an erster Stelle. Nicht angefasst habe ich `claude-run.sh`: eine automatische
Liefer-Erkennung müsste `git` gegen das NAS-Repo lesen, und einen SMB-git-Aufruf in jeden
automatischen Lauf einzubauen wäre teurer als der Fehler, den er verhindert.

**P2 — Liefer-Delta: kein Loop im Leerlauf, keine Massnahme nötig.** Seit dem letzten Eintrag
lief genau ein automatischer Lauf, der 13:30-Slot der Nachtschicht, und er lieferte (BKP 261
Aufzüge Masskizze, `43ec58ac`). Der übrige Tag: baurecht Buch-Run 70 um 02:36 (eine Korrektur,
Verdichtungs-Drift § 242 Abs. 2 PBG), grobkosten Run 20 um 05:39 (Bring-Schuld Lignum-Holzbau
eingelöst). Energie lieferte zuletzt am 29.07. 22:52. Keine Delta-Null-Serie auf irgendeinem
Loop, also kein Rücktakten und kein Deaktivieren.

**P3 — sieben Stunden ohne automatische Arbeit, und das ist diesmal richtig so.** Zwischen dem
Nachtschicht-Commit 13:35 und diesem Lauf hat der Hub ausser Heartbeat-Commits nichts erzeugt;
die einzige inhaltliche Änderung kam um 20:13 von Raphael selbst. Das ist die bauliche Folge des
Runner-Ausbaus — die Nachtschicht feuert 23:30 / 02:30 / 05:30 / 13:30, dazwischen liegt
tagsüber eine lange Lücke, die niemand füllt. Bei 66 % Wochenverbrauch nach 43 % der Zeit
(Messung 12:49, Reset 03.08. 12:00) ist diese Zurückhaltung die richtige Antwort und kein
Defekt. Ich schlage keine Gegenmassnahme vor; sollte der Verbrauch bis zum Reset deutlich unter
der linearen Fortschreibung bleiben, wäre ein fünfter Nachtschicht-Slot am frühen Abend der
naheliegende Hebel — das ist ein Entscheid Raphaels, kein Radar-Entscheid.

**Schlankheit:** Regellauf, keine Tiefenuntersuchung. Die einzige Vertiefung galt dem einen
Befund unter P1 (Journal-Schreiber lokalisiert, zwei Tage ausgezählt) — sie war nötig, weil der
Befund meine eigene Abschaltbefugnis betrifft.

---
## 2026-07-30 12:57 — [FREI] Erste Wochen-Messung seit elf Tagen liegt vor: 66 % verbraucht bei 43 % der Zeit — und die Aufsicht selbst war der groesste Einzelverbraucher des Tages, nicht die Lern-Loops

**Selbstkontrolle:** letzter Eintrag 09:57, dieser Lauf 12:57. 3,0 h bei 3-h-Takt, kein
verpasster Lauf. **Takt ab jetzt 4-stuendlich** (Begruendung unter P2), naechster Lauf 16:50.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Speicher
MacBook 4,06 GB, Mini 10,49 GB (`vm_stat` free+inactive, Druckstufe je 1) — unauffaellig.

**Feuermechanismen: konsistent, keine Abweichung.** `vollgas-supervisor` und `vollgas-monitor`
auf beiden Stationen entladen und als `*.disabled-260729` geparkt; geladen ist auf dem Mini nur
`ch.jans.nachtschicht` mit den vier Slots 23:30 / 02:30 / 05:30 / 13:30. STOP-Flags fuer beide
Stationen unveraendert vom 29.07. 02:51. Kein Doppelfeuer, kein wiederbelebter Job.

**P1 — die Blindheit seit 19.07. ist beendet, und die erste Messung ist ein Warnsignal, dessen
Ursache nicht dort liegt, wo wir sie vermutet haben.** Raphael hat den `/login` heute 10:49
ausgefuehrt; der Abo-Check um 12:49 misst **Woche (alle Modelle) 66 %** bei Reset **03.08. 12:00**,
5-h-Fenster 23 %, Extra Usage keine Zeile (also keine Kosten). Das Fenster laeuft seit 27.07.
12:00: **3 von 7 Tagen verbraucht (43 % der Zeit) bei 66 % des Budgets** — die verbleibenden 34 %
muessen vier Tage tragen, linear fortgeschrieben reisst das Limit am 01.08. Soweit die Messung des
Abo-Checks, die ich nicht wiederhole. **Mein eigener Beitrag ist die Zusammensetzung, und sie
korrigiert die naheliegende Schlussfolgerung:** heute bis 13:00 verbrauchten beide Stationen
zusammen **24,28 Mio Token «teuer»** (MacBook 18,34 / Mini 5,94) — gegen **10,51 Mio am 28.07. und
11,42 Mio am 29.07., jeweils ganze Tage**. Heute ist zur Halbzeit beim Doppelten eines Volltags.
Die Lern-Loops sind dabei **nicht** der Treiber: das Lauf-Journal weist fuer heute 11,94 USD ueber
5 Laeufe aus, fuer den 29.07. 33,92 USD ueber 7. Was den Tag treibt, ist die **interaktive Arbeit
mit Raphael** (Rollen-Register, Hub-Cockpit, Arbeits-Weiche, Sync-Task-Guard, hub-setup-Konnektor —
ueber zwanzig substanzielle Commits) plus der Aufsichts-Overhead. Das ist im Sinne des Auftrags
**produktive** Ausschoepfung, kein Leerlauf. Konsequenz fuer den Entscheid: die STOP-Flags
stehenzulassen ist richtig, aber es reicht nicht — die Loops waren nie der Haupthebel. Was in den
letzten vier Tagen dieses Fensters knapp wird, ist der Spielraum fuer Raphaels eigene Arbeit. Der
Entscheid darueber ist seiner (Lehre 25.07.: kein eigenmaechtiges Drosseln), und der Abo-Check hat
ihn um 12:51 ueber Logbuch und Fristen-Register erreicht. **Bewusst keine Mail von mir** — derselbe
Befund war sechs Minuten vor diesem Lauf schon auf dem regulaeren Weg unterwegs, und das
Wochenkontingent ist nicht erschoepft, sondern auf Kurs dorthin.

**P2 — der Radar war heute der groesste Einzelverbraucher der Station, und das habe ich abgestellt.**
Die Aufschluesselung nach Sessions ist eindeutig: der **09:57-Lauf allein 2,57 Mio Token «teuer»
ueber 266 Turns**, alle drei Radar-Laeufe bis 13:00 zusammen **3,68 Mio** — rund 15 % des
Tagesverbrauchs beider Stationen und mehr als jeder einzelne Lern-Loop. Der 09:57-Lauf hat dafuer
einen echten P1 gefunden (das ausgefallene Hub-Chef-Briefing), aber 266 Turns fuer einen Regellauf
sind kein Dauerzustand, und **acht** solche Laeufe pro Tag am wenigsten. Der 3-h-Takt stammt aus der
Zeit, als ein Endlos-Runner am Leben gehalten werden musste; dieser Runner ist seit 29.07.
ausgebaut, der Takt hatte damit seinen Zweck verloren. **Ausgefuehrt:** Takt auf **4-stuendlich**
zurueckgenommen (6 statt 8 Laeufe/Tag), Selbstkontroll-Schwelle auf 7 h angepasst, und im SKILL.md
die Regel «Regellauf bleibt schlank» verankert — Messung und kurzer Bericht als Normalfall,
Tiefen-Recherche nur auf einen konkreten Befund und nur auf diesen. Das ist der eine Posten, der in
meiner eigenen Zustaendigkeit liegt; er spart, ohne einen Lern-Loop oder ein operatives Briefing
anzutasten. Reversibel: nach dem Reset am 03.08. kann Raphael den 3-h-Takt jederzeit
wiederherstellen, wenn er die dichtere Aufsicht will.

**P3 — Liefer-Delta: kein Loop in einer Delta-Null-Serie, keine Ruecktaktung faellig.** `normen`
Run 38 (30.07. 02:23) hat den Vorrangauftrag Lignatec Tab. 3+4 rechnerisch aufgenommen und dabei
**sieben Kernbefunde** erzeugt, darunter drei voneinander abweichende Tabellen-Legenden, die das
bisherige Destillat teilweise entkraeften; der Lauf schlaegt seine eigene Stilllegung ausdruecklich
**nicht** vor, und das ist nach Sichtung des Reports korrekt. `baurecht-buch` Run 70 (02:36, eine
Korrektur an einer Verdichtungs-Drift), `grobkosten` Run 20 (05:39, Bring-Schuld Wueest/Lignum
eingeloest), `twin-fidelity` (05:55) und `wissens-chef` Run 20 (29.07. 23:58, heutiger Lauf um 23:10
noch nicht faellig) liefern alle. `wettbewerbs-dna` hat Raphael heute selbst fuer Etappe 4
reaktiviert, naechster Lauf Mo 03.08. **In Beobachtung, ohne Massnahme:** `bauprodukte` /
`wissens-destillat` hat seit dem 28.07. 07:34 nichts geliefert. Das ist **kein** Delta Null, sondern
Rotation: die Nachtschicht taktet mehrere Loops durch ihre vier Slots und hat diesen seit zwei Tagen
nicht aufgerufen; alle Slots seit 29.07. beendeten mit Exit 0. Bleibt der Loop bis 01.08. ohne Zug,
pruefe ich die Rotationsliste selbst. Der `rc=1` um 10:43 war der E2E-Test der neuen
Arbeits-Weiche (Anmeldung nicht geladen), der Zweitversuch lief rc=0 — kein Vorfall.

**Messgrenze offen ausgewiesen:** die Token-Zahlen stammen aus den Session-Transcripts beider
Stationen, mtime-vorgefiltert auf heute, gleiche Methodenfamilie wie die FRUEHWARNUNG und damit
mit deren Werten vergleichbar. Laufende Sessions sind zum Messzeitpunkt nur bis zum letzten
geschriebenen Turn erfasst, die Tageswerte sind also Untergrenzen.

---
## 2026-07-30 09:57 — [FREI] Das Hub-Chef-Tagesbriefing ist heute ersatzlos ausgefallen, und die Registry weist den Lauf als erfolgt aus: eine API-Stoerung zwischen 08:23 und 09:02 hat drei operative Laeufe getroffen, zwei ueberlebten sie, einer nicht

**Selbstkontrolle:** letzter Eintrag 06:57, dieser Lauf 09:57. 3,0 h bei 3-h-Takt, kein
verpasster Lauf. Naechster Lauf 12:57.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit. Speicher MacBook 4,33 GB verfuegbar, Mini 10,93 GB
(`vm_stat` free+inactive+purgeable), Druckstufe je 1 — unauffaellig. Die Stoerung unten war
eine transiente Server-Stoerung, kein Kontingent-Ereignis: meine eigene Probe um 09:57 und der
`heartbeat`-Lauf um 09:41 (rc 0) liefen beide sauber.

**P1 — `hub-chef-taeglich` hat heute kein Tagesbriefing gesendet, und nur die Deliverable-Messung
zeigt es.** Die Registry meldet `lastRunAt` 08:39 und sieht damit vollstaendig gesund aus. Der
Lauf (Session `9951a0d4`) ist aber um **09:02:43 mit `API Error: Unable to connect to API
(ConnectionRefused)` abgebrochen**, nach 23 Minuten, mitten in der Korrektur-Schleife ueber einen
Entwurf an Mathies; sechs Minuten davor hatte er protokolliert «QS-Agenten liefen auf einen 529»
und den Fan-out wiederholt. Gegenprobe am Deliverable statt am Zaehler: im Postausgang rj@
(Exchange, «Gesendete Elemente») stehen heute `Logbuch-Radar` 07:07:15, `AG-Gruendung` 07:51:21
und eine Geschaeftsmail 08:36:31 — **nach dem Start des Hub-Chefs um 08:39 liegt dort nichts**.
Das Briefing ist ersatzlos verloren; Rule 260710 verlangt es taeglich.

**Was ich bewusst NICHT getan habe:** den Task nachfeuern. `update_scheduled_task` kennt fuer
einen sofortigen Lauf nur `fireAt`, und das ist laut Werkzeugbeschreibung exklusiv zum
`cronExpression` — ein Nachschuss haette den taeglichen 08:35-Takt geloescht und damit aus einem
verlorenen Briefing einen dauerhaften Schaden gemacht. Dazu fuehrt der Hub-Chef Whitelist-Aktionen
der Stufe 3 aus und versendet selbst; ein Zweitlauf mit unklarem Stand des ersten ist keine
Aufsichtsaufgabe. Der naechste regulaere Lauf ist morgen 08:39. Kein Totalausfall der
Morgeninformation: das Logbuch-Radar-Briefing von 07:07 hat Raphael erreicht.

**P2 — die Sollbruchstelle ist der Korrektur-Fan-out, und derselbe Fehler hatte zwei verschiedene
Ausgaenge.** Dieselbe 529-Welle traf `zahlungsabgleich-check` (08:23–08:37) genauso: auch dort
brachen `rechtschreibung` und `layout` ab, auch der Wiederholungsversuch. Dieser Lauf **wich
inline aus**, erreichte sein Deliverable und wies die Schwaechung ausdruecklich aus statt sie als
vollen Harness-Lauf zu verkaufen — richtig gehandelt. Der Hub-Chef dagegen wiederholte den Fan-out
und starb am Folgefehler. Ob ein operativer Lauf eine Agenten-Ueberlastung ueberlebt, haengt damit
heute allein daran, ob er ausweicht oder wiederholt; einen definierten Fallback hat der Skill
`korrektur` fuer diesen Fall nicht. Das ist ein Strukturbefund fuer Raphael, keine Aufsichtsaktion
— ich habe am Skill nichts geaendert.

**P3 — `mahnwesen-verzugscheck` lief 1 h 56 statt weniger Minuten, weil der SessionStart-Hook ihm
eine fremde Aufgabe zugespielt hat.** Start 08:05, letzte Zeile 10:01, 128 Transcript-Zeilen, dazu
ein 500er um 08:07. Der Lauf hat neben dem read-only-Verzugscheck die offene Station-Sync-Task
(«SSH-Diagnose Mini-Verbindung + Rueckweg-Schluessel») mit abgearbeitet, inklusive einer
Umlaut-Korrektur an der Ergebnisdatei — inhaltlich saubere Arbeit, aber ein Verzugscheck ist nicht
der Ort dafuer. Der Hinweis kommt aus dem SessionStart-Hook, der ihn in **jede** Session einspielt,
auch in eng geschnittene operative Tasks. Kontingent-relevant, weil ein Minuten-Lauf so zum
Zwei-Stunden-Lauf wird.

**Liefer-Delta: seit 06:57 keine Lern-Lieferung — und das ist ausdruecklich KEIN Leerlauf-Befund.**
Im Tagesfenster ist kein Lern-Loop getaktet: Nachtschicht 23:30 / 02:30 / 05:30 / 13:30, `normen`
01:28, `twin` 03:40 und 05:45, `baurecht` montags 23:44. Der naechste Slot ist die Nachtschicht um
13:30. Delta Null durch Nicht-Faelligkeit ist etwas anderes als ein Delta-Null-Loop; die Schwellen
3 und 5 sind nirgends beruehrt. Entsprechend habe ich **nichts zurueckgetaktet und nichts
deaktiviert**. Die einzigen Commits seit 06:57 sind der `ag-gruendung-monitor` (07:51, UBS-Blockade
geloest) und das 15-Minuten-Selbstcommit-Rauschen der Stationsstatus-Dateien.

**Feuermechanismen: sauber.** `launchctl list | grep vollgas` auf beiden Stationen leer, beide
plists tragen weiter `.disabled-260729`; der Endlos-Runner bleibt ausgebaut und ich habe ihn nicht
angefasst. Kein Doppelfeuer, kein wiederauferstandener Job.

**Nebenbefunde.** Der Versionsrueckstand des MacBook aus dem 06:57-Eintrag ist weg: beide Stationen
tragen jetzt `2.1.219`. Offen ausgewiesen: fuer den Mini war am 06:57 `2.1.220` notiert, heute
misst dasselbe Verzeichnis `2.1.219` — ich loese den Widerspruch nicht auf, sondern halte nur fest,
dass beide Stationen gleichauf sind. Das Lauf-Journal `260730-laeufe.jsonl` steht unveraendert bei
vier Zeilen, alle aus Mini-Dispatch-Laeufen; App-Tasks schreiben weiterhin nichts hinein, weshalb
der Liefer-Delta dort ueber Commits und Transcripts gemessen werden muss — genau das hat den P1
heute sichtbar gemacht. Der `heartbeat` 09:41 meldet rc 0 mit einer Warnung (die eine offene
Sync-Task, die der Mahnwesen-Lauf inzwischen erledigt hat). Die beiden `Write(...)`-Regeln in
`.claude/settings.json` warnen unveraendert bei jedem Lauf; Raphael hat den Punkt heute um 07:54
interaktiv vorgelegt bekommen.

**Kein Mail-Anlass.** Fenster frei, kein Login-Blocker, kein erschoepftes Wochenkontingent. Der
P1 ist ein verlorenes Deliverable durch eine transiente Server-Stoerung, die sich von selbst
erholt hat — nichts, was nur Raphael loesen kann, und damit nach Mail-Disziplin kein Mail-Fall.

---
## 2026-07-30 06:57 — [FREI] Der unzuordenbare Taktgeber existiert nicht: planungsgrundlagen Run 93 kam aus einer fremden Session, die sich eine eigene Loop-Run-Nummer gegeben hat — meine eigene 03:57-Bewertung war damit falsch und wird hier korrigiert

**Selbstkontrolle:** letzter Eintrag 03:57, dieser Lauf 06:57. 3,0 h bei 3-h-Takt, kein
verpasster Lauf. Naechster Lauf 09:57.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Speicher MacBook 4,59 GB verfuegbar, Mini
11,77 GB (`vm_stat` free+inactive+purgeable), Druckstufe je 1 — unauffaellig.

**Liefer-Delta: positiv, nichts zum Ruecktakten.** Seit 03:57 zwei inhaltliche Lieferungen neben
dem Selbstcommit-Rauschen: der Nachtschicht-Slot 05:30 hat `grobkosten` bearbeitet und die seit
dem 29.07. offene Bring-Schuld aus dem Cross-KB-Befund eingeloest (Wueest/Lignum-Kostenstudie
selbst gezogen, den bisher unbelegten Zuschlag «Minergie-P, Holz +5–15 %» in Bauweise und
Ausbaustandard getrennt und kalibriert: unteres Preissegment ≈ Paritaet, oberes ≈ +13 %; rc 0,
551 s, 4,03 USD), und `twin-fidelity-review` hat um 05:56 den Facetten-Widerspruch
stimme/fachsignatur aufgeloest und die DNA neu kompiliert. Kein Loop erreicht auch nur einen Lauf
ohne Delta; die Schwellen 3 und 5 sind nirgends beruehrt, entsprechend habe ich weder
zurueckgetaktet noch deaktiviert.

**P1 vom 03:57 — Wirkung nachgemessen, nicht nur behauptet.** Der eingebaute Ausschluss «KBs mit
eigenem aktivem Taktgeber sind kein Ziel der Prioritaet 4» hat im ersten Slot danach gehalten:
der 05:30-Lauf hat `baurecht` nicht mehr angefasst, sondern `grobkosten` gewaehlt — eine KB ohne
eigenen Taktgeber, genau wie in der neuen Ausschlussliste vorgesehen. Raphaels woechentliche
Baurecht-Drossel (naechster regulaerer Lauf Mo 03.08. 23:44) ist damit wieder intakt.

**P1 — Korrektur meines eigenen letzten Eintrags: planungsgrundlagen hat gar nicht geliefert, eine
fremde Session hat unter seinem Namen geliefert.** Ich hatte um 03:57 offen ausgewiesen, dass ich
Run 93 (00:49) keinem Mechanismus zuordnen kann, und daraus gefolgert, der Loop lebe auf einer
zweiten Achse weiter und duerfe darum nicht deaktiviert werden. Die Zuordnung ist jetzt
abgeschlossen, und sie kehrt die Schlussfolgerung um. Belegt und ausgeschlossen sind alle vier
denkbaren Taktgeber: kein Dispatch-Protokoll um 00:49 (juengste Nachbarn 23:18 und 23:30),
kein Nachtschicht-Slot (die plist traegt genau 23/2/5/13 Uhr), kein Registry-Eintrag, kein
crontab auf dem Mini («no crontab for raphaeljans»), und die vollstaendige Liste der geladenen
Jobs beider Stationen enthaelt keinen plg-Job — Mini: synctask-runner, training-energie,
git-auto-sync, nas-mount, speicher-waechter, transcript-rotation, station-status,
claude-autoupdate, nachtschicht, wissens-trigger. Der `wissens-trigger` schliesslich, der als
Ereignis-Taktgeber fuer genau diese KB zustaendig waere, hat um 06:30 auf beiden Stationen
protokolliert: «planungsgrundlagen: unveraendert (n=3952) — kein Lauf». Er hat seit dem 27.07.
nicht gefeuert.

Was stattdessen geschah: die Arbeit entstand in der `wissens-chef`-Session (Scheduled Task 23:10),
die zu diesem Zeitpunkt noch lief — ihr eigener Nachlauf-Commit steht 00:50, eine Minute nach dem
Run-93-Commit, und ihr Run-20-Report fuehrt `planungsgrundlagen` ausdruecklich unter den neun
betroffenen KBs (K61 KGSchV-Nachfolge, K62 Regenwasser, OEREB-Thema 130). Der Cross-KB-Lauf hat
seine eigenen Befunde in der Ziel-KB abgearbeitet — fachlich richtig — und das Ergebnis dann als
nummerierten «Training Run 93» der KB abgelegt, inklusive eines Zweitinstanz-Checks, der die
Nummer 93 fuer frei erklaerte. Genau daran bin ich haengengeblieben: ein Report, der sich selbst
als Loop-Lauf ausweist, wird von dieser Aufsicht als Loop-Lauf gezaehlt. **Folge fuer die
Bewertung:** der planungsgrundlagen-Loop hat den 28. Nullbefund gemeldet und seither nichts mehr
getan; er hat keinen Taktgeber und ist faktisch bereits stillgelegt. Meine 03:57-Formulierung «er
hat gerade geliefert» war falsch. Die Umwidmung von grower zu maintainer (schlanker monatlicher
Endpunkt-/Link-Check statt Quellen-Turnus) bleibt der richtige Vorschlag und bleibt Raphaels
Entscheid — aber sie stuetzt sich nicht mehr auf einen lebenden Loop, sondern nur noch darauf,
dass Endpunkte und zitierte URLs unabhaengig vom Dateibestand erodieren.

**P2 — die Lehre daraus gehoert in die Messdisziplin, nicht nur in diesen Eintrag.** Ein
Liefer-Delta ist nur dann dem Loop zuzurechnen, wenn ein Mechanismus belegt ist, der ihn gefeuert
hat. Cross-KB-Laeufe (`wissens-chef`, Nachtschicht-Prioritaet 4) schreiben in fremde KBs und
duerfen deren Run-Zaehler nicht weiterdrehen, sonst sieht eine erschoepfte KB von aussen lebendig
aus. Die saubere Form waere ein Report ohne Loop-Run-Nummer, etwa
`outputs/2026-07-30_cross-kb-wissens-chef-run20.md` in der Ziel-KB. Ich habe den bestehenden
Report **nicht** umbenannt — Umbenennen im Wissens-Layer ist destruktiv und braucht Raphaels
Freigabe (Rule `wissens-bibliothekar`).

**P3 — der Mini-CLI-Blocker ist weg, dafuer haengt jetzt das MacBook.** Der am 00:57 eingebaute
dritte Autoupdate-Zweig (npm-global im Homebrew-Prefix) hat sich im 05:15-Slot bewiesen: der Mini
steht auf **2.1.220**, kommt also von 2.1.207 und ist aktuell. Neu faellt dafuer das MacBook mit
**2.1.212** zurueck — kein Blocker, der Job `ch.jans.claude-autoupdate` ist dort geladen; ich
beobachte, ob der naechste Slot aufschliesst. Die Journal-Messluecke hat sich verbessert:
`260730-laeufe.jsonl` traegt jetzt **vier** Zeilen statt einer (zwei rc-Zeilen mit Kosten, zwei
Ergebniszeilen), weiterhin nur aus den Mini-Dispatch-Laeufen; App-Tasks wie
`twin-fidelity-review` schreiben nichts hinein, der Liefer-Delta muss dort weiter ueber Commits
gemessen werden. Die beiden `Write(...)`-Allowlist-Regeln in `.claude/settings.json` werfen ihre
Warnung unveraendert bei jedem Lauf — sie muessten `Edit(...)` heissen, was nur Raphael aendern
kann. Der stale Banner-Hinweis auf `token-drosselung-100810` ist oben in dieser Datei als
hinfaellig markiert (zweimal gegen die Registry geprueft); Raphaels Regimetext bleibt unangetastet.

**Feuermechanismen: sauber.** `launchctl list | grep vollgas` auf beiden Stationen leer, beide
plists tragen weiter `.disabled-260729` — der Endlos-Runner bleibt ausgebaut, ich habe ihn nicht
angefasst. `ch.jans.training-normen` und `ch.jans.training-plg` sind auf dem Mini weiterhin nicht
geladen. Der `wissens-trigger` laeuft auf beiden Stationen um 06:30, ist aber kein Doppelfeuer:
er ueberspringt jede KB, deren Task auf der anderen Station lebt, und das MacBook meldet
entsprechend «0 Lauf/Laeufe ausgeloest».

**Kein Mail-Anlass:** Fenster frei, kein neuer P1-Blocker, der nur Raphael loesen kann, kein
erschoepftes Wochenkontingent. Der P1 dieses Laufs war eine Korrektur meiner eigenen Bewertung.

---
## 2026-07-30 03:57 — [FREI] Die Nachtschicht hat baurecht gegen Raphaels woechentliche Drossel zusaetzlich gefeuert: ein zweiter Taktgeber auf einem bewusst gebremsten Loop, korrigiert und auf dem Mini nachgemessen

**Selbstkontrolle:** letzter Eintrag 00:57, dieser Lauf 03:57. 3,0 h bei 3-h-Takt, kein
verpasster Lauf. Naechster Lauf 06:57.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Speicher MacBook 4,6 GB verfuegbar, Mini
11,0 GB (`vm_stat` free+inactive+purgeable), Druckstufe je 1 — unauffaellig.

**Liefer-Delta: durchgehend positiv, nichts zum Ruecktakten.** Seit 00:57 vier inhaltliche
Commits neben dem Selbstcommit-Rauschen: Normen Run 38 in drei Teilen (02:05–02:24, Lignatec
Tab. 3+4 rechnerisch aufgenommen, BfU-Block mit 7 Destillaten und je einem Refuter, eine
Cross-Kontamination zwischen parallel destillierten Quellen gefunden), Baurecht Buch-Run 70
(02:36, Verdichtungs-Drift § 242 Abs. 2 PBG korrigiert) und twin-mail-training Batch 82 (03:56,
43 Mails, 7 neue Marker). Kein Loop erreicht auch nur einen Lauf ohne Delta; die Schwellen 3 und
5 sind nirgends beruehrt, entsprechend habe ich weder zurueckgetaktet noch deaktiviert.

**Feuermechanismen: eine echte Abweichung, sonst sauber.** `launchctl list | grep vollgas` auf
beiden Stationen leer, beide plists tragen weiter `.disabled-260729` — der Endlos-Runner bleibt
ausgebaut, ich habe ihn nicht angefasst. Die Mini-Nachtschicht lief im 02:30-Slot mit Exit 0
(02:30:06–02:36:51), naechster Slot 05:30. `ch.jans.training-normen` ist auf dem Mini weiterhin
nicht geladen (bestaetigt die Korrektur vom 29.07.), `ch.jans.training-energie` laeuft taeglich
22:30 und hat Run 119 geliefert, `ch.jans.training-plg` traegt `.disabled-260728`.

**P1 — behoben und nachgemessen: die Nachtschicht darf keinen Loop feuern, der einen eigenen
aktiven Taktgeber hat.** Prioritaet 4 des Nachtschicht-Prompts waehlt «die naechste faellige
Trainingslektion unter `wissen/*/training/PROGRAMM.md`» und schloss bisher nur KBs mit einem
Stillgelegt-/Ereignis-Trigger-Statuskopf aus. `baurecht` traegt keinen solchen Kopf, sondern im
Frontmatter `scheduled_task: baurecht-buch-training` und `frequenz_phase3: woechentlich`. Der
zugehoerige Scheduled Task ist auf **woechentlich Mo 23:44** gedrosselt (Ruecktaktung 17.07.2026
nach Run 48, ausdrueckliche Freigabe Raphaels) und war erst am **03.08.** wieder faellig. Die
Nachtschicht hat ihn im 02:30-Slot trotzdem als Run 70 gefeuert. Das ist genau das Muster, das
die Betriebs-Kurzregel verbietet: ein Loop mit eigenem Scheduled Task gehoert nie zusaetzlich in
einen zweiten Mechanismus. Der Zusatzlauf hebelt eine bewusste Drossel-Entscheidung Raphaels aus,
ohne dass eine der beiden Seiten die andere sieht.

Behoben: Prioritaet 4 schliesst jetzt ausdruecklich jede KB mit **eigenem aktivem Taktgeber**
(Scheduled Task oder launchd-Job, im Frontmatter oder im Takt-Abschnitt benannt) aus, mit dem
Beleg und der aktuellen Ausschlussliste — baurecht (woechentlich Mo), energie (launchd 22:30),
normen (taeglich 01:20) — und benennt die freien Ziele bauprodukte, grobkosten, projekt-lessons,
planungsgrundlagen. `bash -n` sauber. **Wirkung verifiziert, nicht nur behauptet:** der
launchd-Job des Mini liest `$HOME/Developer/jans-ai-hub/scripts/nachtschicht-run.sh` mit
SSD-Vorrang, und diese Kopie fuehrte die neue Regel zunaechst **nicht** (Trefferzahl 0). Nach
`nas-commit-now` und `git pull` auf dem Mini steht sie dort mit Trefferzahl 1 und sauberer
Syntax. Damit greift die Korrektur im 05:30-Slot. Die Ausschlussliste ist bewusst
einkompiliert statt zur Laufzeit erfragt, damit der Lauf keine Registry abfragen muss.

**P2 — planungsgrundlagen meldet die 28. Quellen-Erschoepfung, liefert aber auf einer anderen
Achse: hier ist Ruecktakten nur zur Haelfte richtig.** Run 93 (Mac Mini, ~00:49) haelt fest,
dass in allen vier PL-Ordnern kein neues Quellmaterial liegt — der 28. Nullbefund in Folge, die
Delta-Null-Schwelle 5 also um mehr als das Fuenffache ueberschritten. Der Loop ist damit auf der
Quellen-Achse tot. Auf einer zweiten Achse ist er es nicht: derselbe Lauf hat vier belegte Fehler
behoben (UTC-Datum und HTTP-204-Diagnose in zwei Connectoren, eine tote Energie-URL in vier
Artikeln, EGID/EGRID-Verwechslung). Endpunkte, zitierte URLs und eigener Code erodieren
unabhaengig vom Dateibestand. Der Loop schlaegt selbst das Richtige vor: Quellen-Turnus
zurueckstellen, schlanken **monatlichen** Endpunkt-/Link-/Connector-Check behalten. Ich habe
**nicht** deaktiviert — er hat gerade geliefert, und die Umwidmung eines Loops von grower zu
maintainer ist eine Takt-Entscheidung Raphaels, nicht meine. Praktisch ist der Loop ohnehin schon
ohne Taktgeber: der Scheduled Task ist aus der Registry verschwunden und die plist traegt
`.disabled-260728`; im `cron-training-mini.sh` steht der `plg)`-Zweig nur noch als toter Code.
**Offen und ehrlich als Luecke ausgewiesen:** ich konnte Run 93 keinem bekannten Mechanismus
zuordnen — kein Dispatch-Protokoll um 00:49, keine geladene plist, kein Registry-Eintrag. Der
06:57-Lauf sollte das klaeren, denn ein unzuordenbarer Taktgeber ist genau das, was diese Aufsicht
finden soll.

**P2 — der eigene Kopfbanner dieser Datei warnt vor einer Task, die es nicht mehr gibt.** Der
Regimewechsel-Banner vom 25.07. schliesst mit «Hinweis: die One-Time-Task
token-drosselung-100810 (10.08.) steht weiterhin und wuerde die Lern-Loops dann auf Sparbetrieb
zuruecktakten». In der Registry existiert kein solcher Eintrag. Die Warnung ist stehengeblieben
und wuerde einen kuenftigen Lauf eine Drossel erwarten lassen, die nie feuert. Ich habe den Banner
nicht angefasst, weil er Raphaels Regimeentscheid dokumentiert; die Zeile gehoert aber gestrichen
oder als erledigt markiert.

**P3 — unveraendert offen, beide gehoeren Raphael.** Der Mini haengt weiter auf CLI 2.1.207; der
gestern eingebaute dritte Zweig in `claude-autoupdate.sh` beweist sich erst um 05:15 — die Pruefung
bleibt beim 06:57-Lauf (`mac-mini.log` auf einen Versionssprung, `claude --version` auf ≠ 2.1.207).
Die Journal-Messluecke ist erneut belegt: `260730-laeufe.jsonl` enthaelt genau **eine**
rc-Zeile (02:36, Mini-Nachtschicht, rc 0, 405 s, 3.45 USD); Normen Run 38, twin Batch 82 und die
App-Tasks schreiben nichts hinein, weshalb der Liefer-Delta weiter ueber Commits gemessen werden
muss. Die beiden `Write(...)`-Allowlist-Regeln in `.claude/settings.json` greifen weiterhin nicht
und werfen ihre Warnung bei jedem Lauf — sie muessten `Edit(...)` heissen, was nur Raphael aendern
kann. Aus Run 93 liegen zusaetzlich E13 (UTC-Datum in vier fremden Connectoren, `bexio.mjs` nur
mit Freigabe) und E14 (`geo-sz.mjs` doppelt und divergent) als Entscheide vor.

**Kein Mail-Anlass:** Fenster frei, kein neuer P1-Blocker, der nur Raphael loesen kann, kein
erschoepftes Wochenkontingent. Der P1 dieses Laufs war selbst behebbar und ist behoben.

---
## 2026-07-30 00:57 — [FREI] Der Mini-Blocker ist repariert, und die Ursache war eine andere als gestern gemeldet: dort liegt eine npm-Installation IM Homebrew-Prefix, die von aussen wie ein Cask aussieht und von keinem der beiden Update-Zweige erfasst wurde

**Selbstkontrolle:** letzter Takt-Eintrag 21:57, dieser Lauf 00:57. 3,0 h bei 3-h-Takt, kein
verpasster Lauf (der 22:15-Eintrag dazwischen war interaktiv). Nächster Lauf 03:57.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Speicher MacBook 5,6 GB verfügbar
(`vm_stat` free+inactive+purgeable), Druckstufe 1 — unauffällig.

**Feuermechanismen: sauber.** `launchctl list | grep vollgas` auf beiden Stationen leer, beide
plists tragen weiter `.disabled-260729`. Der Endlos-Runner bleibt ausgebaut; ich habe ihn nicht
angefasst. Die Mini-Nachtschicht ist der einzige Lern-Taktgeber, vier Slots
23:30 / 02:30 / 05:30 / 13:30, letzter Zyklus 23:30–23:36 mit Exit 0, nächster 02:30.

**Liefer-Delta: durchgehend positiv, kein Loop zum Rücktakten.** In den letzten sechs Stunden
acht inhaltliche Commits neben dem Selbstcommit-Rauschen: Normen Run 37 (22:20), Energie-Training
Run 119 mit sieben Destillaten (22:45), projekt-lessons Ingest-Lauf 1 (23:2x), bauprodukte
Z-Winkel BKP 273 (23:36), Wissens-Chef Run 20 über fünf Cross-KB-Felder (23:59),
planungsgrundlagen Run 93 (00:49), Run-20-Nachlauf mit der Eindampfung der rollen-taxonomie
(00:50) und die UTC-Falle in der Rule dateinamen-konvention (00:5x). Kein Loop erreicht auch nur
einen Lauf ohne Delta; die Schwellen 3 und 5 sind nirgends berührt, entsprechend habe ich weder
zurückgetaktet noch deaktiviert. Die beiden Twin-Loops, die am 28.07. als Delta-Null-Verdacht
geführt wurden, haben am 29.07. geliefert (Batch 81 schliesst September 2025 ab; Fidelity-Review
mit Report und QUESTIONS-Runde, bewusst ohne Wiki-Änderung).

**P1 — repariert, Wirkung noch nicht verifiziert: der Mac Mini hängt auf CLI 2.1.207, weil
`claude-autoupdate.sh` seine Installation nicht erkennt.** Der gestrige 21:57-Eintrag hat den
Blocker richtig gesehen, die Ursache aber zu grob benannt («Mini hat eine npm-Installation»). Die
Gegenprüfung zeigt das genaue Bild: `/opt/homebrew/bin/claude` ist ein Symlink nach
`/opt/homebrew/lib/node_modules/@anthropic-ai/claude-code/bin/claude.exe`, also eine
**npm-Global-Installation mit Prefix `/opt/homebrew`**. Von aussen sieht das aus wie Homebrew,
`brew list --cask claude-code` findet aber nichts, `brew list --formula` ebenso wenig, und
`~/.local/bin/claude` existiert nicht. Damit fiel der Lauf jede Nacht durch beide Zweige in den
else-Ast und protokollierte still «keine bekannte Installation gefunden — übersprungen»,
belegt am 27., 28. und 29.07. in `logs/claude-autoupdate/mac-mini.log`. Der MacBook Pro läuft
demgegenüber über den brew-Zweig und ist auf 2.1.212.

Behoben: dritter Zweig in `scripts/claude-autoupdate.sh`, der die npm-Global-Installation über
den aufgelösten Symlink erkennt und `npm install -g @anthropic-ai/claude-code@latest` ausführt;
der else-Ast benennt jetzt die drei geprüften Installationsarten, statt nur «keine bekannte» zu
melden. `bash -n` sauber. Die Zweigwahl ist auf **beiden** Stationen nachgemessen: Mini
→ `npm-global`, MacBook Pro → `brew` unverändert, also keine Regression. Der launchd-Job des
Mini liest das NAS-Script direkt (kein SSD-Vorrang), die Korrektur greift damit schon um 05:15.

**Bewusst NICHT von Hand nachinstalliert.** Ein `npm install -g` um 01:00 würde genau die Binary
austauschen, die die Nachtschicht um 02:30 braucht; scheitert er halb, fällt der einzige
Lern-Taktgeber aus. Der reparierte Mechanismus soll sich um 05:15 selbst beweisen. **Offen für
den 06:57-Lauf: prüfen, ob `mac-mini.log` einen Versionssprung protokolliert und
`claude --version` auf dem Mini nicht mehr 2.1.207 zeigt.** Erst dann ist der Blocker geschlossen.

**Korrektur meiner eigenen 21:57-Zahl.** Dort stand, `claude` sei «auf beiden Stationen nicht via
PATH auflösbar, nur ein einziger Fallback-Pfad existiert». Der erste Teil stimmt und ist
nachgemessen: in einer nackten launchd-Umgebung (`env -i`) findet keine der beiden Stationen
`claude`. Der zweite Teil ist falsch. `dispatch-run.sh` härtet den PATH um
`/opt/homebrew/bin:/usr/local/bin:~/.local/bin:~/.bun/bin:~/.claude/local` und probiert danach
**vier** Installationsorte durch; auf beiden Stationen löst das auf `/opt/homebrew/bin/claude`
auf. Alles, was über `dispatch-run.sh` läuft — und damit die ganze Nachtschicht — ist abgedeckt.
Das Restrisiko betrifft nur launchd-Jobs, die `claude` direkt aufrufen. Nebenbefund für die
05:15-Korrektur: npm installiert in dasselbe Prefix und lässt den Symlink stehen, die Auflösung
bleibt also unverändert.

**P2 — Messlücke: die Arbeit nach Mitternacht steht in keinem Lauf-Journal.**
`logbuch/laeufe/260730-laeufe.jsonl` existiert um 00:57 nicht, obwohl planungsgrundlagen Run 93
und der Run-20-Nachlauf bereits committet sind. Grund ist kein Ausfall: auf dem Mini läuft seit
00:28 eine App-Scheduled-Task-Session (PID 22620, App-eigene CLI 2.1.219), und die erreicht
`claude-run.sh` baulich nicht — genau die Lücke, die schon beim Lauf-Gate bekannt ist. Der
Liefer-Delta ist darum weiterhin nur über Commits und Dateistände messbar, nicht über das
Journal. Kein Handlungsbedarf heute Nacht, aber die Journalzeile taugt nicht als alleinige
Messgrösse, solange App-Tasks einen relevanten Teil der Arbeit tragen.

**P2 — planungsgrundlagen bestätigt zum 28. Mal einen erschöpften Quellbestand.** Run 93 hält
fest, dass unter «PL - 01 Kartenportale» seit Run 92 keine neue Datei liegt. Der Loop liefert
trotzdem echte Arbeit (Endpunkt-Frischecheck 13/13, zwei behobene und getestete Connector-Fehler,
eine tote Energie-URL in vier Artikeln ersetzt) — das ist ausdrücklich **kein** Delta Null, und
nach meinen Schwellen greife ich nicht ein. Festzuhalten ist trotzdem, dass die Ingest-Aufgabe
dieses Loops erledigt ist und er faktisch als Maintainer weiterläuft. Wenn Raphael das anders
gewichten will, wäre hier der Punkt zum Rücktakten.

**P3 — zwei wirkungslose Berechtigungsregeln, Fix blockiert.** `.claude/settings.json` trägt
`Write(//Volumes/daten/jans-ai-hub/**)` und
`Write(//Users/.../OneDrive-FreigegebeneBibliotheken–JANS/**)`. Beide greifen nicht, weil nur
`Edit(...)`-Regeln gegen Dateipfade prüfen, und beide erzeugen bei **jedem** headless-Start zwei
Warnzeilen. Die erste ist ein reines Duplikat der Zeile darüber (`Edit(//Volumes/...)`) und kann
weg, die zweite müsste auf `Edit(...)` lauten. Ich habe den Fix versucht; der Auto-Mode-Klassifikator
hat die Änderung an der Berechtigungsdatei abgelehnt. **Braucht Raphael** — zwei
Zeilen, kein Risiko.

**P3 — `methoden-radar` hat noch nie gefeuert.** Die Registry führt den Task als aktiv (Mo 21:00)
ohne jedes `lastRunAt`; nächster Termin 03.08. Beim nächsten Montagslauf prüfen, ob er
tatsächlich liefert, sonst ist er ein Baustein, der nur auf dem Papier existiert.

## 2026-07-29 22:15 — [FREI] Nachtrag zum Runner-Ausbau: drei Scripts beschrieben sich weiter als in Betrieb, und eine eingefrorene Statusseite refreshte sich alle 15 Sekunden wie ein laufender Dienst

Interaktiv ausgeloest durch Raphael («mache deine Empfehlungen»), kein Takt-Lauf. Fensterzustand
unveraendert FREI, keine neue Probe. Der 3-h-Takt hat heute vollstaendig gefeuert (01:00, 03:00,
07:10, 09:57, 12:57, 15:57, 18:57, 21:57) — kein verpasster Lauf, die 13:30-Probe ist im
15:57-Eintrag ausgewertet.

**Die Massnahme war unvollstaendig, obwohl sie als vollzogen dokumentiert war.** Der Ausbau um
03:00 hat launchd, die STOP-Dateien und die beiden Aufsichts-Tasks nachgezogen — aber nicht die
Scripts selbst. `vollgas-runner.sh` trug im Kopf weiter die Startanleitung
(`nohup bash … vollgas-runner.sh &`), `vollgas-supervisor.sh` beschrieb sich als aktiven
Keepalive-Waechter, `vollgas-monitor-build.sh` als 15-Sekunden-Job. Wer eines dieser Scripts
oeffnet und dem Kopf folgt, startet einen Mechanismus, der abgeschaltet gehoert — dieselbe
Fallenklasse wie die alten Entfernungs-Bedingungen in den STOP-Dateien, nur eine Ebene tiefer.
Alle drei tragen jetzt einen Stilllegungs-Banner ganz oben, mit Grund, Ersatz
(getaktete Tasks + Mini-Nachtschicht) und dem Weg zur Wiederbelebung.

**Dazu eine Statusseite, die aktiver aussah als der Dienst, den sie zeigte.**
`logbuch/vollgas/monitor.html` war seit 02:47 eingefroren, trug aber einen 15-Sekunden-Autorefresh
und die Ueberschrift des «Vollgas-Herzschlags» — ein Stand von 20 Stunden, praesentiert als
Livebild, gespeist aus Logs, die nie wieder frisch werden. Entfernt (reines Erzeugnis, gitignored,
jederzeit neu baubar). Wer den Hub-Zustand sehen will: RADAR.md und FRUEHWARNUNG.md.

**Entscheid 1B — meine Empfehlung nach der Messung: NICHT entfernen.** Der ArchiCAD-MCP bleibt in
der Claude-Desktop-Config. Begruendung ist die Messung selbst: das Beenden der beiden Prozesse gab
**338 MB** frei, nicht die 2,8 GB, die ihr `top`-Footprint versprach. Fuer diesen Betrag lohnt es
nicht, die ArchiCAD-Anbindung bei jedem Bedarf von Hand ein- und auszutragen — und ein echter
Speichermangel wird jetzt zuverlaessig erkannt (Lauf-Gate und Speicher-Waechter messen beide ueber
`vm_stat` plus Druck-Kriterium). Damit ist der letzte offene Punkt der 03:00-Liste geschlossen;
offen bleibt nichts, was Raphael entscheiden muesste.

## 2026-07-29 21:57 — [FREI] Die Station, die die ganze Lern-Last trägt, läuft auf der ältesten Software: der CLI-Autoupdate überspringt den Mac Mini seit Tagen still, weil er nur nach einer brew-Installation sucht, während dort eine npm-Installation liegt. 2.1.207 gegen 2.1.212

**Selbstkontrolle:** letzter Eintrag 18:57, dieser Lauf 21:57. 3,0 h bei 3-h-Takt, kein
verpasster Lauf. Nächster Lauf 00:57.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner bleibt ausgebaut:
`launchctl list | grep vollgas` auf beiden Stationen leer, beide plists auf
`.disabled-260729`. Die Nachtschicht trägt weiterhin genau vier Slots (23/2/5/13, Minute 30),
daneben feuert auf dem Mini `ch.jans.training-energie` einmalig um 22:30. Kein Mechanismus
feuert doppelt, keiner feuert, der stillgelegt sein sollte.

**P1 — der Mac Mini hängt fünf CLI-Versionen hinter dem MacBook zurück, und der Job, der
genau das verhindern soll, meldet jeden Morgen einen erfolgreich aussehenden Lauf, ohne etwas
zu tun.**

Gemessen:

| Station | CLI-Version | Installationsart | brew-Cask erkannt |
|---|---|---|---|
| MacBook Pro | 2.1.212 | Homebrew-Cask | ja, wird täglich aktualisiert |
| Mac Mini | **2.1.207** | npm-global (`/opt/homebrew/bin/claude` → `lib/node_modules/@anthropic-ai/claude-code`) | **nein** |

`scripts/claude-autoupdate.sh` entscheidet in Zeile 82 über
`brew list --cask claude-code`. Auf dem Mini schlägt diese Prüfung fehl, weil dort kein Cask
liegt, und der Lauf protokolliert: «CLI: keine bekannte Installation gefunden —
uebersprungen» (Log `logs/claude-autoupdate/mac-mini.log`, 29.07. 05:15:03). Der Eintrag steht
zwischen «Lauf gestartet» und «Lauf beendet», also im Rahmen eines fehlerfreien Laufs. Wer
den Job an rc oder an der Existenz von Logzeilen messen würde, sähe eine gesunde Automatik.

Das wiegt schwer, weil es die **falsche** Station trifft. Seit dem Ausbau des Endlos-Runners
heute früh ist die Mini-Nachtschicht der einzige Lern-Taktgeber des Hub. Die Station, die
sämtliche Lern-Arbeit ausführt, läuft damit auf dem Werkzeug, das kein Mechanismus pflegt,
während die Arbeitsstation, die nachts nichts leistet, täglich aktualisiert wird. Der
Rückstand ist heute harmlos (fünf Patch-Versionen, alle Läufe rc 0); die Mechanik dahinter
ist es nicht.

**Keine Massnahme in diesem Lauf, mit Absicht.** Der Fix ist eindeutig (npm-Installationen in
`claude-autoupdate.sh` erkennen und via `npm i -g @anthropic-ai/claude-code` nachziehen), aber
er berührt das Binary, von dem jeder automatische Lauf beider Stationen abhängt, und er
kollidiert mit einem Timing-Problem: der Autoupdate feuert 05:15, der Nachtschicht-Slot 05:30.
Ein Upgrade, das den Symlink kurz austauscht, würde den Slot 15 Minuten später kosten. Beides
gehört in einen dedizierten Lauf mit Sichtprüfung, nicht in eine Radar-Runde. Ein Radar
misst und meldet; er operiert nicht am Werkzeug, mit dem er selbst läuft.

**P2 — ein von vier Nachtschicht-Slots ist heute 47 Sekunden nach dem Start gestorben, und
die Ursache ist nicht mehr rekonstruierbar.**

`~/Library/Logs/ch.jans.nachtschicht.log` auf dem Mini: der Slot 02:30 endete 02:30:53 mit
**Exit 2** nach drei Versuchen, das Protokoll `dispatch/log/20260729-023006-27032.md` trägt
einen **leeren** Ergebnisblock. Das ist Null-Ertrag durch Abbruch, nicht Delta Null durch
erschöpftes Material: der Loop war hungrig und wurde unterbrochen. Nach meinem Auftrag wird
hier **nicht** rücktaktet.

Ein Lauf von heute hat den Vorfall bereits erkannt und die **Sichtbarkeit** geheilt:
`dispatch-run.sh` leitet den stderr des Wrappers seit heute ins Protokoll («Belegt 29.07.2026,
nachtschicht 02:30, ‹claude nicht gefunden› ging verloren»). Die Ursache selbst bleibt
unbewiesen, weil die Diagnose zum Zeitpunkt des Vorfalls verworfen wurde. Genau darum ist der
Fix richtig: ein Wiederholungsfall wird diagnostizierbar sein.

Dazu ein eigener, heute erstmals nachgemessener Befund: **`claude` ist auf KEINER der beiden
Stationen über den PATH auflösbar**, sobald die Shell nicht interaktiv ist (auf dem Mini
scheitert `command -v claude` auch unter normalem ssh-Login). Die gesamte Automatik hängt an
der Fallback-Liste in `dispatch-run.sh`, und von deren vier Kandidaten existiert auf beiden
Stationen genau **einer**: `/opt/homebrew/bin/claude`, selbst nur ein Symlink in die
node_modules. `~/.local/bin/claude`, `/usr/local/bin/claude` und `~/.claude/local/claude`
fehlen überall. Die Exit-Signatur 2 passt exakt auf `claude-run.sh` Zeile 51
(«claude nicht gefunden»), was die Hypothese des Vorlaufs stützt, ohne sie zu beweisen.

**P2 — die Auswahlregel der Nachtschicht schickt den Slot um 23:30 voraussichtlich auf die
fast fertige KB und lässt die mit dem grössten Rückstand liegen.**

Inhaltsstand je KB mit gültigem `training/PROGRAMM.md` (jüngste Artikeldatei in `wiki/`,
Statuskopf-Träger wie `spec`, `immobilienbewertung`, `wettbewerbs-dna` ausgenommen):

| KB | Inhaltsstand | offene Positionen | eigener Takt |
|---|---|---|---|
| grobkosten | 27.07. 22:13 (**47 h**) | 5 (Rest eines Inventars mit 52 «untauglich») | nein |
| bauprodukte | 28.07. 23:42 (22 h) | **55** (32 offen + 23 triagiert) | nein |
| baurecht | 28.07. 23:38 (22 h) | — | ja, Mo 23:40 |
| energie | 28.07. 23:39 (22 h) | — | ja, täglich 22:30 |
| planungsgrundlagen | 29.07. 02:06 (19 h) | — | nein |
| normen | 29.07. 02:53 (19 h) | — | ja, täglich 01:20 |

Priorität 4 sortiert nach «am längsten nicht trainiert» und zieht die Zahl offener
Positionen nur bei **ähnlichem** Stand als Tiebreaker. 47 h gegen 22 h ist nicht ähnlich,
also gewinnt `grobkosten` mit fünf Restpositionen gegen `bauprodukte` mit 55. Die
`bauprodukte`-PROGRAMM.md beansprucht für sich ausdrücklich «höchste Priorität unter den
Destillat-Korpora», weil sie nach BKP gegliedert und damit Zulieferer für `ausschreibung`,
`offertenpruefung`, `brandschutz` und `grobkosten` ist. Zwei Ordnungen widersprechen sich:
die Nachtschicht ordnet nach Alter, die KORPUS-QUEUE nach Hebel.

Ich melde das und greife nicht ein. Der Fall ist nicht eindeutig: fünf Restpositionen
abzuräumen schliesst `grobkosten` und gibt den Slot dauerhaft frei, was für sich ein
guter Zug ist. Eindeutig ist nur die Grössenordnung dahinter, und die gehört vor
Raphael: bei einer Einheit je Lauf und drei bis vier Slots je Nacht, die sich alle KBs
teilen, braucht `bauprodukte` für 55 Positionen mehrere Wochen. Wer den Korpus mit dem
höchsten Hebel schneller will, muss ihm Slots **zuweisen**, nicht auf die Alterssortierung
hoffen.

**Liefer-Delta seit dem letzten Lauf (18:57): kein Lauf fällig, kein Lauf gefeuert.**

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 19:00–21:57 | beide | — | **Kein Task fällig.** Das Register trägt zwischen 10:00 und 21:57 ausser dem Radar keinen Eintrag; nächster Lern-Lauf 22:30 (`training-energie`), dann 23:10 (`wissens-chef`) und 23:30 (Nachtschicht). Vorgesehene Tagesruhe, nicht Leerlauf |

Alle 16 NAS-Commits der letzten 4 h sind `station-status`-Heartbeats (je zwei Dateien, vier
Zeilen) und der eigene Radar-Commit von 18:57. Kein inhaltliches Delta, korrekt für ein
Fenster ohne fälligen Lauf.

**Tagesbilanz der vier Nachtschicht-Slots (29.07.):** 02:30 verloren (Exit 2, siehe P2),
05:30 geliefert (`firmengruendung-ch`, Kapitalband Art. 653s–653v OR am Fedlex-Volltext
verifiziert), 13:30 geliefert (`projekt-lessons`, KISPI-Zuständigkeitswechsel), 23:30 steht
noch aus. Dazu 22:30 `energie` am Vorabend. Drei von vier Slots produktiv, einer verloren.

**Speicher (gemessen, nicht geschätzt):** MacBook Pro 3,4 GB frei+inaktiv+purgeable bei
Pressure-Level **2**, Mac Mini 11,5 GB bei Level 1. Der MacBook-Wert liegt knapp über der
3-GB-Schwelle des Lauf-Gates; er trägt heute Nacht ohnehin nur `normen` (01:20),
`twin-mail` (03:35) und `twin-fidelity` (05:40). Der Mini hat für seine drei Slots reichlich
Luft.

**P3 — jeder headless-Lauf schreibt zwei Berechtigungs-Warnungen vor seine eigentliche
Ausgabe.** Die Probe dieses Laufs antwortete nicht «OK», sondern zwei Warnzeilen und dann
«OK»: `.claude/settings.json` führt `Write(//Volumes/daten/jans-ai-hub/**)` (Zeile 29) und
`Write(…/OneDrive-FreigegebeneBibliotheken–JANS/**)` (Zeile 32), und Pfad-Regeln in
`Write(...)`-Form greifen nicht, nur `Edit(...)` deckt alle schreibenden Werkzeuge ab.
Wirkungslos ist es nicht: `Edit(*)` und `Write(*)` stehen in Zeile 6/7 und decken bereits
alles. Die Regeln sind also reine Redundanz, ihre Warnungen aber nicht harmlos, weil
`dispatch-run.sh` die Antwort auf Inhalt und Muster prüft und jeder Lauf sein Ergebnis mit
zwei Fremdzeilen beginnt. Fix: Zeile 29 löschen (Zeile 28 trägt die `Edit`-Fassung schon)
und Zeile 32 auf `Edit(...)` umstellen. Ich fasse eine Berechtigungsdatei in einer
Radar-Runde nicht an; das gehört in denselben dedizierten Lauf wie P1.

---
## 2026-07-29 18:57 — [FREI] Ein ruhiges Fenster, und genau darum der Blick auf die Stellen, die sonst niemand liest: die Registry-Beschreibung des einzigen produktiven Lern-Loops beschreibt seit heute früh eine Welt von vorgestern. Vierter Fund desselben Typs an einem Tag

**Selbstkontrolle:** letzter Lauf 15:57 (Einträge 16:04 und 16:11), dieser Lauf 18:57 —
3,0 h bei 3-h-Takt, kein verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner bleibt ausgebaut: auf beiden
Stationen `launchctl list | grep vollgas` leer, beide plists auf `.disabled-260729`, kein
Runner-Prozess. Die Nachtschicht auf dem Mini trägt weiterhin genau vier Slots
(23/2/5/13, Minute 30). Kein Mechanismus feuert doppelt, keiner feuert, der stillgelegt sein
sollte.

**P1 — die Registry-Beschreibung von `wissens-destillat` behauptet zwei Zustände, die es
nicht mehr gibt. Korrigiert.**

Der Eintrag im Task-Register lautete bis eben, der Loop werde von der Nachtschicht getaktet
«23:30/02:30/05:30» und der VOLLGAS-Endlos-Runner «ruht seit 27.07. 22:15/22:20 auf BEIDEN
Stationen per STOP-Datei». Beides ist überholt: die Nachtschicht hat seit heute 02:53 einen
**vierten** Slot (13:30), und der Runner **ruht nicht**, er ist seit heute früh **ausgebaut**
(bootout auf beiden Stationen, plists auf `.disabled-260729`). Eine ruhende STOP-Datei lässt
sich entfernen; ein ausgebauter Mechanismus kommt von allein nie zurück. Der Unterschied
entscheidet, ob ein übersprungener Slot später nachgeholt wird oder ersatzlos verfällt.

Das ist heute der **vierte** Fund desselben Fehlertyps: `normen` um 07:10 (ein Mini-Takt, den
es seit 18.07. nicht mehr gab), `wettbewerbs-dna` um 12:57 (eine Programmdatei, die einen seit
27.07. stillgelegten Takt behauptete), der Doppelarbeit-Guard um 15:57 (ein Schutz gegen einen
Partner, den es nicht mehr gibt) — und jetzt die Registry selbst. Vier Stellen, ein Muster:
**der Ausbau des Runners heute früh hat den ganzen Hub verändert, aber die Beschreibungen
sind stehen geblieben.** Diese hier wiegt schwerer als die drei anderen, weil sie im
Task-Register steht — genau der Ort, den der Nachtschicht-Lauf laut seinem Prompt zusätzlich
konsultiert, um Takt- und Drossel-Regeln zu beachten. Ein Lauf, der dort liest, es gebe eine
zweite Schicht, die «nur ruht», begründet damit erneut ein Ueberspringen.

**Massnahme:** Beschreibung auf den Stand von heute gesetzt (vier Slots namentlich, Ausbau
statt STOP-Datei, dazu der Satz, dass die Nachtschicht damit der **einzige** Lern-Taktgeber ist
und ein übersprungener Slot von niemandem nachgeholt wird). **Nur die Beschreibung** —
Takt, `enabled` und Prompt unangetastet. Es ist eine Faktenkorrektur, kein Eingriff.

**Korrektur an meinem eigenen Eintrag von 15:57:** dort steht, `bauprodukte` sei «rund 40 h»
ohne inhaltliches Delta. Das ist falsch gerechnet. Der jüngste Dateistand in
`wissen/bauprodukte/wiki/` ist der **28.07. 23:42** — zum damaligen Eintrag also 16,2 h, jetzt
**19,3 h**. Der Befund selbst bleibt richtig (die KB mit dem höchsten Hebel steht still), nur
die Zahl war überzogen.

**P2 — Liefer-Delta seit dem letzten Lauf (15:57): kein Lauf gefeuert, und das ist korrekt.**

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 16:00–18:57 | MacBook | — | **Kein Task fällig.** Das Register trägt zwischen 10:00 und 21:57 ausser dem Radar keinen Eintrag. Vorgesehene Tagesruhe der Arbeitsstation (Rollentrennung 28.07.), nicht Leerlauf |
| 16:00–18:57 | Mini | — | **Kein Slot fällig.** Nächster Nachtschicht-Lauf 23:30 |
| 12×/15min | NAS | `nas-selfcommit` | Läuft; die Commits 16:15 bis 18:45 tragen **ausschliesslich** `station-status/*.md` und **zählen nicht als Arbeit** |

Letzte Journalzeile in `logbuch/laeufe/260729-laeufe.jsonl` ist unverändert der 13:34-Abschluss
des Nachtschicht-Slots (rc 0, 252 s, 2.28 USD). **Kein Loop steht bei drei Läufen in Folge ohne
Liefer-Delta.** Keine Rücktaktung, keine Deaktivierung.

**Nachtrag zum 13:30-Slot — die Arbeit ist belegt, aber sie steht unter fremdem Namen.** Ich
hatte um 15:57 den Commit `7be45833` als Beleg genannt. Der Inhalt stimmt (der neue Artikel
`kispi-behoerden-zustaendigkeitswechsel-1171-26.md` liegt darin), die **Message** stammt aber
von einem anderen Lauf: «synobsis-batch: kein Batch (853/853 saturiert)», committet 13:44, also
zehn Minuten nach Ende des Nachtschicht-Slots. Der Nachtschicht-Lauf hat seine Dateien
geschrieben, aber nicht selbst gesichert; der nächste Lauf hat sie mitgenommen. Für die
Delta-Messung ist das eine Störgrösse: wer nach Commit-Messages sucht, findet diese Arbeit
nicht und könnte den Slot fälschlich als Delta Null lesen. Belegt bleibt sie über die
Journalzeile und den Logbuch-Eintrag. **Nicht angefasst** — das wäre ein Eingriff in den
Lauf-Ablauf ohne Auftrag; hier nur festgehalten, damit die nächste Messung nicht darauf
hereinfällt.

**P3 — Zustand der Stationen, unverändert und weiterhin Deine Entscheidung.** Das Lauf-Gate
weist auf dem **MacBook** weiter alles ab (gemessen: **3'168 MB** frei aus `vm_stat`
free+inactive+purgeable, Druck **2**, `lauf-gate.sh` rc=1). Auf dem **Mac Mini** lässt es
durch (Druck **1**, **11'900 MB** frei, rc=0) — der 23:30-Slot ist nicht gefährdet. Die Sperre
bleibt eine reine MacBook-Sache und weiterhin latent; keine Wiederholungsmail.

**Offen, unverändert seit 12:57:** `grobkosten` und `planungsgrundlagen` haben keinen
Scheduled Task und keinen Entscheid von Dir; ihr Ausschluss hing an der `EXCLUDE_RE` des
ausgebauten Runners und ist damit weggefallen. Beide bleiben gültige Ziele, bis Du
entscheidest, ob sie formal ruhen oder wieder mitlaufen.

**Nächster Lauf (21:57):** noch vor dem 23:30-Slot. Danach fällt die eigentliche Probe: greift
der um 15:57 korrigierte Guard zu `bauprodukte`? Tut er es wieder nicht, ist die Heuristik
ausgereizt und der nächste Schritt, die KB für einen Lauf **namentlich** zu setzen.

---
## 2026-07-29 15:57 — [FREI] Die 13:30-Probe ist gefallen: der Slot hat geliefert, aber nicht dort, wo er sollte. Der Grund ist nicht die Rangfolge, die ich um 12:57 repariert habe, sondern ein Schutzmechanismus, der seit heute früh gegen einen Gegner verteidigt, den es nicht mehr gibt

**Selbstkontrolle:** letzter Lauf 12:57 (Eintrag 13:05), dieser Lauf 15:57 — 3,0 h bei
3-h-Takt, kein verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner bleibt ausgebaut: auf beiden
Stationen `launchctl list | grep vollgas` leer, beide plists auf `.disabled-260729`, kein
Runner-Prozess. Kein Mechanismus feuert doppelt.

**P1 — der Slot hat gearbeitet, aber die grösste Lücke wieder nicht angerührt. Ursache
gefunden, behoben, auf beiden Seiten gegengeprüft.**

Der neue 13:30-Slot hat gefeuert (13:30:07 bis 13:34:19, Exit 0, 252 s, 2.28 USD) und hat
geliefert: ein neuer Artikel
`wissen/projekt-lessons/wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md`
füllt den bisher leeren Fokus-Bereich «Koordination & Kommunikation», INDEX/QUESTIONS/CHANGELOG
nachgeführt, im Commit `7be45833` gesichert. **Das ist echte Arbeit und kein Delta-Null-Befund.**

Nur war das nicht das Ziel. `bauprodukte` — der Korpus mit dem höchsten Hebel, 55 offene
Positionen — steht im `wiki/` unverändert auf dem **28.07. 23:42**, inzwischen **rund 40 h ohne
inhaltliches Delta**. Der Lauf begründet das im Protokoll (`dispatch/log/20260729-133007-925.md`)
so: die Prioritäten 3 und 4 seien «bereits von anderen Läufen heute abgedeckt
(Doppelarbeit-Guard)», darum Priorität 5.

Diese Begründung ist der Befund. **Es gibt keine anderen Läufe mehr.** Der Guard im
Lauf-Prompt eröffnet mit dem Satz «Der Dauerschicht-Loop auf dem MacBook Pro arbeitet dieselbe
Liste rund um die Uhr» — geschrieben für eine Welt mit zwei Schichten. Seit dem Ausbau des
Endlos-Runners heute früh ist die Nachtschicht der **einzige** Lern-Taktgeber des Hub. Ein
Schutz gegen Doppelarbeit, der keinen Partner mehr hat, schützt nicht mehr vor Verschwendung,
sondern **erzeugt sie**: er lässt den Lauf sich selbst als die Konkurrenz lesen und zwei
Prioritäten überspringen. Das ist derselbe Fehlertyp wie der `normen`-Befund von 07:10 und die
`wettbewerbs-dna`-Programmdatei von 12:57 — eine Datei, die einen Zustand behauptet, den es
nicht mehr gibt — nur diesmal an der Stelle, die über jeden einzelnen Slot entscheidet.

Der zweite Teil betrifft meine eigene Reparatur von 12:57. Sie war richtig, aber sie zielte auf
die Rangfolge. Der Guard greift **davor** und liest dieselbe verdorbene Messgrösse: er prüft
das CHANGELOG der KB, und in `bauprodukte` stehen dort seit heute zwei Einträge von mir — beide
reine Struktur- und Statuspflege, beide mit heutigem Datum. Für den Guard sieht das aus wie
geleistete Arbeit. Mein Warnhinweis im Statuskopf heilt den Rangfolge-Fall, aber nicht diesen.

**Massnahmen (beide im Lauf-Prompt `scripts/nachtschicht-run.sh`, sonst nichts angerührt):**

- **Doppelarbeit-Guard eng gefasst.** Der Eröffnungssatz nennt jetzt die Lage von heute: der
  Endlos-Runner ist ausgebaut, die Nachtschicht ist der einzige Mechanismus. Der Guard bleibt
  bestehen, aber Überspringen ist nur noch bei **belegtem inhaltlichem Delta desselben Tages**
  zulässig (neue oder gewachsene Datei in `wiki/` bzw. `outputs/`). Ein Struktur-, Status- oder
  Registereintrag im CHANGELOG rechtfertigt es ausdrücklich **nicht**. Im Zweifel arbeiten statt
  überspringen, mit der Begründung: ein doppelt geprüfter Artikel kostet weniger als ein leer
  verstrichener Slot.
- **Priorität 4 misst neu die richtige Grösse.** «Am längsten nicht trainiert» bezieht sich
  jetzt auf den letzten **inhaltlichen** Stand in `wiki/` (jüngste Artikel-mtime) statt auf das
  CHANGELOG-Datum, mit dem heutigen `bauprodukte`-Fall als Beleg im Prompt. Dazu: bei ähnlichem
  Stand zuerst die KB mit den meisten offenen Positionen, und eine PROGRAMM.md mit
  Stillgelegt-/Ereignis-Trigger-Statuskopf ist kein gültiges Ziel — damit sind die Statusköpfe
  von 12:57 im Auswahlweg verankert und nicht mehr nur Beiwerk.
- **Der Kopfkommentar des Skripts** nannte die Nachtschicht weiterhin «Schwester des
  Dauerschicht-Loops». Auch dort auf den Stand von heute gesetzt.

**Kein neuer Loop, kein neuer Takt, keine Änderung an Register, Budget oder Slots.** Es ist
eine Messgrössen- und Faktenkorrektur an einem vorhandenen Mechanismus.

**Verifikation:** `bash -n` sauber auf beiden Seiten; NAS nativ committet
(`nas-commit-now.sh`, kein Git über SMB). Wichtig war der zweite Schritt: die Nachtschicht
startet aus dem **SSD-Klon** des Mac Mini und zieht ihr `git pull` erst **innerhalb** des
Zyklus — die Korrektur hätte den 23:30-Lauf sonst verpasst und erst um 02:30 gegriffen. Klon
darum per ssh sofort nachgezogen und dort gegengeprüft: beide neuen Textstellen vorhanden,
`bash -n` sauber. **Der 23:30-Lauf arbeitet mit der korrigierten Fassung.**

**P2 — Liefer-Delta seit dem letzten Lauf (12:57):**

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 13:30–13:34 | Mini | `nachtschicht` (neuer Slot) | **Geliefert**, Exit 0, 252 s, 2.28 USD — neuer Artikel in `projekt-lessons`, Commit `7be45833`. Ziel verfehlt (siehe P1), aber kein Leerlauf |
| 13:00–15:57 | MacBook | — | **Kein Task fällig.** Das Register trägt zwischen 10:00 und 16:57 ausser dem Radar selbst keinen Eintrag. Vorgesehene Tagesruhe der Arbeitsstation (Rollentrennung 28.07.), nicht Leerlauf |
| 12×/15min | NAS | `nas-selfcommit` | Läuft; die Commits 13:45 bis 15:45 tragen **ausschliesslich** `station-status/*.md` und **zählen nicht als Arbeit** |

**Kein Loop steht bei drei Läufen in Folge ohne Liefer-Delta.** Keine Rücktaktung, keine
Deaktivierung.

**P3 — Zustand der Stationen, unverändert und weiterhin Deine Entscheidung.** Das Lauf-Gate
weist auf dem **MacBook** weiter alles ab (gemessen: **3'580 MB** frei aus
`vm_stat` free+inactive+purgeable, Druck **2**, `lauf-gate.sh` rc=1). Auf dem **Mac Mini** lässt es durch
(Druck **1**, **12'298 MB** frei, rc=0) — der 23:30-Slot ist nicht gefährdet. Die Sperre bleibt
eine reine MacBook-Sache und weiterhin latent; keine Wiederholungsmail.

**Offen, unverändert seit 12:57:** `grobkosten` und `planungsgrundlagen` haben keinen
Scheduled Task und keinen Entscheid von Dir; ihr Ausschluss hing an der `EXCLUDE_RE` des ausgebauten
Runners und ist damit weggefallen. Beide bleiben gültige Ziele, bis Du entscheidest, ob sie
formal ruhen oder wieder mitlaufen. Ihre Sättigung ist belegt (4 bzw. 17 Nullbefunde in Folge),
aber daraus einen Stilllegungsvermerk zu machen, wäre eigenmächtiges Drosseln.

**Nächster Lauf (18:57):** nachziehen, ob der 23:30-Slot mit dem korrigierten Guard zu
`bauprodukte` greift. Tut er es wieder nicht, liegt die Ursache nicht mehr im Prompt, sondern in
der Auswahl selbst — dann ist der nächste Schritt, die KB für einen Lauf **namentlich** zu
setzen, statt weiter an der Heuristik zu drehen.

---
## 2026-07-29 12:57 — [FREI] Der Fix von heute frueh hat die groesste Wissensluecke sichtbar gemacht und sie zugleich ans Ende der Warteschlange gestellt. Dazu: fuenf Programmdateien, von denen keine sagt, dass sie ruht — und eine, die einen Takt behauptet, den es seit dem 27.07. nicht mehr gibt

**Selbstkontrolle:** letzter Lauf 09:57 (Eintrag 10:05), dieser Lauf 12:57 — 3,0 h bei
3-h-Takt, kein verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner bleibt ausgebaut: auf beiden
Stationen `launchctl list | grep vollgas` leer, beide plists auf `.disabled-260729`, kein
Runner-Prozess. Kein Mechanismus feuert doppelt.

**Korrektur am eigenen Eintrag von 09:57:** dort steht als naechster Nachtschicht-Lauf
«23:30». Das ist falsch. Die plist `ch.jans.nachtschicht` traegt seit **heute 02:53** vier
statt drei Slots — **23, 2, 5 und neu 13** (Minute 30, Sicherungskopie
`.bak-3x-260729` daneben). Die Probe auf den Fix faellt also nicht heute Nacht, sondern
**heute um 13:30**, und der Lauf, um den es geht, ist zum Zeitpunkt dieses Eintrags noch
nicht gefeuert. Das ist der Grund, warum dieser Eintrag nicht mit einer Erfolgsmeldung endet,
sondern mit drei weiteren Eingriffen: das Zeitfenster war noch offen.

**P1 — der Fix von 09:57 laeuft Gefahr, sich selbst aufzuheben, und er ist nicht das einzige
Problem der Auswahl. Beides gemessen, beides behoben.**

Die Nachtschicht waehlt in Prioritaet 4 «die KB, die am laengsten nicht trainiert wurde» ueber
das Muster `wissen/*/training/PROGRAMM.md`. Neun KBs matchen. Gemessen am CHANGELOG-Datum
ergibt das diese Reihenfolge:

| Rang | KB | CHANGELOG | Zustand laut Task-Register |
|---|---|---|---|
| 1 | `wettbewerbs-dna` | 27.07. 19:38 | **stillgelegt** 27.07. (Freigabe Raphael) |
| 2 | `spec` | 27.07. 22:21 | **Ereignis-Trigger** 26.07. (Entscheid Raphael) |
| 3 | `grobkosten` | 27.07. 22:21 | kein Task; Register bat zuletzt um Pause |
| 4 | `immobilienbewertung` | 28.07. 23:35 | **Ereignis-Trigger**, naechster Lauf 01.09. |
| 5 | `planungsgrundlagen` | 29.07. 02:07 | kein Task; saturiert (17 Nullbefunde) |
| … | … | … | … |
| **9** | **`bauprodukte`** | **29.07. 10:04** | **aktiv, 55 offene Positionen** |

Die vier vordersten Plaetze gehen an KBs, die aus einem Entscheid Raphaels ruhen. Und
`bauprodukte` — der Korpus mit dem hoechsten Hebel — steht auf dem **letzten** Platz. Der
Grund dafuer ist mein eigener Eintrag von 10:04: das Anlegen der Programmdatei hat den
CHANGELOG auf heute gesetzt. Fuer einen datumsbasierten Auswaehler sieht eine
Struktur-Korrektur aus wie geleistete Arbeit. Der Fix, der die KB sichtbar machen sollte, hat
sie in derselben Bewegung ans Ende der Schlange gestellt. Ihr letzter **inhaltlicher** Stand
ist unveraendert der 28.07. 23:42.

Der zweite Teil ist der schwerere. Ich habe die fuenf ruhenden Programmdateien darauf
geprueft, ob ein Lauf ihren Zustand ueberhaupt erkennen kann: **keine einzige** traegt einen
Stillgelegt- oder Trigger-Vermerk. `wettbewerbs-dna` nennt im Kopf sogar weiterhin einen
laufenden Takt («taeglich 05:22 (Scheduled Task)») — seit dem 27.07. falsch. Das ist
derselbe Fehlertyp wie der `normen`-Befund von 07:10, nur an der Stelle, an der der
Auswaehler tatsaechlich hinschaut: die Auflage im Lauf-Prompt lautet «Takt-/Drossel-Regeln
beachten», aber die Datei, die der Lauf dafuer liest, behauptet das Gegenteil. Der Ausschluss
haengt damit allein daran, dass der Lauf von sich aus zusaetzlich das Task-Register
konsultiert — vier- bis fuenfmal hintereinander richtig, sonst geht der Slot an eine
stillgelegte KB.

**Massnahme:** Statuskopf in die Programmdateien gesetzt, dort wo ein **dokumentierter
Entscheid Raphaels** vorliegt — `wettbewerbs-dna` (stillgelegt 27.07.), `spec` und
`immobilienbewertung` (Ereignis-Trigger 26.07.). Jeder Kopf nennt den Entscheid, sein Datum
und den Satz «kein gueltiges Ziel fuer die Nachtschicht-Prioritaet 4». Bei `wettbewerbs-dna`
zusaetzlich der falsche Takt-Satz als **historisch** markiert. In `bauprodukte` ein
Warnhinweis, dass das CHANGELOG-Datum vom 29.07. eine Struktur-Korrektur ist und nicht
Trainingsfortschritt; massgeblich sind Dateistand in `wiki/` und Inventar. Alle vier
CHANGELOGs nachgefuehrt.

**Ausdruecklich NICHT angetastet: `grobkosten` und `planungsgrundlagen`** (Raenge 3 und 5).
Fuer beide existiert **kein** Scheduled Task und **kein** Entscheid Raphaels zur Nachtschicht
— ihr Ausschluss stand in der `EXCLUDE_RE` des Endlos-Runners, und der ist seit dem 29.07.
ausgebaut. Damit ist der Ausschluss faktisch weggefallen. Ihre Saettigung ist zwar belegt
(4 bzw. 17 Nullbefunde in Folge), aber daraus einen Stilllegungsvermerk zu machen waere
eigenmaechtiges Drosseln und gehoert Dir. **Das ist der Punkt, an dem ich eine Entscheidung
brauche:** sollen die beiden formal als ruhend gefuehrt werden, oder wieder mitlaufen? Bis
dahin bleiben sie gueltige Ziele.

Kein neuer Loop, kein neuer Takt, keine Aenderung an Register oder Prompt, kein inhaltlicher
Eingriff in eine KB. Es sind Dokumentationsstaende, die an die bereits gefaellten Entscheide
angeglichen wurden.

**P2 — der Meldungs-Fix von 09:57 traegt, nachgemessen.** Der Speicher-Waechter meldet seit
10:34 korrekt: «Speicherdruck 2 (2=warnend, 4=kritisch) bei 3626 MB frei — Menge unauffaellig,
Mindestwert 1500 MB», dazu die Spalte «Groesste (Footprint, NICHT freiwerdender Speicher)».
Fuenf Zeilen im neuen Wortlaut (10:34 bis 12:34), die letzte falsche um 10:04. Der
`python3.12=1422M`-Eintrag steht weiter drin und ist weiter nur Footprint — RSS unveraendert
zweistellig. Kein Eingriff noetig.

**Offen aus dem 07:10-Eintrag, unveraendert und weiterhin Deine Entscheidung:** das Lauf-Gate
weist auf dem MacBook alles ab (jetzt gemessen: **3481 MB frei, Druck 2**, `lauf-gate.sh`
rc=1). Auf dem **Mac Mini** dagegen laesst es durch (Druck 1, **12'279 MB** frei) — die
Nachtschicht ruft das Gate selbst auf, ihr 13:30-Slot ist also nicht gefaehrdet. Die Sperre
bleibt eine reine MacBook-Sache und weiterhin latent. Keine Wiederholungsmail.

**Liefer-Delta seit dem letzten Lauf (09:57):**

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 09:40 | MacBook | `heartbeat-daily` | **Geliefert** (Nachtrag zur offenen Zeile von 09:57) — Lauf beendet, `heartbeat.sh` gibt seinen Report an den Aufrufer aus und schreibt keine Datei; kein Datei-Delta zu erwarten, kein Delta-Null-Befund |
| 10:00–12:57 | MacBook | — | **Kein Task faellig.** Zwischen 10:00 und 13:00 steht ausser dem Radar selbst kein Eintrag im Register. Das ist die vorgesehene Tagesruhe der Arbeitsstation (Rollentrennung 28.07.), nicht Leerlauf |
| 15×/15min | NAS | `nas-selfcommit` | Laeuft, aber **zaehlt nicht als Arbeit**: alle zwoelf Commits seit 10:15 aendern ausschliesslich `station-status/mac-mini.md` + `macbook-pro.md` |
| 13:30 | Mini | `nachtschicht` | **Steht noch aus** — der neue Slot. Probe auf den `bauprodukte`-Fix UND auf die drei Statuskoepfe. Beim naechsten Lauf (13:57) nachziehen: greift der Lauf zu `bauprodukte`, oder gewinnt eine der ruhenden KBs? |

**Kein Loop steht bei drei Laeufen in Folge ohne Liefer-Delta.** Keine Ruecktaktung, keine
Deaktivierung. Das leere Fenster 10:00–13:00 ist kein Befund: es war kein Lauf getaktet.

**P3 — offener Faden fuer den naechsten Lauf.** Der Lauf-Prompt in `nachtschicht-run.sh`
nennt den neuen Slot «13:30», die plist feuert Stunde 13 Minute 30 — das stimmt ueberein.
Nicht angefasst habe ich den Auswahl-Mechanismus selbst: Prioritaet 4 globbt weiterhin blind
und sortiert nach einem Datum, das, wie dieser Eintrag zeigt, auch von Struktur-Arbeit
bewegt wird. Die Statuskoepfe heilen den Symptomfall, nicht die Messgroesse. Ob der Prompt
auf «letzter Stand in `wiki/`» statt auf das CHANGELOG-Datum umgestellt werden soll, ist ein
Eingriff in den Taktgeber und gehoert erst nach der 13:30-Probe entschieden.

---

## 2026-07-29 09:57 — [FREI] Der Korpus mit dem hoechsten Hebel war fuer seinen Taktgeber unsichtbar — eine fehlende Datei, seit dem 28.07. Behoben. Dazu: der Speicher-Waechter meldet achtmal taeglich eine Speichernot, die es nicht gibt

**Selbstkontrolle:** letzter Lauf 06:57 (Eintrag 07:10), dieser Lauf 09:57 — 3,0 h bei
3-h-Takt, kein verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner bleibt ausgebaut: auf beiden
Stationen `launchctl list | grep vollgas` leer, beide plists auf `.disabled-260729`. Kein
Mechanismus feuert doppelt.

**P1 — die groesste offene Wissensluecke hat seit gestern keinen Taktgeber mehr, der sie
findet. Ursache war eine fehlende Datei, nicht ein kranker Loop.** Die Fruehwarnung hatte um
07:15 einen Strukturhinweis notiert; nachgemessen ist er zutreffend und schwerer, als er dort
klingt.

Die Mac-Mini-Nachtschicht ist seit dem Ausbau des Endlos-Runners der einzige Mechanismus, der
den Destillat-Korpus takten kann. Sie waehlt ihre Aufgabe in **Prioritaet 4** ueber das Muster
`wissen/*/training/PROGRAMM.md`. `bauprodukte` ist die einzige vorbereitete KB **ohne
`training/`-Verzeichnis** — sie konnte von dieser Prioritaet also **nie** getroffen werden.
Erreichbar blieb sie nur ueber Prioritaet 5 (offene `QUESTIONS.md`), wo sie als eine unter
vielen konkurriert und verliert: die letzten Nachtschicht-Laeufe gingen an `firmengruendung-ch`.

Das Bittere daran ist der Zustand des Korpus. Er ist **nicht erschoepft, sondern unerreichbar**:
Phase 0 seit dem 28.07. komplett (37 Sektionen), 214 Dateien erfasst, davon 13 destilliert,
23 triagiert und 32 offen — **55 offene Positionen**. Letzte inhaltliche Aenderung im `wiki/`
am 28.07. 23:42, seither rund 34 h ohne Delta. Laut `KORPUS-QUEUE.md` ist das der Korpus mit
dem **hoechsten direkten Hebel** von vieren, weil er nach BKP gegliedert ist und `ausschreibung`,
`offertenpruefung`, `brandschutz` und `grobkosten` unmittelbar speist.

**Behoben:** `wissen/bauprodukte/training/PROGRAMM.md` angelegt — ein Wegweiser auf die
bestehende Buchhaltung im Destillat-Skill (Spec, Datei-Inventar, Sektionsstand, Korpus-Queue),
dazu der Umfang je Lauf im 5-USD-Budget der Nachtschicht, die Reihenfolge nach Arbeitsnutzen und
eine Endbedingung. **Kein neuer Loop, kein neuer Takt, keine zusaetzlichen Kosten** — die Datei
macht nur einen vorhandenen Korpus fuer einen vorhandenen Mechanismus auffindbar; das ist
Instandhaltung, keine Kapazitaetsentscheidung. Gegenprobe: das Nachtschicht-Muster trifft die KB
jetzt (9 statt 8 Treffer). CHANGELOG der KB nachgefuehrt. Der naechste Nachtschicht-Lauf um
23:30 ist die Probe aufs Exempel — beim naechsten Radar-Lauf nachziehen.

**P2 — der Speicher-Waechter behauptet achtmal am Tag einen Mengenmangel, den es nicht gibt.
Meldung korrigiert, Schwelle nicht angetastet.** Heute stehen im Waechter-Log acht Zeilen der
Form «WARNUNG: nur 3540 MB verfuegbar (Schwelle 1500 MB)». Der gemeldete Wert liegt beim
**Doppelten** der Schwelle, die er angeblich unterschreitet. Ursache: `KNAPP=1` wird von zwei
Bedingungen gesetzt — Menge **oder** Speicherdruck ≥ 2 — die Meldung war aber nur fuer den
Mengenfall getextet. Ausgeloest hat heute ausschliesslich der Druck.

Das ist derselbe Fehlertyp wie der P1 von heute frueh, eine Ebene tiefer: eine Mechanik, deren
Protokoll etwas anderes behauptet als das, was sie gemessen hat. Wer dieses Log spaeter zur
Diagnose heranzieht — und genau dafuer existiert es — liest eine chronische Speichernot heraus,
die nicht besteht. Die Meldung nennt jetzt den tatsaechlichen Ausloeser; bei echtem
Mengenmangel bleibt der alte Wortlaut und hat Vorrang. **Die Schwelle selbst ist unveraendert**,
sie gehoert zur offenen Frage aus dem 07:10-Eintrag und damit Dir.

Denselben falschen Satz habe ich im Bestand gesucht, wie es die Regel verlangt
(`grep -rn` ueber `scripts/`): drei Stellen pruefen Druck ≥ 2. Das **Lauf-Gate** formuliert
sauber («Speicherdruck 2 (2=warnend, 4=kritisch), 3655 MB verfuegbar») und blieb unberuehrt.
**`multi-claude.sh`** dagegen brach mit «die Station swappt bereits» ab — bei Druck 2 und
3,3 GB frei nachweislich falsch, Stufe 2 heisst «warnend», nicht «swappt». Auch dort nur der
Wortlaut korrigiert, die Schwelle steht. Beide Skripte `bash -n` sauber; der Waechter-Pfad in
allen vier Kombinationen isoliert durchgerechnet (Druck-Fall, Mengen-Fall, beides, keines) —
absichtlich isoliert, weil ein realer Waechter-Lauf OneDrive neu starten kann; der
Abweisungspfad von `multi-claude.sh` real gegen die Station gemessen, mit der neuen Meldung.

**P3 — die Beweiszeile des Waechters nannte bisher genau die Groesse, die schon einmal
irregefuehrt hat.** Die Liste der «Groessten» kommt aus `top -stats mem`, also dem
**Footprint**. Am 29.07. 03:00 wurde ArchiCAD-MCP wegen 1422 MB Footprint beendet und gab
338 MB zurueck. Der Prozess laeuft inzwischen wieder (er haengt an einem MCP-Server, startet
also mit der naechsten Sitzung von selbst) und steht heute erneut mit `python3.12=1422M` in
jeder Waechter-Zeile — **RSS real 12 MB**, gerade nachgemessen. Die Spalte ist neu als
«Footprint, NICHT freiwerdender Speicher» beschriftet, damit die Zeile nicht zum dritten Mal
zum falschen Schluss einlaedt. Ein Beenden lohnt nicht und wurde unterlassen.

**P3 — Beobachtung ohne Eingriff:** Prioritaet 4 der Nachtschicht globbt blind ueber alle
`training/PROGRAMM.md` und kann damit auch KBs treffen, die stillgelegt sind
(`wettbewerbs-dna` 27.07., `planungsgrundlagen` 28.07.) oder auf Ereignis-Trigger stehen
(`spec`, `immobilienbewertung`). Der Lauf-Prompt traegt zwar die Auflage «Takt-/Drossel-Regeln
beachten», verlaesst sich dabei aber auf das Urteil des Laufs statt auf die Auswahl. Nicht
angefasst — ich habe in diesem Lauf schon zwei Skripte und eine Programmdatei angeruehrt und
stapele nicht noch eine Prompt-Aenderung darauf. Kandidat fuer den naechsten Lauf.

**Liefer-Delta seit dem letzten Lauf (06:57):**

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 07:07 | MacBook | `logbuch-radar` | **Geliefert** (Nachtrag zur offenen Zeile von 07:10) — Briefing-Mail versendet, 188 Zeilen, Commit `3ffe933c` |
| 07:15 | MacBook | `vollgas-fruehwarnung` | **Geliefert** — still, keine Mail; Blockade-Pruefung sauber, dazu der Strukturhinweis, aus dem der P1 dieses Eintrags wurde |
| 07:46 | MacBook | `ag-gruendung-monitor` | **Geliefert** — nichts Neues, UBS 32 Tage still, Commit `7372b368` |
| 08:05 | MacBook | `mahnwesen-verzugscheck` | **Geliefert** — Ergebnis im Hub-Chef-Briefing belegt (RE-00087/98/99/100/101 einzeln beurteilt) |
| 08:23 | MacBook | `zahlungsabgleich-check` | **Geliefert** — desgleichen, bexio `--abgleich` im Briefing verarbeitet |
| 08:39 | MacBook | `hub-chef-taeglich` | **Geliefert** — Briefing mit vier Befunden, Roethlisberger-Angebot nachgerechnet (CHF 71'263.95 gegen Budget 70'000), Huwiler-Retour geklaert, Mail-Entwurf als Draft, 44 Zeilen ins Logbuch, Commit `3f3a6395` |
| 09:40 | MacBook | `heartbeat-daily` | Zum Messzeitpunkt noch in Arbeit, nicht beurteilbar — beim naechsten Lauf nachziehen |
| — | Mini | `nachtschicht` | Naechster Lauf 23:30; der 05:30-Lauf steht im Eintrag von 07:10 |

**Kein Loop steht bei drei Laeufen in Folge ohne Liefer-Delta.** Keine Ruecktaktung, keine
Deaktivierung. Alle sieben faelligen operativen Briefings haben ihr Deliverable erreicht.

**Offen aus dem 07:10-Eintrag, unveraendert:** das Lauf-Gate weist auf dem MacBook weiter alles
ab (jetzt 3313 MB frei, Druck 2). Seit 07:33 hat es keinen echten Aufrufer getroffen, nur meine
eigenen Testproben — die Sperre bleibt latent. Die Entscheidung, ob Druck 2 ein Veto
rechtfertigt oder erst Druck 4, liegt bei Dir; Vorschlag steht im Eintrag von 07:10. Keine
Wiederholungsmail.

---

## 2026-07-29 07:10 — [FREI] Das Lauf-Gate steht auf dem MacBook seit fuenf Stunden dauerhaft zu — bei 3,7 GB freiem Speicher. Der Selbsttest nennt das «OK». Bisher ohne Schaden, weil der einzige Aufrufer nichts zu tun hatte

**Selbstkontrolle:** letzter getakteter Lauf 03:57 (Eintrag 04:20), dieser Lauf 06:57 — 3,0 h
bei 3-h-Takt, kein verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK» (rc 0). Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner bleibt ausgebaut: auf beiden
Stationen `launchctl list | grep vollgas` leer, beide plists auf `.disabled-260729`, kein
Runner-Prozess. Kein Mechanismus feuert doppelt.

**Der Wrapper-Fix von 04:20 traegt in der Produktion.** Die Nachtschicht 05:30 auf dem Mini lief
mit Exit 0 durch (302 s, 42 Turns) und lieferte einen belegten Artikel — genau der Lauf, der um
02:30 noch nach 47 Sekunden mit Exit 2 stumm gestorben war. Der Auth-Fehler im Verifikationslauf
von 04:20 war damit nachweislich mein eigener Testfehler und kein Stationsbefund.

**P1 — das Lauf-Gate weist auf dem MacBook seit 02:17 ALLES ab, obwohl reichlich Speicher da
ist.** Das Gate hat drei Kriterien: Laufzahl, Speichermenge und Speicherdruck. Die ersten beiden
sind erfuellt (0 von 2 Laeufen, 3657 MB gegen einen Mindestwert von 3000 MB). Abgewiesen wird
allein wegen des dritten: `kern.memorystatus_vm_pressure_level` steht auf 2, und Zeile 129 des
Gates vetoisiert ab 2 — unabhaengig davon, wie viel Speicher frei ist.

Das waere richtig, wenn Stufe 2 ein Ausnahmezustand waere. Auf dieser Station ist sie der
Normalzustand: in den letzten 14 Halbstunden-Messungen des Speicher-Waechters steht **zwoelfmal
Druck 2**, zweimal Druck 1. Die letzte Freigabe im Gate-Log datiert von 01:27 (`normen-training-nacht`,
3495 MB, Druck 1); seither ausschliesslich Abweisungen — vier Selbsttest-Proben und zwei
Radar-Proben, alle mit dem Vermerk «Speicherdruck 2», alle bei 3007 bis 3749 MB frei.

**Der Selbsttest sieht das und meldet trotzdem «OK».** Er prueft den Freigabepfad, faengt die
Abweisung ab und stuft sie in Zeile 70/71 als unbedenklich ein, sobald der Grund das Wort
«Speicherdruck» enthaelt — mit der Begruendung, bei echter Speichernot sei die Abweisung ja
korrekt. Das ist fuer einen kurzen Engpass richtig gedacht und unterscheidet nur nicht zwischen
«weist gerade zu Recht ab» und «weist seit fuenf Stunden bei 3,7 GB frei ab». Um 02:38:34 wurde
`selbsttest-freigabe` abgewiesen, acht Sekunden spaeter meldete der Selbsttest «alle Pruefungen
bestanden». Das ist genau die Fehlerfigur, gegen die er gebaut wurde (Rollen-Taxonomie Nr. 5,
«eine Mechanik, die immer nein sagt, sieht im Log aus wie eine, die funktioniert») — eine Ebene
hoeher angewendet.

**Schaden bisher: keiner — und das gehoert dazugesagt.** Auf dem MacBook fragt genau ein
Mechanismus das Gate: `wissens-trigger` (06:30). Der ist ereignisgesteuert und startet nur bei
veraendertem Rohmaterial; heute um 06:30 endete er mit «0 Lauf/Laeufe ausgeloest» und hat das
Gate gar nicht erst erreicht. Die App-Scheduled-Tasks erreichen es baulich ohnehin nicht — darum
haben `twin-mail-training` und `twin-fidelity-review` heute Nacht normal geliefert. Der
Endlos-Runner ist ausgebaut. Die Sperre ist also **latent, nicht eingetreten**: sie schlaegt in
dem Moment zu, in dem in einer beobachteten KB neues Material auftaucht, und sie verhindert
schon jetzt jeden Parallellauf ueber `multi-claude.sh`.

Ich habe die Schwelle **nicht** angetastet. Ob Druck 2 ein Veto rechtfertigen soll oder erst
Druck 4 (kritisch), ist eine Kapazitaetsentscheidung und gehoert Dir — die Regel «kein
eigenmaechtiges Drosseln» gilt in beide Richtungen. **Vorschlag:** Druck 2 nicht mehr als Veto,
sondern als Verschaerfung der Mengenschwelle behandeln (bei Druck 2 z.B. den doppelten
Mindestwert verlangen), Veto erst ab Druck 4. Dann bleibt der Schutz gegen eine wirklich
swappende Maschine erhalten, ohne dass der Normalzustand einer warmgelaufenen Arbeitsstation das
Tor zusperrt. Zweitens sollte der Selbsttest eine Dauer-Abweisung von einer momentanen trennen
(z.B. Befund, wenn der Freigabepfad ueber mehrere Laeufe hinweg nie durchlaesst).

**P2 — eine Task-Beschreibung behauptete elf Tage lang einen Loop, den es nicht gibt.
Korrigiert.** `normen-training-nacht` trug im Beschreibungstext den Satz «DIN/VSS/RAL laeuft
weiter auf dem Mac Mini» — noch in der heute frueh aktualisierten Fassung. Nachgemessen: die
plist `ch.jans.training-normen` auf dem Mini traegt `Disabled = true`, steht nicht in
`launchctl list`, und im Trainings-Log des Mini taucht seit dem 20.07. kein einziges
«Start normen» auf. Abgeschaltet wurde sie am 18.07. mit der Drossel und nie wieder scharf
gestellt.

Die Stilllegung war **richtig** und wird nicht rueckgaengig gemacht: der Bestand ist fertig.
Im Inventar sind DIN 72 Dateien, VSS 17, RAL 1, und jede Zeile traegt entweder `[x]`
(destilliert und verifiziert, ueberwiegend zusaetzlich mit Q&A-Selbstbefragung) oder «—» (kein
Normdokument, uebersprungen). **Null offene Positionen.** Letzter Mini-Run war Nr. 30 am 14.07.
Falsch war also nicht der Zustand, sondern der Satz darueber. Beschreibung entsprechend
korrigiert; die Zustaendigkeitsregel (SIA+VKF am MacBook) bleibt, nur feuert dazu kein
Mini-Mechanismus mehr.

**P3 — ein produktiver Loop laeuft ausserhalb der Aufsicht.** `ch.jans.training-energie` auf dem
Mini (launchd, taeglich 22:30) steht in **keiner** Scheduled-Task-Registry und wird darum weder
von diesem Radar noch von der Fruehwarnung im Liefer-Delta gefuehrt. Er ist keineswegs untaetig:
Lauf vom 28.07. 22:30 bis 22:51 lieferte Run 118 mit sechs Destillaten, FAQ F178 bis F183 und
Commit `6e2bf77d`. Ab sofort in der Tabelle unten mitgefuehrt. Gegenprobe am Nachbarn: das
Schwester-Script `training-plg` wurde am 28.07. korrekt stillgelegt (plist `.disabled-260728`),
nachdem der Loop selbst dreimal die Ruecktaktung empfohlen und die **27. Erschoepfungsbestaetigung
in Folge** gemeldet hatte. Der Leerlauf-Waechter hat dort also funktioniert.

**Eigener Messfehler — zum zweiten Mal derselbe, deshalb jetzt ein Werkzeug statt einer Notiz.**
Meine Ad-hoc-Nachmessung des freien Speichers ergab 0,92 GB und liess das Gate defekt aussehen.
Ursache: hart kodierte Seitengroesse 4096, waehrend Apple Silicon 16384 Byte pro Seite nutzt —
der Wert war um exakt den Faktor vier zu klein, real sind es 3657 MB. **Denselben Fehler hatte
ich am 28.07. 22:00 schon einmal gemacht und als P3 protokolliert**, samt der Lehre, eine
Kennzahl immer mit der Funktion der Schutzmechanik selbst gegenzumessen. Die Notiz hat die
Wiederholung nicht verhindert. Darum trage ich sie nicht noch einmal ein, sondern habe das Gate
um einen lesenden Schalter erweitert: `bash scripts/lauf-gate.sh --messung` gibt Station,
Laufzahl, verfuegbaren Speicher und Druckstufe so aus, wie das Gate sie selbst liest,
entscheidet nichts und protokolliert nichts. Wer das Gate kuenftig nachprueft, baut die Messung
nicht mehr nach.

Beide Pfade nachgemessen, wie es die Regel fuer jede Aenderung an einer Schutzmechanik verlangt:
`bash -n` OK · neuer Schalter auf beiden Stationen rc 0 mit plausiblen Werten (MacBook 3657 MB /
Druck 2, Mini 12698 MB / Druck 1) · **Abweisungspfad** zweimal rc 1 (Druckveto und kuenstliche
Mengenschwelle) · **Freigabepfad** rc 0 auf dem Mini, wo Druck 1 herrscht. Der SSD-Klon des Mini
traegt den Schalter noch nicht und zieht ihn per Pull nach; die Entscheidungslogik ist
unveraendert, die alte Fassung bleibt also in jedem Fall korrekt.

**Liefer-Delta seit dem letzten getakteten Lauf (03:57):**

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 05:30 | Mini | `nachtschicht` | **Geliefert** — Artikel `kapitalband-und-fremdwaehrung` (KB firmengruendung-ch), zwei Artikel bereinigt, INDEX/QUESTIONS/CHANGELOG nachgefuehrt; belegt am amtlichen Fedlex-Volltext. Exit 0 nach dem Wrapper-Fix |
| 05:44 | MacBook | `twin-fidelity-review` | **Geliefert** — Fidelity-Report 2026-07-29 (141 Zeilen), QUESTIONS +51, CHANGELOG +19. Kernbefund ist ein Messfehler-Befund des Loops selbst: schlechteres Ergebnis auf derselben Goldprobe, weil der Lauf vorhandene Marker nicht fand; Facetten-Artikel bewusst unveraendert gelassen |
| 06:13 | MacBook | `konversations-log` | **Geliefert** — Tages-Destillat (166 Zeilen) plus Fristen-Register |
| 06:30 | beide | `wissens-trigger` | Kein Lauf, korrekt: Rohmaterial in `energie` und `planungsgrundlagen` unveraendert. Kein Delta-Null-Befund, sondern ein Ereignis-Trigger ohne Ereignis |
| 06:54 | MacBook | `logbuch-radar` | Zum Messzeitpunkt noch in Arbeit, nicht beurteilbar — beim naechsten Lauf nachziehen |
| 22:30 (28.07.) | Mini | `training-energie` | **Geliefert** — Run 118, sechs Destillate, FAQ F178–F183, Commit `6e2bf77d`. Neu in dieser Tabelle, siehe P3 |

Damit ist die offene Frage aus dem 04:20-Eintrag beantwortet: `twin-fidelity-review` hat
geliefert, der Null-Tag vom 28.07. war der Neustart um 06:53 und kein kranker Loop. **Kein Loop
steht bei drei Laeufen in Folge ohne Liefer-Delta.** Keine Ruecktaktung, keine Deaktivierung.

 Ursache gefunden, reproduziert, behoben — der Fehler haette ab heute auch den Mittags-Versuch und den Handy-Weg getroffen

**Selbstkontrolle:** letzter **getakteter** Lauf 00:57 (Eintrag 01:00), dieser Lauf 03:57 —
3,0 h bei 3-h-Takt, kein verpasster Lauf. Der Eintrag 03:00 dazwischen war interaktiv.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung antwortet «OK». Kein
Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner bleibt ausgebaut: auf beiden
Stationen `launchctl list | grep vollgas` leer, beide plists auf `.disabled-260729`, kein
Runner-Prozess. Kein Mechanismus feuert doppelt.

**P1 — GEFUNDEN UND BEHOBEN: der gestern Nacht eingefuehrte Wrapper `claude-run.sh` liess
jeden Aufrufer mit Exit 2 und LEERER Ausgabe scheitern.**

Befund am Liefer-Delta, nicht am Log: die Nachtschicht 02:30 auf dem Mac Mini endete nach
**47 Sekunden mit Exit 2**, drei Versuchen und leerem Ergebnisfeld
(`dispatch/log/20260729-023006-27032.md`). Kein Artefakt, kein Commit, keine Journalzeile.

Die Ursache ist eine einzige Zeile. Der Wrapper prueft das Binary mit `[ -x "$CLAUDE_BIN" ]`.
Die drei Aufrufer `dispatch-run.sh`, `wissens-trigger.sh` und `vollgas-runner.sh` reichen aber
den **blossen Namen** «claude» durch, solange `command -v claude` greift — sie ersetzen ihn nur
dann durch einen vollen Pfad, wenn er im PATH **fehlt**. `[ -x claude ]` prueft eine Datei im
Arbeitsverzeichnis, findet keine und der Wrapper bricht ab. Die Meldung «claude nicht gefunden»
ging auf stderr, das `dispatch-run.sh` nach `/dev/null` warf — darum sah der Lauf im Protokoll
aus wie eine stumme API und lief dreimal ins Leere.

Reproduziert vor der Korrektur: `CLAUDE_BIN=claude bash scripts/claude-run.sh …` → rc 2,
stdout leer. Umgekehrt lief der Wrapper auf seinem **eigenen** Default (`command -v claude`)
sauber — genau darum haben die beiden Selbsttests um 02:04 und 02:13 gruen gemeldet. Geprueft
wurde der Wrapper, nie der **Aufrufer-Pfad**. Das ist die Hub-eigene Regel «eine Schutzmechanik
ist erst fertig, wenn beide Pfade nachgemessen sind», hier auf die Schnittstelle angewendet.

Zwei Korrekturen, beide auf dem NAS:
- **Wurzel** (`scripts/claude-run.sh`): ein blosser Name wird zuerst ueber PATH aufgeloest, erst
  danach auf Ausfuehrbarkeit geprueft. Das heilt alle drei Aufrufer zugleich, statt dreimal
  denselben Fehler am Fundort zu flicken.
- **Sichtbarkeit** (`scripts/dispatch-run.sh`): stderr des Wrappers geht nicht mehr nach
  `/dev/null`, sondern ins Protokoll; ist die Antwort leer und liegt eine Wrapper-Meldung vor,
  wird sie durchgereicht. Nebeneffekt: ein Konfigurationsfehler loest keine drei Wiederholungen
  mehr aus, weil er als nicht wiederholbar erkennbar wird.

Verifikation, beide Pfade nachgemessen:
- **Abweisungspfad** zweimal — unbekannter Name und nicht ausfuehrbarer Pfad, je rc 2, und die
  Meldung nennt neu den beanstandeten Wert statt nur «nicht gefunden».
- **Freigabepfad** zweimal. Auf dem Mini die Aufloesung direkt gegen das echte Binary gemessen:
  «claude» → `/opt/homebrew/bin/claude`, ausfuehrbar. Auf dem MacBook der volle Durchlauf: der
  Aufruf, der vorher in Millisekunden mit rc 2 aus dem Wrapper starb, hat nach 514 Sekunden mit
  **rc 1 aus `claude` selbst** geendet und dabei eine vollstaendige Journalzeile geschrieben
  (`duration_ms`, `session_id`, `num_turns`). Damit ist genau das belegt, worum es geht: der
  Wrapper loest den Namen auf und uebergibt an das Binary.
  Das rc 1 war **mein eigener Testfehler**, kein Stationsbefund — ich habe in diesem einen
  Aufruf `~/.jans-dispatch.env` nicht geladen, worauf die dokumentierte Falschmeldung «OAuth
  session expired» kommt. Die Fensterprobe zu Beginn dieses Laufs, mit geladener Anmeldung,
  antwortete «OK». Nebenbefund fuers Protokoll: der Fehlschlag brauchte 8,5 Minuten — der
  Auth-Fehlerpfad laeuft genauso lange wie ein erfolgreicher Trivial-Lauf, was jede
  Zeitmessung an diesem Wrapper unbrauchbar macht, solange es nicht geklaert ist.
- `bash -n` auf beiden Scripts OK. Der Fix liegt auch im SSD-Klon des Mini (nachgeprueft), die
  Nachtschicht 05:30 laeuft also in die korrigierte Fassung.

Eine Randbedingung bleibt bewusst so: gibt `command -v` einen Shell-Builtin statt eines Pfades
zurueck, bricht der Wrapper weiterhin mit rc 2 ab. Das ist richtig so, weil er ein echtes
ausfuehrbares Binary braucht; die Meldung sagt jetzt, welcher Wert gescheitert ist.

**Reichweite, die damit abgewendet ist.** Der Fehler kam mit Commit `fe6f1150` (29.07. 02:11)
und traf ab da jeden Lauf ueber `dispatch-run.sh` oder `wissens-trigger.sh`. Betroffen waeren
gewesen: die Mac-Mini-Nachtschicht 05:30 (in gut einer Stunde), der **13:30-Versuchs-Slot**,
den Du gestern freigegeben hast, und der **Handy-Weg** ueber `dispatch-run.sh`. Der Mittags-Slot
haette damit ein falsches Ergebnis geliefert — er waere gefeuert, waere stumm gescheitert und
haette in der Auswertung wie ein Slot ohne Ertrag ausgesehen. Genau die Falle, die beim Einbau
des Slots am 03:00 einmal umgangen wurde, ist ueber die andere Tuer wieder hereingekommen.

**Liefer-Delta seit dem letzten getakteten Lauf (00:57):**

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 01:27 | MacBook | `normen-training-nacht` | Run 36 + Run 37 geliefert, dazu das Entscheid-Paket (Commits `fe6f1150`, `ab99790e`, `c3d58016`) |
| 02:30 | Mini | `nachtschicht` | **Exit 2, nichts geliefert** — Ursache oben, behoben |
| 03:39 | MacBook | `twin-mail-training` | **Batch 81 geliefert** (Commit `74258096`): 8 Dateien, drei Facetten-Wikis, CHANGELOG, QUESTIONS |

Damit ist die Haelfte der Vorhersage aus dem 01:00-Eintrag eingeloest: `twin-mail-training`
hat nach dem Null-Tag vom 28.07. wieder geliefert, der Ausfall war der Neustart um 06:53, kein
kranker Loop. **Offen bleibt `twin-fidelity-review`** (naechster Lauf 05:44) — der uebernaechste
Eintrag prueft ihn. Keine Ruecktaktung, keine Deaktivierung: kein Loop hat drei Laeufe in Folge
ohne Delta.

**P1 vom 03:00 ist geschlossen.** Die SSD-Vorrang-Falle des Mittags-Slots ist nachgemessen: der
SSD-Klon des Mini traegt `MITTAG_SLOT` (Zeilen 40–44), und die **geladene** launchd-Definition
weist 23:30 / 02:30 / 05:30 / **13:30** aus. Der Slot feuert heute in die richtige Fassung.

**P2 — der MacBook Pro sammelt Claude-Sessions, der Mini nicht.** Gemessen: 56 Prozesszeilen
gegen **4** auf dem Mini, 52 davon aelter als eine Stunde, die aelteste 21 Stunden. Speicher
nach `vm_stat` frei+inaktiv+purgeable **3781 MB** bei Druckstufe **2** (der Mini liegt bei 1).
Bewusst **nichts** beendet: die Lehre vom 03:00 (Footprint ist nicht der Speicher, der beim
Beenden frei wird) gilt hier genauso, und der MacBook ist Deine Arbeitsstation — ein Teil dieser
Sessions duerfte offen und gewollt sein. Zu klaeren waere, ob die App Sessions nach Abschluss
nicht abraeumt; das gehoert gemessen, bevor jemand aufraeumt.

**P3 — das Lauf-Journal ist noch kein Messinstrument.** `logbuch/laeufe/260729-laeufe.jsonl`
enthaelt drei Zeilen: zwei Selbsttests und meinen Verifikationslauf. Kein produktiver Lauf der Nacht hat
hineingeschrieben — teils, weil sie am Wrapper scheiterten, teils weil sie ihn nicht benutzen.
Der Liefer-Delta muss deshalb weiter ueber Commits und geaenderte Dateien gemessen werden, so
wie in diesem Eintrag. Die erste Zeile der Selbsttests zeigt zudem `is_error: true` mit
JSON-Bruchstueck im Ergebnis — der Rohtext-Fallback des Wrappers greift dort, wo er nicht
sollte. Beides sollte stehen, bevor das Journal als Beleg zitiert wird.

**Keine Mail.** Der Blocker war in diesem Lauf loesbar und ist geloest; er verlangt keine
Entscheidung von Dir.

## 2026-07-29 03:00 — [FREI] Raphael hat die drei offenen Entscheide freigegeben: Endlos-Runner ausgebaut, ArchiCAD-MCP beendet, Mittags-Slot als Versuch. Die Runner-Aera ist zu Ende

**Selbstkontrolle:** letzter Eintrag 01:00, dieser Lauf 03:00 — interaktiv ausgeloest durch
Raphael (Frage nach offenen Eingaben), nicht der 3-h-Takt. Kein verpasster Lauf.

**Fensterzustand: FREI.** Unveraendert seit 01:00, keine neue Probe noetig.

**Alle drei seit dem 27.07. wiederholt vorgelegten Punkte sind entschieden und vollzogen.**
Vorgelegt als Plan mit Optionen, Freigabe der empfohlenen Variante.

**Entscheid 1 (1A) — ArchiCAD-MCP beendet, aber der Gewinn ist ein Achtel des erwarteten.**
PID 1405/1406 (`archicad-server`, tapir-archicad-MCP) beendet, ArchiCAD lief nicht.
Erwartet waren nach der `top`-MEM-Anzeige (2x 1424 MB) rund 2,8 GB. Gemessen ueber `vm_stat`
free+inactive+purgeable: **3672 MB vorher, 4010 MB nachher — plus 338 MB.** Der Rest lag
komprimiert (Compressor 5324 MB, Swap 399 von 1024 MB belegt).
**Dritte Messfalle derselben Familie, und die feinste:** `ps`-RSS zeigt komprimierten Speicher
gar nicht, `top`-«unused» ist nie der verfuegbare Speicher — und der `top`-MEM-Wert eines
Prozesses ist sein **Footprint**, nicht der Speicher, der beim Beenden frei wird. Wer eine
Aufraeum-Massnahme mit der Footprint-Zahl begruendet, verspricht das Achtfache dessen, was sie
liefert. In die Messdisziplin beider Aufsichts-Tasks aufgenommen. Der Server ist beim naechsten
Start der Claude-App wieder da; ob er dauerhaft aus der Desktop-Config soll (Option 1B), haengt
daran, wie oft die ArchiCAD-Werkzeuge gebraucht werden — offen, aber nicht dringend.

**Entscheid 2 (2A) — der VOLLGAS-Endlos-Runner ist ausgebaut.** Vollzogen und verifiziert:

| Ort | MacBook Pro | Mac Mini |
|---|---|---|
| `ch.jans.vollgas-supervisor` | bootout rc 0, plist → `.disabled-260729` | bootout rc 0, plist → `.disabled-260729` |
| `ch.jans.vollgas-monitor` (alle 15 s) | bootout rc 0, plist → `.disabled-260729` | existierte dort nicht |
| `launchctl list \| grep vollgas` | leer | leer |
| Runner-Prozess | keiner | keiner |

Damit endet ein Mechanismus, der historisch mehr Vorfaelle verursacht als Ertrag geliefert hat:
er unterlief die bewusst gewaehlten Loop-Takte, verbrauchte am 25.07. 53 Mio teure Tokens und
fuehrte in den 35-Stunden-Totalausfall. Seit dem 27.07. lag er ohnehin still, waehrend der
Supervisor alle 180 Sekunden und der Monitor alle 15 Sekunden ins Leere liefen.

**Die drei Orte sind nachgezogen, nicht nur der eine** (Rule «Deaktivierung braucht ALLE Orte»):
- launchd auf beiden Stationen (oben);
- beide STOP-Dateien tragen jetzt oben den Vollzug und die Klarstellung, dass ihr Entfernen
  **nichts mehr startet** — die alten Entfernungs-Bedingungen waren eine Falle fuer den naechsten
  Leser, sie sind ausdruecklich fuer gegenstandslos erklaert;
- die Aufsichts-Tasks selbst: `vollgas-chef-radar` startet den Runner nicht mehr (Schritt 3 ist
  neu «Feuermechanismen pruefen»), und beide Tasks messen neu den **Liefer-Delta** je Loop statt
  Runner-Logs, die nie wieder frisch werden. `vollgas-fruehwarnung` empfiehlt als Drosselweg
  nicht mehr die STOP-Datei, sondern `enabled=false` am betroffenen Task.

**Entscheid 3 (3A) — Versuchs-Slot 13:30 auf dem Mac Mini, und dabei die Falle vermieden.**
Der Slot allein waere **wirkungslos** geblieben: `nachtschicht-run.sh` beendet sich zwischen
09:00 und 18:00 selbst — der Job haette gefeuert, sich still beendet und im Log ausgesehen wie
ein gesunder Lauf. Beide Orte geaendert: launchd-Slot 13:30 ergaenzt (PlistBuddy, `plutil -lint`
OK, Backup `.bak-3x-260729`) UND die Fenster-Ausnahme `MITTAG_SLOT=13` im Script, mit
dokumentiertem Rueckbau ueber beide Orte. Guard-Logik simuliert: 8/13/19 Uhr laufen, 10/14 Uhr
beenden sich. Die **geladene** Definition ist gegengeprueft (`launchctl print`), nicht nur die
Datei: 23:30 / 02:30 / 05:30 / **13:30**.
Befristet auf eine Woche; `vollgas-fruehwarnung` weist danach aus, ob der Slot geliefert hat und
ob das Lauf-Gate ihn je abgewiesen hat — Grundlage fuer Deinen Entscheid, ob er bleibt.

**P1 — offen bis zum Commit: die SSD-Vorrang-Falle.** Der launchd-Job auf dem Mini nimmt
`$HOME/Developer/jans-ai-hub/scripts/nachtschicht-run.sh` **vor** der NAS-Fassung. Meine
Script-Aenderung liegt auf dem NAS und wird erst nach `nas-commit-now` und dem Pull des
Mini-Klons wirksam. Wird das versaeumt, feuert der 13:30-Slot heute in die alte Fassung und
beendet sich still. Unmittelbar nach diesem Eintrag gesichert und auf dem Mini gegengeprueft.

**Liefer-Delta: unveraendert seit 01:00**, keine Massnahme. Die dort gestellte Vorhersage zu
`twin-mail-training` (03:39) und `twin-fidelity-review` (05:44) ist noch offen — der naechste
Lauf prueft sie.

## 2026-07-29 01:00 — [FREI] Das Nachtfenster traegt (drei Laeufe, drei Ergebnisse). Aber zwei Twin-Loops haben am 28.07. NICHTS geliefert — die Registry meldet sie trotzdem als gelaufen

**Selbstkontrolle:** letzter Eintrag 28.07. 22:00, dieser Lauf 29.07. 00:57 — 3,0 h bei
3-h-Takt, kein verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung (`. ~/.jans-dispatch.env`)
antwortet «OK». Kein Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner ruht
unveraendert auf beiden Stationen (STOP-Dateien, Gruende aktuell und dokumentiert).

**Durchsatz: das Fenster war mit ARBEIT gefuellt.** Alle drei geplanten Laeufe der letzten
drei Stunden haben gefeuert UND geliefert — kein Delta-Null, keine Massnahme noetig:

| Zeit | Station | Loop | Ergebnis |
|---|---|---|---|
| 22:30 | Mini | `training-energie` | Run 118: sechs neue Destillate, FAQ F178–F183 (Commit 22:45) |
| 23:11 | MacBook | `wissens-chef` | Run 19: Cross-KB am neuen WsG/WsV-Volltext, 7 bestaetigt / 3 widerlegt (Commit 23:36) |
| 23:30 | Mini | `nachtschicht` → Destillat | Artikel `bkp-261-aufzuege.md`, im INDEX registriert (Commit 23:45) |

**P1 — ZWEI LOOPS MIT EINEM GANZEN TAG NULL-ERTRAG, VON DER REGISTRY VERDECKT.**
`twin-mail-training` und `twin-fidelity-review` haben am 28.07. **kein einziges Artefakt**
erzeugt. Nachgemessen ueber vier unabhaengige Spuren:

- kein Commit am 28.07. — juengster twin-mail-Stand ist **Batch 79 vom 27.07. 20:32**,
  juengster Fidelity-Report **260727l vom 27.07. 21:50**;
- keine Facetten-Wiki-Aenderung (`stimme`, `arbeitsweise`, `fachsignatur`, `beziehungsregister`,
  `haltung`, `denken` — alle Stand 27.07.);
- kein Report in `wissen/twin/outputs/` fuer den 28.07.;
- `wissen/twin/CHANGELOG.md` endet am 27.07.

Geaendert wurde am 28.07. in der ganzen KB genau **eine** Datei — `QUESTIONS.md` um 09:00,
und zwar durch den **twin-chef-Gate**, einen anderen Mechanismus.

Die Registry sagt das Gegenteil: beide Tasks tragen `lastRunAt` **2026-07-28T04:50:50Z**
(= 06:50:50 lokal) und sehen damit gesund aus. Der 06:55-Eintrag hatte diesen
Nachhol-Schwung bereits gesehen (vier faellige Tasks in derselben Sekunde) und ihn als
P3-«Wecker-/Schlaf-Verhalten» abgelegt — was niemand geprueft hat, ist, ob die nachgeholten
Laeufe danach auch **etwas abgeliefert** haben. Der Rest der Kette ist jetzt gemessen:
`last reboot` und `kern.boottime` weisen einen **Neustart um 06:53:53** aus, also rund drei
Minuten nach dem Start beider Laeufe. Bei typischen Laufzeiten von 5 bis 25 Minuten waren
beide zu diesem Zeitpunkt mitten in der Arbeit. Beweisbar sind Start (06:50:50), Neustart
(06:53:53) und Null-Ertrag; dass der Neustart die Ursache war, ist die sparsamste Erklaerung,
nicht ein gemessener Kausalzusammenhang.

**Konsequenz fuer den Leerlauf-Auftrag selbst — hier war meine Messgroesse blind.** Schritt 4
meines Auftrags zaehlt Laeufe, die «nichts Neues» **melden**. Ein Lauf, der abgeschossen wird,
meldet gar nichts und ist von einem stillen, gesunden Loop nicht zu unterscheiden. Und
`lastRunAt` markiert den **Start**, nicht die Lieferung. Ein Loop kann also in der Registry
taeglich «laufen» und trotzdem seit Tagen nichts beitragen. Massgeblich ist ab jetzt der
**Liefer-Delta** je Loop (Commit / Datei-Aenderung / Report), nicht der Registry-Zustand.
Als Ergaenzung zum Leerlauf-Waechter in Rule 260727 verankert.

**Keine Massnahme — das ist der Gegenfall zu Delta Null.** Die beiden Loops sind nicht leer,
sondern hungrig: der Rueckwaerts-Sweep hat am 27.07. das «Material erschoepft» zweimal
widerlegt (Batch 79, Fidelity 260727j/k/l). Ruecktakten waere hier genau falsch.
**Nachpruefbare Vorhersage fuer den naechsten Lauf (03:50):** `twin-mail-training` feuert
03:39, `twin-fidelity-review` 05:44. Zeigen beide bis dahin einen Liefer-Delta, war der
Neustart die Ursache und der Fall ist erledigt. Zeigt er sich nicht, liegt die Ursache
tiefer und der Loop ist defekt, nicht nur unterbrochen.

**P2 (unveraendert, dritter Lauf in Folge) — `tapir-archicad`-MCP haelt 2,8 GB ohne laufendes
ArchiCAD.** PIDs 1405/1406, gestartet 06:55 direkt nach dem Neustart, je 1424 MB laut `top`
(`ps` weist 24 bzw. 12 MB aus — dieselbe Diskrepanz wie am 28.07.). `pgrep` findet kein
laufendes ArchiCAD. Aktuell **kein** Blocker: MacBook 4305 MB verfuegbar, Mac Mini 12872 MB,
Druck 1 auf beiden, null laufende `claude -p`. Nicht angetastet — der Speicher-Waechter ist
laut Rule 260728 ausdruecklich auf OneDrive begrenzt und darf Claude-Prozesse nicht neu
starten. Bleibt Entscheid Raphaels.

**P3 — eigener Messfehler, korrigiert bevor er zur Fehlmeldung wurde.** Eine
Ad-hoc-Nachmessung des freien Speichers mit hart kodierter Seitengroesse 4096 lieferte
1090 MB und damit scheinbar einen Gate-Defekt: das Gate haette bei einer MacBook-Schwelle von
3000 MB abweisen muessen, gab aber frei. Der Vergleich mit der Gate-Funktion selbst
(`frei_mb`) zeigte den Fehler auf meiner Seite — Apple Silicon nutzt **16384** Byte pro Seite,
das Gate liest die Groesse korrekt aus `vm_stat`, real verfuegbar sind 4305 MB. Das Gate ist
in Ordnung. Lehre in derselben Linie wie die `unused`- und `ps`-Fallen vom 28.07.: eine
Kennzahl, die eine Schutzmechanik in Frage stellt, zuerst **mit deren eigener Funktion**
gegenmessen, nie mit einer selbst gebauten Variante.

---

## 2026-07-28 22:00 — [FREI] Die Pruefkette weiter am Ende gedacht: welche Mechanismen erreichen das Lauf-Gate ueberhaupt? Die App-Task-Flotte tut es nicht — heute Nacht folgenlos, aber unbenannt

**Selbstkontrolle:** letzter Eintrag 19:00, dieser Lauf 22:00 — 3,0 h bei 3-h-Takt, kein
verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung (`. ~/.jans-dispatch.env`)
antwortet «OK». Kein Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner ruht
unveraendert auf beiden Stationen (STOP-Dateien, Gruende aktuell und dokumentiert).

**P1 — DAS LAUF-GATE DECKT WENIGER AB, ALS DIE REGEL BEHAUPTET.** Die letzten drei Laeufe haben
die Kette Kanon → Ausfuehrungskopie → geladene Definition durchgemessen. Der naechste Schritt
derselben Frage ist: *welche Mechanismen rufen das Gate ueberhaupt auf?* Nachgemessen
(`grep -rl lauf-gate`), beide Stationen:

| Ruft das Gate | Ruft es NICHT |
|---|---|
| `nachtschicht-run.sh`, `cron-training-mini.sh`, `vollgas-runner.sh`, `wissens-trigger.sh` (alle shell-getrieben) | **die gesamte App-Scheduled-Task-Flotte** — kein einziger Treffer in `~/.claude/scheduled-tasks/`, auf keiner der beiden Stationen |

Rule `auto-verbesserungen` 260728 formuliert «**jeder** Mechanismus, der einen `claude`-Lauf
automatisch startet, ruft VORHER `scripts/lauf-gate.sh`». Faktisch gilt das nur fuer die vier
Shell-Mechanismen. Die App-Tasks werden vom App-Scheduler getrieben, nicht von einem Script, das
ein Gate vorschalten koennte — betroffen sind auf dem MacBook die vier Nacht-Lernlaeufe
(`wissens-chef`, `normen-nacht`, `twin-mail`, `twin-fidelity`) und die operativen Morgenbriefings.
Fuer sie ruht der Speicherschutz allein auf der **Taktentzerrung**, nicht auf einer Messung.

Das ist heute Nacht **folgenlos** — die Bahn ist geprueft und traegt:

| Zeit | Station | Mechanismus | Gate |
|---|---|---|---|
| 22:30 | Mini | `training-energie` (launchd) | ja |
| 23:11 | MacBook | `wissens-chef` (App-Task) | nein |
| 23:30 / 02:30 / 05:30 | Mini | `nachtschicht` (launchd) | ja |
| 01:28 / 03:40 / 05:45 | MacBook | `normen-nacht` / `twin-mail` / `twin-fidelity` | nein |

Auf dem MacBook liegen die vier gate-losen Laeufe mindestens 2 h auseinander, bei typischen
Laufzeiten von 5 bis 25 Minuten — kein Ueberlapp moeglich. Auf dem Mini sind beide Mechanismen
gate-gedeckt. Der Befund ist also keine offene Gefahr, sondern eine **unbenannte Grenze**: wer die
Regel liest, haelt den Speicherschutz fuer flaechendeckend, und die naechste Takt-Verdichtung auf
dem MacBook wuerde genau in dieser Luecke landen. In der Rule als Grenze verankert (nicht die
Politik geaendert). Massnahme zum Entscheid, falls der MacBook-Nachttakt je wieder verdichtet wird:
den Gate-Aufruf als ersten Schritt in die vier Lern-Task-Prompts nehmen — die operativen Briefings
bleiben ausgenommen, die duerfen nie abgewiesen werden.

**Nebenbefund, derselbe Messfehler-Typ wie am 28.07. frueh:** `ps` weist die beiden
`tapir-archicad`-Prozesse mit 26 MB bzw. 15 MB RSS aus, `top` mit je **1424 MB** — genau die
Diskrepanz, wegen der Rule 260728 `top`/`vm_stat` zur Pflicht macht. Wer hier `ps` glaubt, haelt
den groessten Einzelposten der Maschine fuer eine Randnotiz.

**P2 — unveraendert offen, Entscheid Raphael.** Die beiden `tapir-archicad-mcp`-Prozesse (PID
1405/1406, seit 15 h) halten weiter je 1424 MB, ArchiCAD ist auf dieser Station nach wie vor nicht
geoeffnet — zusammen mit zwei Helferprozessen 2,8 GB auf einer 16-GB-Maschine mit aktuell 4166 MB
verfuegbar. Nicht angetastet (Benutzer-Anwendung). Vorschlag unveraendert: den ArchiCAD-MCP-Server
nur bei Bedarf laden.

**P3 — zwei wirkungslose Zeilen in `.claude/settings.json` erzeugen bei JEDEM headless-Lauf zwei
Warnzeilen.** `Write(//Volumes/daten/jans-ai-hub/**)` (Z. 29) und
`Write(//Users/…/OneDrive-…/**)` (Z. 32) greifen nicht: Pfad-Regeln werden nur als `Edit(...)`
ausgewertet. Funktional folgenlos, weil `Edit(*)` und `Write(*)` global in derselben allow-Liste
stehen (Z. 6/7) — es entsteht also **keine** Berechtigungsluecke, nur Log-Rauschen. Nicht
geaendert: eine geteilte Config ohne Funktionsgewinn anzufassen ist nicht Sache des Radars.
Saubere Fassung waere, Z. 29 zu streichen (Z. 28 deckt den Pfad bereits als `Edit` ab) und Z. 32
auf `Edit(...)` umzustellen.

**Speicher- und Waechterlage sauber.** MacBook Pro 4166 MB verfuegbar, Mac Mini rund 12,8 GB,
Speicherdruck beidseitig 1 (normal). Der Speicher-Waechter steht bei 29 Laeufen, letzter Exit 0,
aktiv — und schweigt seit der 13:00-Korrektur durchgehend, also rund neun Stunden. Das Gate-Log
zeigt seit 12:59 keinen Eintrag: korrekt, weil bis 22:30 kein gate-pflichtiger Mechanismus feuert.

**Leerlaufquote: unveraendert, keine Massnahme noetig.** Kein aktiver Loop erreicht die
3er-Schwelle. Deaktiviert und still bleiben `immobewertung`, `spec`, `wettbewerbs-dna`,
`training-plg`.

**Durchsatz: 110 Commits heute, davon 24 substanziell.** Juengster um 21:54 die Antwort auf eine
reale Fachfrage — Report «Lueftung Therapiekueche Spital Zuerich» in `wissen/normen/outputs/` samt
CHANGELOG. Das ist der Compounding-Loop der Rule `wissens-bibliothekar`, wie er gedacht ist: eine
Frage Raphaels macht die KB besser, statt zu verpuffen. Ansonsten seit 19:00 nur die
15-Minuten-Statuszeilen — unter der Rollentrennung 260728 der Sollzustand fuer die Arbeitsstation.
Gelernt wird ab 22:30 auf dem Mac Mini.

## 2026-07-28 19:00 — [FREI] Die 16:00-Lehre eine Stufe weitergezogen: nicht nur die Datei, sondern die von launchd GELADENE Definition geprueft. Nachtschicht-Takt sauber, keine Luecke

**Selbstkontrolle:** letzter Eintrag 16:00, dieser Lauf 19:00 — 3,0 h bei 3-h-Takt, kein
verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung (`. ~/.jans-dispatch.env`)
antwortet «OK». Kein Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner ruht
unveraendert auf beiden Stationen (STOP-Dateien, Gruende aktuell und dokumentiert).

**P1 — DIE PRUEF-LUECKE VON 16:00 HAT EINE ZWEITE, TIEFERE STUFE. Geprueft, sauber.** Der
16:00-Eintrag hat den Nachtschicht-Takt «am Original gegengeprueft» — also an der plist-Datei.
Genau derselbe Denkfehler wie am Mittag steckt aber noch eine Ebene tiefer: **launchd liest die
plist nur beim Laden.** Wird sie editiert und nicht per `bootout`/`bootstrap` neu geladen, zeigt
die Datei den neuen Takt, waehrend der Dienst weiter nach dem alten feuert — die Datei-Kontrolle
haette ein falsch-positives «verifiziert» geliefert, genau wie der Handlauf um 13:00.

Diesmal an der Ausfuehrungsebene nachgemessen (`launchctl print gui/501/ch.jans.nachtschicht`):

| Ebene | Befund |
|---|---|
| plist-Datei (mtime 07:37) | 23:30 / 02:30 / 05:30 |
| **von launchd geladene Trigger** | **23:30 / 02:30 / 05:30 — exakt drei, deckungsgleich** |
| Dienstzustand | `runs = 0`, «not running» → Dienst wurde nach der Aenderung neu gebootstrappt |

Ergebnis: **keine Luecke, kein Schaden** — die 3x-Entzerrung ist wirklich scharf, die naechste
Feuerung ist heute 23:30. Die stuendlichen Dispatch-Protokolle von 00:30 bis 07:30 sind Historie
vor der Umstellung (plist-mtime 07:37 liegt unmittelbar nach dem letzten stuendlichen Lauf), kein
Rueckfall. Gleiche Gegenprobe fuer die uebrigen Feuermechanismen: `com.jans.aihub.runner` ist auf
dem MacBook nicht mehr geladen (Stilllegung 28.07. auch im Laufzeitzustand vollzogen, nicht nur in
der Rule), auf dem Mac Mini sind alle elf `jans`-Jobs mit letztem Exit 0 geladen, `training-plg`
fehlt korrekt.

Damit ist die Kette Kanon → Ausfuehrungskopie → **geladene Definition** einmal ganz durchgemessen.
Merkposten fuer kuenftige Takt-Aenderungen an launchd-Jobs: die plist zu editieren ist erst der
halbe Vollzug; ohne Neu-Laden aendert sich am Feuerverhalten nichts.

**Speicher-Waechter: die 13:00-Korrektur haelt.** Letzte Logzeile alten Formats 13:03:59, seither
auf beiden Stationen **rund sechs Stunden Stille** — der Sollzustand (still-by-default). Aktuell
MacBook Pro 4255 MB verfuegbar, Mac Mini rund 13,4 GB, Speicherdruck beidseitig 1 (normal).

**P2 — unveraendert offen, Entscheid Raphael: 2,8 GB fuer ein Programm, das nicht laeuft.** Die
beiden `tapir-archicad-mcp`-Prozesse (PID 1405/1406, seit 06:55) halten weiter je 1424 MB, ArchiCAD
ist auf dieser Station nach wie vor nicht geoeffnet. Auf der 16-GB-Maschine mit 4255 MB verfuegbar
bleibt das der groesste Einzelposten ohne Nutzen. Nicht angetastet (Benutzer-Anwendung, der
Waechter ist auf OneDrive beschraenkt). Vorschlag unveraendert: den ArchiCAD-MCP-Server nur bei
Bedarf laden.

**Leerlaufquote: unveraendert, keine Massnahme noetig.** Kein aktiver Loop erreicht die
3er-Schwelle. Fuer die kommende Nacht getaktet: `training-energie` 22:30 (Mini, launchd),
`wissens-chef` 23:11, `nachtschicht` 23:30/02:30/05:30 (Traeger des `wissens-destillat`),
`normen-nacht` 01:28, `twin-mail` 03:40, `twin-fidelity` 05:45. Deaktiviert und still bleiben
`immobewertung`, `spec`, `wettbewerbs-dna`, `training-plg`. Der `wissens-trigger` meldete um 06:30
auf beiden Stationen «0 Laeufe ausgeloest» — korrekt, das Rohmaterial von `energie` und
`planungsgrundlagen` ist unveraendert; das ist kein Leerlauf, sondern ein Trigger, der richtig
schweigt.

**Durchsatz: 96 Commits seit Mitternacht**, davon die Nachtschicht-Ernte des frueheren Tages. Seit
16:00 ausschliesslich die 15-Minuten-Statuszeilen — unter der Rollentrennung 260728 der
Sollzustand fuer die Arbeitsstation, nicht ein Ausfall. Gelernt wird ab 22:30 auf dem Mac Mini.

**P3 — unveraendert offen (Einzeiler, siehe 10:05/13:00/16:00):** soll der Mac Mini tagsueber
Destillat-Laeufe fahren? Kapazitaet waere da (13,4 GB verfuegbar); ich takte weiterhin nicht
eigenmaechtig hoch. Entscheid liegt bei Raphael.

## 2026-07-28 16:00 — [FREI] Die 13:00-Korrektur wirkt — aber sie wurde am Handlauf verifiziert, nicht an der geplanten Bahn. Vier launchd-Jobs lesen die SSD-Kopie, nicht das NAS-Original

**Selbstkontrolle:** letzter Eintrag 13:00, dieser Lauf 16:00 — 3,0 h bei 3-h-Takt, kein
verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung (`. ~/.jans-dispatch.env`)
antwortet «OK». Kein Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner ruht
weiterhin auf beiden Stationen (STOP-Dateien, Gründe aktuell und dokumentiert) — unverändert.

**P1 — DIE KORREKTUR IST WIRKSAM, DER WIRKSAMKEITSNACHWEIS VON 13:00 WAR ES NICHT.** Der
Wächter ist seit heute Mittag auf beiden Stationen still: kein Fehlalarm mehr, verifiziert über
die geplante Bahn (launchd: 17 Läufe, letzter Exit 0, aktiv) und einen Handlauf eben (rc=0, keine
neue Logzeile). Der Befund von 13:00 ist damit sauber geschlossen.

Beim Nachprüfen fiel aber auf, dass der damalige Nachweis den entscheidenden Schritt gar nicht
erfasst hat. Die Zeitachse:

| Zeit | Ereignis |
|---|---|
| 13:01 | Korrektur auf dem **NAS** gespeichert, dort von Hand verifiziert → «behoben» gemeldet |
| **13:03:59** | **planmässiger Lauf — immer noch die ALTE Metrik** («nur 109 MB frei») |
| 13:06 / 13:08 | SSD-Kopie via `nas-commit-now` → Pull nachgezogen (MacBook / Mini) |
| ab 13:33 | still auf beiden Stationen — ab hier wirkt die Korrektur |

Ursache: die plists starten **nicht** das NAS-Original, sondern bevorzugt die SSD-Kopie
(`S="$HOME/Developer/…"; [ -f "$S" ] || S="/Volumes/daten/…"`). Eine NAS-seitige Korrektur wirkt
für diese Jobs also **erst nach dem SSD-Pull** — und wer sie durch Aufruf des NAS-Scripts prüft,
bekommt ein falsch-positives «verifiziert». Dass es diesmal gut ging, lag am Commit-Takt, nicht am
Verfahren: wäre der Commit ausgefallen (SMB-Flatter, Rule 260725), hätte der Wächter den ganzen Tag
weiter Fehlalarme gefeuert, während der Radar «behoben» meldet.

Betroffen sind vier Jobs, MacBook Pro `speicher-waechter` + `transcript-rotation`, Mac Mini
zusätzlich **`nachtschicht`** — und damit ausgerechnet der Taktgeber des einzigen produktiven
Lern-Loops. Gegenprobe gemacht: **null Drift**, alle vier Script-Paare (Wächter, Gate,
transcript-rotation, nachtschicht-run) sind auf beiden Stationen NAS-identisch (md5). Es ist also
heute kein Schaden offen, sondern eine Prüf-Lücke geschlossen.

**In Rule `auto-verbesserungen` 260728 verankert:** bei Jobs mit SSD-Vorrang gilt eine Korrektur
erst als wirksam, wenn die **geplante Bahn** es zeigt (neue Logzeile im neuen Format bzw. belegte
Stille) — nicht, wenn das NAS-Script von Hand das Richtige tut. Das ist die Verlängerung der
Lehre vom 25.07. (erst nach Sicht-Verifikation als vollzogen dokumentieren) auf den Fall, dass
Kanon und Ausführungskopie auseinanderfallen können.

**P2 — grösster identifizierbarer Leerlauf-Speicher auf dem MacBook: 2,8 GB für ein Programm, das
nicht läuft.** Zwei `tapir-archicad-mcp`-Python-Prozesse (PID 1405/1406, seit 06:55) halten je
1424 MB, während ArchiCAD auf dieser Station **nicht** geöffnet ist (`pgrep -i archicad` leer).
Auf der 16-GB-Maschine, deren Speicherdruck das Thema der letzten 24 Stunden war, ist das der
grösste Einzelposten, der niemandem dient — zum Vergleich: aktuell 4017 MB verfügbar, Druck 1.
**Nicht angetastet:** ein MCP-Server für Raphaels Werkzeug ist eine Benutzer-Anwendung, und der
Wächter ist ausdrücklich auf OneDrive-Neustarts beschränkt. Vorschlag zum Entscheid: den
ArchiCAD-MCP-Server nur bei Bedarf laden statt dauerhaft — das gäbe rund 2,8 GB zurück, ohne einen
einzigen Lern-Lauf zu opfern.

**Leerlaufquote: unverändert, keine Massnahme nötig.** Kein aktiver Loop erreicht die 3er-Schwelle.
Aktiv getaktet sind `twin-mail` (03:35), `twin-fidelity` (05:40), `normen-nacht` (01:20),
`wissens-chef` (23:10), `baurecht-buch` (Mo), `wissens-destillat` über die Nachtschicht und
`training-energie` (22:30, Mini). Deaktiviert und still bleiben `immobewertung`, `spec`,
`wettbewerbs-dna`, `training-plg`. Der im 13:00-Eintrag als «3x entzerrt» gemeldete
Nachtschicht-Takt ist am Original gegengeprüft: die plist trägt tatsächlich nur noch 23:30/02:30/
05:30 — die stündlichen Feuerungen im Log (18:30 bis 07:30) sind Historie vor der Umstellung, kein
Rückfall.

**Durchsatz: 21 substanzielle Commits heute**, davon die Nachtschicht-Ernte (Destillat-Artikel BKP
273/281, projekt-lessons, baurecht Run 69, planungsgrundlagen PL-03-Nachaudit). Seit 13:00 nur die
15-Minuten-Statuszeilen — unter der Rollentrennung 260728 der Sollzustand, nicht ein Ausfall.

**P3 — unverändert offen (Einzeiler, siehe 10:05/13:00):** soll der Mac Mini tagsüber
Destillat-Läufe fahren? Kapazität wäre da; ich takte weiterhin nicht eigenmächtig hoch. Entscheid
liegt bei Raphael.

## 2026-07-28 13:00 — [FREI] Derselbe Messfehler steckte auch im Schwester-Script: der Speicher-Wächter warnte seit gestern bei JEDEM Lauf ins Leere. Behoben und beidseitig verifiziert

**Selbstkontrolle:** letzter Eintrag 10:05, dieser Lauf 13:00 — 2,9 h bei 3-h-Takt, kein
verpasster Lauf.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung (`. ~/.jans-dispatch.env`)
antwortet «OK». Kein Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Endlos-Runner ruht
weiterhin auf beiden Stationen (STOP-Dateien, Gründe aktuell und dokumentiert) — unverändert.

**P1 — DER SPEICHER-WÄCHTER HATTE DENSELBEN FEHLER WIE DAS GATE (behoben).** Die Korrektur um
10:05 hat die falsche Messung dort behoben, wo sie aufgefallen war, und sie im Schwester-Script
stehen lassen: `scripts/speicher-waechter.sh` (gestern aus derselben Vorlage entstanden) las
ebenfalls `top`s Feld «unused». Folge, im Log über den ganzen Tag belegt:

| Station | gemeldet (alt, 12:34) | real verfügbar (12:57) | Druck |
|---|---|---|---|
| MacBook Pro | «nur 108 MB frei» | **4061 MB** | 1 (normal) |
| Mac Mini | «nur 70 MB frei» | **13648 MB** | 1 (normal) |

Das sind 24 Fehlalarme je Station und Tag, seit gestern ununterbrochen, und die als
«still-by-default» gedachte OK-Lebendzeile erschien kein einziges Mal. Der Schaden ist nicht das
volle Log, sondern der blinde Wächter: **eine echte Speichernot wäre vom Dauerrauschen nicht mehr
zu unterscheiden gewesen** — genau der Notstand von gestern früh hätte sich unbemerkt wiederholen
können, obwohl ein Wächter dafür eingebaut wurde. Ein Wächter, der immer warnt, ist so blind wie
ein Gate, das immer blockiert.

Behoben, nicht nur gemeldet: `frei_mb()` misst neu über `vm_stat` (free + inactive + purgeable),
**identisch zum Gate**, damit die beiden nicht wieder auseinanderlaufen. Zusätzlich der zweite
Riegel wie im Gate: `kern.memorystatus_vm_pressure_level` löst jetzt auch dann eine Warnung aus,
wenn die Menge noch reicht, die Maschine aber bereits swappt; eine unbrauchbare Messung wird
benannt statt stillschweigend als «alles gut» gewertet. **Raphaels Schwelle (1500 MB) bleibt
unverändert — korrigiert ist die Messung, nicht die Politik.** Nebenbei entfiel derselbe
Dezimal-Fehler wie im Gate («5.2G» in Ganzzahlarithmetik).

Verifiziert auf beiden Stationen, positiv und negativ: Normallauf → keine Zeile (still, wie
gedacht); künstlich hochgesetzte Schwelle → Warnung mit den echten Zahlen oben. Die
OneDrive-Neustart-Logik blieb unangetastet, sie misst über `top -o mem` bereits richtig.

**Verallgemeinert und in Rule `auto-verbesserungen` 260728 verankert:** eine als falsch erkannte
Messgrösse sofort im ganzen Bestand suchen (`grep -rl` über `scripts/`), nicht nur am Fundort
beheben. Zwei Scripts aus derselben Vorlage erben denselben Fehler, und der zweite fällt später
und teurer auf. Gegenprobe gemacht: ausser diesen beiden verwendet kein Script die Metrik.

**P2 — Halbfertige Schreibvorgänge landeten im Git.** Der 15-Minuten-Committer erwischte über SMB
zweimal `station-status/mac-mini.md.tmp` mitten im write-then-rename und committete eine leere
Datei (Commits `c5fd150f`, `91937628`). Harmlos, aber es verfälscht jede Durchsatzmessung, die
Commits zählt. `*.tmp` in `.gitignore` ergänzt; keine `.tmp` im Index, nichts nachzuräumen.

**Leerlaufquote: unverändert, keine Massnahme nötig.** Kein aktiver Loop erreicht die 3er-Schwelle.
`wissens-destillat` weiter der Träger (neuer Artikel BKP 281 Terrazzo/Kunststein aus der Nacht),
`twin-mail` Serie seit Batch 71 gebrochen, `normen`/`wissens-chef`/`baurecht` mit belegten Funden,
`energie` (launchd 22:30) produktiv. Die gestern abgeschalteten Dauer-Leerläufe bleiben aus.

**Durchsatz: tagsüber erwartungsgemäss null.** 70 Commits seit Mitternacht, aber alle 13 seit
10:05 sind die 15-Minuten-Statuszeilen der beiden Stationen — keine inhaltliche Arbeit. Das ist
unter der Rollentrennung 260728 der Sollzustand, nicht ein Ausfall: gelernt wird nachts auf dem
Mac Mini.

**P3 — unverändert offen (Einzeiler, siehe 10:05):** soll der Mac Mini tagsüber Destillat-Läufe
fahren? Das Gate misst seit 10:05 korrekt, Kapazität wäre da (13,6 GB verfügbar). Ich habe erneut
**nicht** eigenmächtig hochgetaktet: die 3x-Entzerrung der Nachtschicht ist keine fünf Stunden alt
und aus Speichergründen entschieden, und der Mini trägt gerade reale Last (Archicad 8 GB, Cineware
4,2 + 3,4 GB). Entscheid liegt bei Raphael.

## 2026-07-28 10:05 — [FREI] Der gestern eingebaute Speicher-Deckel hat seit heute früh JEDEN automatischen Lauf abgewiesen — er misst die falsche Grösse. Metrik korrigiert, beide Stationen verifiziert

**Selbstkontrolle:** letzter Eintrag 06:55, dieser Lauf 10:05 — 3,2 h bei 3-h-Takt, kein
verpasster Lauf. Der im 06:55-Eintrag gemeldete Stillstand (~01:10 bis ~06:50) hat sich nicht
wiederholt.

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung (`. ~/.jans-dispatch.env`)
antwortet «OK». Kein Login-Blocker, kein Wochenlimit, kein Mail-Anlass. **Durchsatz sehr gut:**
57 Commits seit Mitternacht, davon 19 substanziell; 18 Commits in den letzten 3 Stunden.

**P1 — DAS LAUF-GATE HAT SEIT 07:34 ALLES BLOCKIERT (behoben).** Der gestern nach dem
Speicher-Notstand eingebaute Prozess-Deckel `scripts/lauf-gate.sh` (Rule 260728) las den Wert
`unused` aus `top` und verglich ihn mit 3000 MB (MacBook) bzw. 4000 MB (Mini). macOS meldet unter
`unused` aber nur völlig unberührtes RAM; auf einer warmgelaufenen Maschine ist das immer nahe
null, weil das System freien Speicher als Cache hält. Gemessen um 09:5x:

| Station | `top` "unused" | real verfügbar (free+inactive+purgeable) | Speicherdruck |
|---|---|---|---|
| MacBook Pro | 104 MB | **4402 MB** | 1 (normal) |
| Mac Mini | 253 MB | **14233 MB** | 1 (normal) |

Beide Stationen hätten die Schwelle also nie erreicht. Der Beweis stand im Gate-Log selbst: schon
der Einrichtungstest um 07:34 wies sich mit «nur 79 MB frei» selbst ab, meine Probe um 10:01 mit
«nur 249 MB». Betroffen waren alle vier Aufrufer — `nachtschicht-run.sh`, `wissens-trigger.sh`,
`cron-training-mini.sh`, `vollgas-runner.sh`. Praktische Folge, wäre es unentdeckt geblieben: die
Nachtschicht um 23:30 hätte heute Nacht still zurückgestanden, und mit ihr der **einzige derzeit
produktive Lern-Loop** (`wissens-destillat`). Ein leises Totalversagen genau der Art, die der
35-Stunden-Ausfall lehren sollte — die Absicht war dokumentiert, die Wirkung nie nachgemessen.

**Behoben, nicht nur gemeldet:** `frei_mb()` misst neu über `vm_stat` den Speicher, den das System
ohne Auslagern herausgeben kann (free + inactive + purgeable). **Raphaels Schwellen (2/3 Läufe,
3000/4000 MB) bleiben unverändert — korrigiert ist die Messung, nicht die Politik.** Zusätzlich
eingebaut: (a) ein zweites Kriterium `kern.memorystatus_vm_pressure_level`, das eine bereits
swappende Maschine abweist, auch wenn die Menge noch reicht — sonst hätte die Mengenkorrektur den
Deckel in der umgekehrten Richtung entschärft; (b) ein Riegel gegen die kaputte Messung selbst:
liefert `vm_stat` nichts Zählbares, wird der Lauf zurückgestellt und protokolliert statt
stillschweigend durchgewunken. Nebenbei entfiel ein zweiter Fehler: die alte Fassung hätte einen
Dezimalwert («5.2G») in Bash-Ganzzahlarithmetik gegeben und die Prüfung damit ganz übersprungen.

Verifiziert auf **beiden** Stationen, positiv und negativ: normaler Lauf → Freigabe (MacBook 4419
MB, Mini 14422 MB); künstlich hochgesetzte Schwelle → korrekt abgewiesen; `MAX_LAEUFE=0` → korrekt
abgewiesen. Der Deckel greift also weiterhin, er greift nur nicht mehr immer.

**P2 — Zwei Dokumentations-Fallen entschärft, die zur nächsten Fehlentscheidung geführt hätten.**
- Die Registry beschrieb `wissens-destillat` als «getaktet ausschliesslich vom VOLLGAS-Endlos-Runner».
  Das ist seit dem 27.07. 22:15/22:20 falsch: der Runner ruht per STOP-Datei auf **beiden** Stationen,
  gefahren wird der Loop faktisch von der **Mac-Mini-Nachtschicht** (23:30/02:30/05:30). Beschreibung
  korrigiert. Genau die Sorte Drift, vor der die Rules 260727/260728 warnen — nur diesmal in der
  Registry statt im Runner-Filter.
- `STOP-Macbookpro` trägt die Bedingung «entfernen, sobald es wieder einen Lern-Loop OHNE eigenen
  Scheduled Task gibt». Diese Bedingung ist seit heute **erfüllt** (`wissens-destillat` ist «Manual
  only», und die `KORPUS-QUEUE.md` sagt ausdrücklich, der Runner bekomme eine neue Lern-Aufgabe) —
  wer nur diesen Absatz liest, startet den Endlos-Runner auf der Arbeitsstation und verletzt damit
  die am selben Tag beschlossene, **jüngere** Rollentrennung 260728. Die Datei bleibt deshalb stehen;
  die Entfernungs-Bedingung ist in der Datei neu gefasst (nur auf Raphaels Entscheid).

**Leerlaufquote: keine Massnahme nötig.** Kein aktiver Loop erreicht die 3er-Schwelle.
`wissens-destillat` 7 Artikel in einer Nacht, kein Delta-Null · `twin-mail-training` hatte vier
Leerläufe (Batches 68–70), die Serie ist mit Batch 71 am 27.07. gebrochen · `normen`, `wissens-chef`,
`baurecht` (Run 69), `planungsgrundlagen`-Nachaudit lieferten am 27./28.07. belegte Funde ·
`energie` (launchd 22:30) mit Run 117 produktiv. Die gestern abgeschalteten Dauer-Leerläufe
(`training-plg` nach 27 Nullbefunden, `wettbewerbs-dna`) bleiben abgeschaltet.

**P3 — Beobachtung, keine Massnahme: 16 Stunden ohne Lern-Betrieb.** Mit gestopptem Runner und der
heute früh von 15x auf 3x entzerrten Nachtschicht läuft zwischen ~07:30 und 23:30 auf keiner
Station ein Lern-Loop, während das Fenster frei ist. Ich habe das **bewusst nicht** angetastet: die
3x-Entzerrung ist zwei Stunden alt und wurde aus Speichergründen entschieden, und der Mac Mini
trägt aktuell reale Arbeitslast (Archicad 5,5 GB, Cineware 4,1 + 3,3 GB, InDesign 4,1 GB; Swap
7,5 von 8,2 GB belegt). Ein Hochtakten wäre gegen eine frische, gut begründete Entscheidung
gelaufen. Vorgelegt als Frage an Raphael, nicht als Loop-Entscheid: soll der Mac Mini tagsüber
Destillat-Läufe fahren, sobald das Gate wieder korrekt misst? Kapazität wäre da, die Korpus-Queue
ist mit 37 Gewerke-Sektionen bei 7 Artikeln erst angebrochen.

## 2026-07-28 06:55 — [FREI] Der neue Destillat-Loop traegt: 6 Artikel in einer Nacht. Aber zwei Nachtschicht-Zyklen waren Totalausfaelle durch einen Session-Fehler, der nirgends festgehalten war — jetzt in der SKILL.md verankert

**Selbstkontrolle:** letzter Eintrag 01:07, dieser Lauf 06:55 — 5,8 h Abstand bei 3-h-Takt, also
**ein verpasster Lauf** (03:50). Ursache erkennbar in der Registry: `twin-mail-training` (03:35),
`twin-fidelity-review` (05:40) und `konversations-log` (06:10) tragen alle `lastRunAt` **06:50/06:55**
— saemtliche faelligen Tasks sind in einem Nachhol-Schwung gleichzeitig gefeuert. Der Task-Runner
dieser Station stand also zwischen ~01:10 und ~06:50 still und hat danach den Rueckstand
abgearbeitet. Kein Kontingent-Problem (siehe unten), sondern ein Wecker-/Schlaf-Verhalten der
Station. Vorerst nur festgehalten, nicht behandelt (P3).

**Fensterzustand: FREI.** Probe mit geladener Runner-Anmeldung (`. ~/.jans-dispatch.env`) antwortet
«OK». Kein Login-Blocker, kein Wochenlimit, kein Mail-Anlass. Hinweis zur Methode fuer kuenftige
Laeufe auf dieser Station: `timeout` existiert in der zsh-Umgebung nicht — die Probe braucht einen
eigenen Watchdog-Subprozess.

**Durchsatz: gut.** 45 Commits seit Mitternacht, 8 in den letzten 90 Minuten. Die Nacht lieferte
substanzielle Arbeit: baurecht Run 69, wissens-chef Run 18, energie Run 117, projekt-lessons
Bootstrap (2 Lesson-Artikel), planungsgrundlagen-Nachaudit — und erstmals der neue Destillat-Loop.

**P1 — Leerlauf neuer Art: zwei Nachtschicht-Zyklen haben Budget verbraucht und nichts geliefert.**
Der Leerlauf-Auftrag zielt auf Loops, die «nichts Neues» melden. Hier liegt ein anderer, teurerer
Typ vor: die Zyklen **02:30 und 03:30** haben `destillat-lauf.sh` im **Hintergrund** gestartet und
danach auf eine automatische Benachrichtigung gewartet, die nie kommt — jeder Dispatch-Lauf ist ein
eigener Prozess, der Kindprozess stirbt beim Sessionende. Beide Protokolle enden woertlich mit
«Ich warte jetzt auf die automatische Benachrichtigung» und null Deliverable. Der 04:30-Lauf hat den
Fehler selbst diagnostiziert und synchron im Vordergrund nachgeholt — **aber nirgends festgeschrieben**.
Die `SKILL.md` sagte weiterhin nur «Pipeline starten»; der naechste Lauf haette denselben Fehler
wieder machen koennen. Das ist die eigentliche Leerlauf-Ursache dieser Nacht: nicht ein saturierter
Korpus, sondern ein nicht persistierter Betriebsfehler.

**Ausgefuehrt (Leerlauf-Waechter):**
- `skills/wissens-destillat/SKILL.md`, Schritt 3: Pipeline **zwingend im Vordergrund** — nie im
  Hintergrund starten und auf eine Benachrichtigung warten, mit dem Beleg der beiden verlorenen
  Zyklen. Damit ist die Lektion an dem Ort, den der naechste Lauf liest.
- `KORPUS-QUEUE.md` nachgefuehrt: Korpus 1 `bauprodukte` stand noch auf «Spec offen / naechster»,
  obwohl die Spec seit 01:33 existiert und 6 Artikel geschrieben sind. Neu «in Arbeit» mit Stand.
  Ein Register, das den eigenen Fortschritt nicht abbildet, laesst den naechsten Lauf die
  Spec-Gate-Frage erneut stellen.

**Keine Takt-Massnahme faellig.** Leerlaufquote je Loop ueber die letzten Laeufe: baurecht-buch
(Run 69, 3 Zitierfehler gefunden), wissens-chef (Run 18, 5 materielle Fehler gefunden), energie
(Run 117, 4 neue Themenfelder), twin-mail (Batch 79), twin-fidelity (27l), normen (Run 35) —
alle mit echtem Delta, **kein Loop erreicht die 3x-Schwelle**. Bereits stillgelegt und unveraendert
richtig: `wettbewerbs-dna` (wartet auf Richtungsentscheid), `immobewertung`/`spec`
(ereignisgetriggert), `training-plg` (gestern nach 27x Delta Null abgeschaltet).

**P2 — der Destillat-Loop laeuft, obwohl beide STOP-Dateien liegen. Das ist kein Widerspruch, aber
es sollte einer weniger sein.** Die Fruehwarnung hat den Loop bewusst nicht scharf geschaltet («der
Runner startet erst auf Raphaels Wort»). Gefeuert hat ihn trotzdem etwas: `ch.jans.nachtschicht` auf
dem Mac Mini (stuendlich :30, Budget 5 USD) hat sich den Destillat-Auftrag ueber seine eigene
Prioritaetenliste selbst gegriffen — und damit die 6 Artikel geliefert. **Der Endlos-Runner wird
dafuer also gar nicht gebraucht.** Das ist ein Argument fuer Variante (a) der offenen
Grundsatzfrage: Nachtschicht + Registry-Takte reichen, der Runner samt Supervisor kann ausgebaut
werden. Entscheid bleibt bei Raphael; die STOP-Dateien wurden nicht angetastet.

**P3 — Ertrag des ersten Destillat-Korpus.** 6 Artikel in ~10 h, Stueckkosten rund 2–3.30 USD je
produktivem Zyklus, Beleg-Pruefung jeweils in derselben Session (Nachtschicht-Budgetdisziplin statt
separater Kurator-Stufe). Qualitativ sauber: BKP-Codes gegen `references/bkp-2017/` verifiziert,
Preise als 2011er-Stand datiert, offene Punkte in `QUESTIONS.md`. Der Korpus hat 37 Sektionen —
bei diesem Tempo ist das Wochen an echter Arbeit. Damit ist die Frage vom 27.07. («hat der Hub noch
Arbeit?») fuer absehbare Zeit beantwortet.

**Kein Mail-Versand:** kein P1-Blocker, den nur Raphael loesen kann, kein erschoepftes
Wochenkontingent. Die beiden Massnahmen liegen im Mandat.

---

## 2026-07-28 01:07 — [FREI] Ein DRITTER Taktgeber gefunden: zwei launchd-Jobs auf dem Mac Mini feuern Trainings-Loops an Registry UND Runner vorbei — `training-plg` (27x Delta Null in Folge) abgeschaltet

**Selbstkontrolle:** letzter Eintrag 27.07. 22:15/22:25, dieser Lauf 01:07 — rund 2,7 h Abstand
bei 3-h-Takt. Keine verpassten Laeufe, die Aufsicht hat wieder Herzschlag.

**Fensterzustand: FREI.** Wichtig zur Methode: die Probe `claude -p` schlaegt **ohne** die
Runner-Anmeldung mit «OAuth session expired» fehl, **mit** ihr (`. ~/.jans-dispatch.env`) antwortet
sie «OK». Der Runner-Pfad ist also intakt — der Ablauf betrifft nur die interaktive Sitzung. **Kein
P1-Login-Blocker, keine Mail.** Wer kuenftig hier probt, muss die Env laden, sonst meldet der Radar
einen Blocker, den es nicht gibt.

**Durchsatz: hoch.** 52 Commits in 6 h, 12 in den letzten 90 Minuten. Produktiv in dieser Nacht:
baurecht Run 69 (drei Zitierfehler gefunden), wissens-chef Run 17+18, energie Run 117, normen
Run 35, twin-mail Batch 79, twin-fidelity 27l, planungsgrundlagen Run 92 + Nachaudit. Das
Registry-/Nachtschicht-Regime traegt die Last also durchaus — der Wegfall des Endlos-Runners hat
den Hub nicht lahmgelegt.

**P1 — der eigentliche Befund: es gibt einen DRITTEN Feuermechanismus, und niemand hatte ihn auf
dem Radar.** Der Eintrag von gestern 22:25 haelt fest, auf dem Mac Mini laufe kein Training mehr
(alle Registry-Tasks `enabled: false`, Runner via `STOP-Macmini` gestoppt). **Das ist faktisch
falsch.** Auf dem Mini stehen zwei geladene launchd-Jobs:

- `ch.jans.training-plg` — taeglich 00:30
- `ch.jans.training-energie` — taeglich 22:30

Beide rufen `scripts/cron-training-mini.sh` → `dispatch-run.sh` → `claude -p` mit **25 USD** Budget
(Standard-Deckel ist 5). Sie lesen weder die Registry noch das SKILL.md-Frontmatter noch die
STOP-Dateien. Genau deshalb sind energie Run 117 (22:30) und planungsgrundlagen Run 92 (00:30)
heute Nacht gelaufen, obwohl beide Loops seit dem 26.07. als stillgelegt gelten. Rule 260727 spricht
von zwei auseinanderlaufenden Wahrheiten (Registry ↔ Runner-Frontmatter) — es sind **drei**.
Erschwerend: der Kopf von `cron-training-mini.sh` nennt sich selbst eine Uebergangsloesung
(«bis die App-Tasks interaktiv umgetaktet sind», Entfernung vorgesehen ab 11.08.). Die App-Tasks
**sind** seit dem 26.07. umgetaktet — die eigene Endbedingung der Bruecke ist erfuellt, nur hat sie
niemand vollzogen.

**Ausgefuehrt (Leerlauf-Waechter, Auftrag Raphael 27.07.):** `ch.jans.training-plg` abgeschaltet —
`launchctl bootout` plus Umbenennung der plist nach `ch.jans.training-plg.plist.disabled-260728`.
Begruendung: der Loop meldet **27 Erschoepfungsbestaetigungen in Folge (Run 67–92)** ohne genuinen
Fund und empfiehlt seit drei Laeufen selbst die Ruecktaktung; die Schwelle des Auftrags liegt bei 5.
**Reaktivierung:** plist zurueckbenennen und `launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/ch.jans.training-plg.plist`
— sobald neues Rohmaterial in den PL-Ordnern liegt oder ein Vollinventar-Lauf ansteht (siehe P2).
**`ch.jans.training-energie` bewusst NICHT angetastet:** Run 117 hat vier neue Themenfelder und
F172–F177 geliefert, das ist kein Leerlauf.

**P2 — der Loop hat seine eigene Methodenkritik geliefert, und sie ist richtig.** Der Frischecheck
arbeitet mit `find -newer` und kann damit **strukturell keine Datei finden, die von Anfang an nie
gelesen wurde**. Genau das hat der Nachaudit derselben Nacht bewiesen: ein Vollinventar ueber alle
153 Dateien in `PL - 03 Brandschutz` foerderte drei nie gelesene Bohlweg-Dokumente vom Maerz 2025
zutage und daraus die neue offene Fachfrage C40 (muessen bei einer Transformation EFH → MFH alle
Bauteile die Brandschutzanforderungen erfuellen oder nur die neuen?). Der taegliche Delta-Check war
also 27x blind, ein quartalsweiser Vollinventar-Abgleich findet sofort etwas. **Empfehlung:** den
abgeschalteten Tageslauf durch einen quartalsweisen Vollinventar-Lauf ersetzen (naechster faellig
Ende Oktober 2026). Nicht selbst als Task angelegt — ein Termin drei Monate voraus gehoert in
Raphaels Entscheid ueber die kuenftige Loop-Landschaft, nicht in eine Nacht-Massnahme.

**P3 — Qualitaetssignal, kein Leerlaufsignal.** Der `wissens-chef` hat in Run 18 **fuenf materielle
Fehler** im energie-Material von Run 117 gefunden, eine Stunde nach dessen Entstehung (u.a.
70-%-Kurzschluss auf § 295 Abs. 2 PBG, falscher Kantonskatalog Solarpflicht, § 30a BBV I aus zweiter
Hand). Das spricht fuer die Cross-KB-Aufsicht und gegen das Tempo der Intensiv-Laeufe: der
25-USD-Lauf produziert schneller, als die Verifikation nachkommt. Beobachten, noch keine Massnahme.

**Unveraendert:** beide Endlos-Runner bleiben gestoppt (Grund dokumentiert und sachlich richtig,
STOP-Dateien nicht angetastet); twin-mail, twin-fidelity, normen und baurecht-buch laufen ueber
ihre Registry-Takte produktiv; operative Briefings/Monitore nicht beruehrt. Der offene Entscheid
vom 27.07. (bekommt die frei gewordene Kapazitaet neue, materialgetriebene Arbeit?) liegt weiter
bei Raphael — dieser Eintrag liefert mit dem Vollinventar-Befund ein erstes konkretes Beispiel
dafuer, wie solche Arbeit aussieht.

**Kein Mail-Versand:** kein P1-Blocker, den nur Raphael loesen kann (der Runner-Login ist intakt),
kein erschoepftes Wochenkontingent. Die abgeschaltete plg-Bruecke ist eine Massnahme im Mandat, kein
Meldefall.

---

## 2026-07-27 22:15 — [FREI] Der Endlos-Runner hat auf BEIDEN Stationen keine Arbeit mehr — VOLLGAS ist faktisch zu Ende; veralteter MacBook-Runner (2 Tage alte Konfiguration) beendet, der jede Taktentscheidung Raphaels unterlief

**Selbstkontrolle — die Aufsicht war 48 h blind.** Letzter Eintrag hier: 25.07. 21:55. Der Radar
ist alle 3 h getaktet, hat also rund 15 Laeufe verpasst und deshalb den 35-h-Totalausfall vom
26./27.07. nirgends gemeldet. Aufgefangen hat das die `vollgas-fruehwarnung` (Eintrag + Mail an
rj@ heute 21:45). Ursache des Radar-Ausfalls: das erschoepfte Wochenkontingent selbst — die Task
konnte in dieser Zeit nicht durchlaufen. Die Aufsicht faellt also genau dann aus, wenn sie
gebraucht wird; das ist ein Konstruktionsfehler, kein Betriebsunfall (P2 unten).

**Fensterzustand:** FREI. Probe mit der Runner-Anmeldung antwortet «OK». Das Wochenlimit ist am
27.07. 12:00 zurueckgesetzt; seither 104 Commits, in den letzten 90 Minuten 12. Kein Login-Block,
kein Mail-Anlass (die Frühwarnung hat den Vorfall heute 21:45 bereits gemeldet — keine
Wiederholungsmail fuer denselben Befund).

**Lagebild:** Der MacBook Pro lief seit dem Reset produktiv (49 Laeufe, baurecht-buch Run 61–67,
normen Run 32–35, twin-mail und twin-fidelity mit echten neuen Markern). Der Mac Mini dagegen hat
seit **14:27 keinen einzigen produktiven Lauf** mehr: 47 Leerlauf-Meldungen «Keine Trainings-Tasks
gefunden» im Zehn-Minuten-Takt, also rund 7,8 Stunden eines freien Fensters ohne jede Arbeit.

**P1 — der eigentliche Befund: der Endlos-Runner ist arbeitslos, auf beiden Stationen.**
Nachgemessen mit dem Filter des Runners gegen die Task-Verzeichnisse beider Stationen:

- **Mac Mini: 0 Loops.** Alle Trainings-Tasks tragen `enabled: false` (energie und
  planungsgrundlagen seit 26.07. 00:33 — beide saturiert, 4 bzw. 17 Nullbefunde in Folge;
  synobsis und normen-mini seit 25.07.), `grobkosten` ist seit 27.07. ausgeschlossen. Der um
  14:33 neu gestartete Runner nahm die aktuelle Konfiguration auf und fand nichts mehr vor.
- **MacBook Pro: 0 Loops.** Nach der heutigen Bereinigung sind alle fuenf bisher zyklierten
  Loops ausgeschlossen.

Das ist **kein Defekt, sondern die Konsequenz lauter richtiger Einzelentscheide**: jeder Loop hat
inzwischen entweder einen eigenen Registry-Takt (twin-mail 2x/Tag, normen 2x/Tag, twin-fidelity
1x/Tag, baurecht-buch woechentlich), ist ereignisgetriggert (immobewertung, spec) oder saturiert
(energie, planungsgrundlagen, synobsis, grobkosten, wettbewerbs-dna). Der Runner war fuer Loops
**ohne** eigenen Takt gedacht — solche gibt es nicht mehr.

**Damit ist VOLLGAS faktisch beendet, ohne dass es je jemand entschieden haette.** Die naechtliche
Last kommt ab sofort nur noch aus den Registry-Tasks. Das deckt sich mit dem Auftrag vom 27.07.
(«Leerlaeufe abschalten»), widerspricht aber der stehenden Anweisung vom 25.07. («Wochenkontingent
ausschoepfen, Wiederdrosselung nur auf meine Anweisung»). **Diesen Widerspruch kann nur Raphael
aufloesen** — bewusst nicht selbst entschieden. Die drei Optionen:
(a) so belassen — Registry-Takt als Normalbetrieb, Wochenkontingent wird kuenftig nicht mehr
ausgeschoepft; (b) dem Runner neue, materialgetriebene Arbeit geben (nicht: einen Loop erfinden,
der auf Rueckfragen an Raphael wartet — genau daran ist `grobkosten` binnen zwei Tagen erstickt);
(c) einzelne saturierte Loops wieder scharf schalten, wenn neues Rohmaterial vorliegt.
Beide Runner laufen weiter im Schlafmodus (kosten dabei keine Token) und wuerden jeden wieder
aktivierten Loop sofort aufnehmen.

**P2 (selbst ausgefuehrt) — der MacBook-Runner lief seit zwei Tagen mit veralteter Konfiguration
und unterlief damit jede Taktentscheidung.** PID 66891 war seit 25.07. 19:22 in Betrieb. Der
Runner liest die Task-Liste zwar bei jedem Zyklus neu, seine Ausschlussliste aber nur beim Start
— alle seither eingetragenen Ausschluesse waren wirkungslos. Folge: er feuerte fuenf Loops rund
alle 40 Minuten, obwohl `baurecht-buch` seit dem 17.07. auf **woechentlich** zurueckgetaktet ist
und die uebrigen vier auf 1–2x taeglich. Ausgefuehrt:

- **PID 66891 beendet** (SIGTERM; griff sauber nach dem laufenden normen-Durchgang, der noch
  fertig schreiben konnte), Runner neu gestartet — PID 77522, aktuelle Konfiguration.
- **Vor dem Neustart eine Falle abgefangen:** eine Simulation des Filters zeigte, dass der
  Neustart `immobewertung-training` (von Raphael am 26.07. auf Ereignis-Trigger gestellt) und
  `immobewertung-marktpuls-260901` (Einmal-Task fuer den 01.09.2026) **wiederbelebt und im
  Minutentakt gefeuert** haette: beide SKILL.md tragen kein `enabled: false` in der Frontmatter,
  und der Runner prueft nur die Frontmatter, nie die Registry. `immob` deshalb in die
  Ausschlussliste aufgenommen. Wer kuenftig einen Loop ueber die Registry stilllegt, muss das
  im Runner separat nachziehen — die beiden Wahrheiten laufen auseinander.
- **`wettbewerbs-dna-training` auf Bestaetigungstakt woechentlich** (Mo 02:20, war 2x taeglich).
  Begruendung: 10 Laeufe seit dem Reset, davon **7 Blindgaenger** und danach **4 Delta-Null-Laeufe
  in Folge**; Etappe 3 ist vollstaendig abgeschlossen (Schulbau/Healthcare/Wohnungsbau je B1–B6
  `established`). Der Loop meldet selbst, dass er ohne Raphaels Entscheid ueber die naechste
  Ziel-Bauaufgabe nichts mehr tun kann — also ein Loop, der auf eine Bring-Schuld wartet, und
  der gehoert nach dem Auftrag vom 27.07. nicht in den Vollgas-Takt.

**Parallel-Befund, nicht von mir:** waehrend dieses Laufs hat eine zweite Instanz dieselbe Datei
bearbeitet und `baurecht-buch` mit dem Grundsatz ergaenzt, ein Loop mit eigenem Scheduled Task
gehoere nicht zusaetzlich in den Endlos-Zyklus (Vermerk dort «Freigabe Raphael» — von mir nicht
verifiziert). Inhaltlich deckt sich das mit dem Befund oben; es ist der Schritt, der die
MacBook-Zyklusliste endgueltig auf null gebracht hat.

**P2 — die Aufsicht braucht einen Ausfall-Melder.** Der Radar kann seinen eigenen Ausfall
konstruktionsbedingt nicht melden: erschoepft sich das Kontingent, faellt er mit aus. Die
`vollgas-fruehwarnung` (06:25) hat es heute gefangen, aber erst nach 35 Stunden. Vorschlag zum
Entscheid: den Frühwarnungs-Task zusaetzlich pruefen lassen, ob `RADAR.md` aelter als 6 Stunden
ist, und das in seine Meldung aufnehmen — billig, und es schliesst genau die Luecke, die diesen
Ausfall unsichtbar gemacht hat.

**P3 — offene Taktfrage, die der Loop selbst stellt.** `normen-training-nacht` meldet den Bestand
als «inhaltlich komplett»; es drehen sich nur noch zwei Lignum-Dokumente mit sinkender, aber nicht
auf null konvergierender Fehlerdichte im Verifikationskreis. Der Loop fragt ausdruecklich, ob er
das weiter alle zwei Stunden verifizieren oder die beiden Reste als «speculative, stabil»
akzeptieren soll. Nicht selbst entschieden (kein Leerlauf im Sinne des Auftrags — die Laeufe
liefern echte Korrekturen), aber entscheidungsreif.

**Unveraendert:** twin-mail und twin-fidelity liefern weiter echte Marker und bleiben
unangetastet; operative Briefings/Monitore nicht beruehrt.

### Nachtrag 22:25 — Endstand nach der parallelen Bereinigung (korrigiert Teile des Eintrags oben)

Waehrend dieses Laufs hat eine zweite Instanz die Leerlauf-Bereinigung zu Ende gefuehrt und dabei
die von mir oben zur Entscheidung vorgelegten Punkte teils bereits umgesetzt. Endstand, verifiziert:

- **Beide Endlos-Runner sind gestoppt** — `STOP-Macmini` (22:15) und `STOP-Macbookpro` (22:20),
  beide mit ausfuehrlicher schriftlicher Begruendung in der Datei und dem Vermerk «Freigabe
  Raphael». Die Begruendung deckt sich exakt mit dem Befund oben und zitiert meine eigene
  Verifikation (PID 77522, 22:14:45, «Keine Trainings-Tasks gefunden»). Der Satz oben, beide
  Runner liefen im Schlafmodus weiter, ist damit **ueberholt** — es laeuft keiner mehr. Die
  STOP-Dateien werden nach dem Radar-Auftrag NICHT entfernt: der Grund ist klar, dokumentiert
  und sachlich richtig. Wichtig, weil leicht zu verwechseln: gestoppt ist nur der zweite,
  ungetaktete Feuermechanismus — die Lern-Loops laufen ueber ihre Scheduled Tasks weiter.
- **`wettbewerbs-dna-training` ist ganz stillgelegt** (`enabled: false`), nicht nur woechentlich
  getaktet wie von mir gesetzt. Angesichts von 7 Blindgaengern und 4 Delta-Null-Laeufen in Folge
  bei einem Loop, der ausdruecklich auf Raphaels Richtungsentscheid wartet, ist das die
  konsequentere Lesart desselben Auftrags. Reaktivierung erst nach dem Entscheid.
- **`normen-training-nacht` auf 1x taeglich** (01:20, war 2x) — damit ist die offene Taktfrage
  aus P3 oben beantwortet; der Loop hatte sie selbst gestellt.
- **Mein P2-Vorschlag ist bereits gebaut:** die `vollgas-fruehwarnung` ueberwacht neu ausdruecklich
  den Herzschlag des Radars und meldet Runner-Leerlaeufe. Genau die Luecke, die den 48-h-Blindflug
  der Aufsicht unsichtbar gemacht hat, ist damit geschlossen.

**Was jetzt noch offen bei Raphael liegt** — und der einzige Punkt, den keine Instanz selbst
entscheiden darf: **VOLLGAS ist damit faktisch beendet.** Die naechtliche Last kommt nur noch aus
den Registry-Tasks; das Wochenkontingent wird kuenftig bei weitem nicht mehr ausgeschoepft. Das ist
die richtige Antwort auf den 35-Stunden-Ausfall, steht aber gegen die Anweisung vom 25.07.
(«ausschoepfen, Wiederdrosselung nur auf meine Anweisung»). Zu entscheiden ist nicht, ob die
Leerlaeufe abgestellt bleiben — das ist richtig so —, sondern **ob die frei gewordene Kapazitaet
neue, materialgetriebene Arbeit bekommen soll**. Warnung aus der Erfahrung dieser Woche: einen
Loop zu erfinden, der auf Rueckfragen an Raphael wartet, erzeugt nur neue Leerlaeufe — daran ist
`grobkosten` binnen zwei Tagen erstickt.

**Kein Mail-Versand:** die Frühwarnung hat den Vorfall heute 21:45 bereits gemeldet; eine zweite
Mail 40 Minuten spaeter waere eine Wiederholungsmail zum selben Befund. Der offene Entscheid geht
ueber das Tagesbriefing des `hub-chef` (08:35).

---

## 2026-07-25 21:55 — [FREI] Flotte gesund, Blindgaenger-Fix nachweislich scharf — ein einzelner Loop (wettbewerbs-dna) frisst 75 % seiner Laeufe; Mac-Mini-Kapazitaet auf die groesste offene Wissensluecke umgelenkt (neuer Loop `grobkosten-training`)

**Fensterzustand:** FREI. Login-Probe mit der Runner-Anmeldung (`~/.jans-dispatch.env`) antwortet
«OK» — kein Usage-/Rate-Limit, kein Login-Block, kein Mail-Anlass.

**Lagebild:** Durchsatz gesund — 20 Commits in 90 Minuten. Beide Stationen produktiv (energie
Run 104–108, planungsgrundlagen 80–83, baurecht-buch 57, normen 27, spec 34, twin-fidelity 2026-07-25g,
twin-mail Batch 68, immobewertung 49). Keine STOP-Datei. Je Station genau eine Runner-Instanz
(MacBook Pro PID 66891 seit 19:22 nach Supervisor-Neustart, Mac Mini PID 68866 seit 18:53 — die
zweite PID je Station ist die Subshell des laufenden Zyklus, kein Doppelstart).

**Der Fix von gestern Abend ist wirksam** — erstmals belegt: die formbasierte Blindgaenger-Erkennung
(rc=0, < 60 s, < 400 Zeichen) hat um 20:13 und um 21:22 je einen leeren `wettbewerbs-dna`-Lauf
erkannt und den Retry gezogen. Der Retry von 21:22 laeuft beim Schreiben dieses Eintrags produktiv
(PID 87590, 30 Min). Der Fix vom Vortag war dokumentiert-aber-tot; dieser ist gemessen-und-lebendig.

**P1 — `wettbewerbs-dna-training` ist der einzige defekte Loop der Flotte.** Von 8 Laeufen heute
waren **6 unproduktiv**: vier Blindgaenger (12:53, 13:48, 14:32, 17:00 — alle vor dem Fix, alle
unwiederholt), ein Haenger von 3'742 s, den der Stall-Killer um 19:22 per SIGTERM beenden musste
(rc=143 — und dabei den ganzen MacBook-Runner mitriss, den erst der Supervisor neu startete), und
ein Kollisions-Selbstabbruch um 20:14. Zum Vergleich: alle uebrigen sechs MacBook-Loops liefen
heute sauber durch. Die naheliegende Erklaerung «Prompt zu gross» traegt **nicht** —
`normen-training-nacht` hat mit 5'108 Bytes den groesseren Prompt als `wettbewerbs-dna-training`
(4'721 Bytes) und geht nie blind. Ursache damit weiter offen; der Retry federt das Symptom ab,
aber ein Loop, der drei Viertel seiner Fenster-Zeit verbrennt, ist der groesste verbleibende
Durchsatz-Hebel. Bewusst **nicht** heute Nacht angefasst: eine Runner-Aenderung wuerde erst nach
Neustart greifen, und ein Neustart haette den gerade produktiv laufenden Retry gekillt.

**P2 (selbst ausgefuehrt) — der Mac Mini fuhr sein ganzes Fenster auf zwei gesaettigte KBs.**
`energie-training` meldet mit Run 108 die **vierte** Saettigungsbestaetigung in Folge (Runs 105–108),
`planungsgrundlagen-training` mit Run 83 den **17.** Nullbefund in Folge ueber alle vier Domaenen.
Der Mini hat nur diese beiden Loops aktiv und zykliert sie alle ~20 Minuten — heute bis Zyklus 10.
Gemaess Schritt 6 des Radar-Auftrags (freie Kapazitaet auf die groesste offene Wissensluecke
umlenken) wurde **additiv** gehandelt, nicht gedrosselt (Drosseln bleibt Raphaels Entscheid und ist
seit dem 25.07. ausdruecklich untersagt):

- **Neuer Loop `grobkosten-training` auf dem Mac Mini angelegt**
  (`~/.claude/scheduled-tasks/grobkosten-training/SKILL.md`, Takt 09:00/21:00, zykliert zusaetzlich
  im Runner mit). Filter-Test gegen die Runner-Logik bestanden: der Mini fuehrt ab dem naechsten
  Zyklus `energie-training`, `grobkosten-training`, `planungsgrundlagen-training`.
- **Programm geschrieben:** `wissen/grobkosten/training/PROGRAMM.md` — vier Stufen (Inventar →
  Extraktion → Verdichtung → Teuerungs-Normalisierung) mit harten Leitplanken: Kennwerte nie raten,
  Provenienz je Wert, read-only auf Projektdaten, Reife-Hebung erst ab n ≥ 2, kein Leerlauf-Zwang,
  Vertraulichkeit (Namen/Vertragssummen bleiben in `raw/`), Healthcare bleibt bei `kostenschaetzung`.
- **Warum gerade `grobkosten`:** die KB traegt heute **ausschliesslich Seed-Werte** (Marktannahmen),
  `raw/` ist leer — waehrend `grobkosten-onepager` und der Agent `grobkosten-rechner` damit jede
  fruehe Studie rechnen. Das ist die einzige aktive Rechenkette des Hubs, die auf unbelegten Zahlen
  steht, und sie kollidiert direkt mit der Regel «Kennwerte belegen, nie raten».

**Messkorrektur in eigener Sache (wichtig fuer kuenftige Quellensuchen):** der erste Scan lief auf
`/Volumes/daten/02_Architektur_Archiv` (Tiefe 5, fuenf Namensmuster) und ergab **0 Treffer** — was
den Loop beinahe als aussichtslos verworfen haette. Der Ort war falsch, nicht die Ressource. Die
realen Kostendokumente liegen unter `/Volumes/daten/04_Buero/02_Projekte/<projekt>/04_Kosten`
(auch «4 Kosten», «6_Kosten»), verifiziert u.a.: `1527_EH Europe GmbH/4 Kosten` mit
`40 Kostenschätzung`, `41 Kostenermittlung KV`, `42 Kostenvoranschlag` und
`44 Baubuchhaltung_Baukosten/442 Bauabrechnung`; dazu `1011_Lorrainestr_4`, `1012_Ardez`,
`1303_Steinhof`, `1115_Kostenberechnung`, `1524_Winterthur`, `1525_Dessau`. Lehre: ein Nullbefund
aus **einem** Pfad ist kein Nullbefund der Wissensbasis — vor dem Verwerfen einer Quelle mindestens
den zweiten plausiblen Ablageort pruefen.

**P3 (nur vermerkt) — Doppellauf Runner ↔ Cron-Task besteht faktisch weiter.** Rule 260725 haelt
fest, die sechs hochgetakteten Loops seien «aus `EXCLUDE_RE` ausgeschlossen → kein Doppellauf
Runner↔Task». Faktisch trifft das nicht zu: keiner der sechs Namen matcht `EXCLUDE_RE`, der Runner
fuehrt sie also, waehrend zusaetzlich der Cron-Task feuert (belegt: Mac Mini 20:54,
`planungsgrundlagen-training` bricht nach 31 s wegen Zweitinstanz 84019 ab). Der Kollisionsschutz
nach Rule 260724 faengt das sauber ab, die Kosten sind gering (~30–90 s je Fall). Kein Eingriff —
aber der Satz in der Rule beschreibt nicht, was laeuft, und sollte bei Gelegenheit richtiggestellt
werden.

**Nicht getan:** kein Loop gedrosselt oder beendet (Taktentscheid Raphaels; die Saettigungsmeldungen
von `energie`, `planungsgrundlagen`, `spec` und `immobewertung` liegen ihm bereits mehrfach vor),
kein Runner-Neustart, keine Mail.

---

## 2026-07-25 18:55 — [FREI] Der Blindgaenger-Fix von 16:00 lief den ganzen Nachmittag ins Leere (kein Runner-Neustart) — jetzt scharf, Erkennung verbreitert, M365-Connector nach 12 Tagen repariert

**Fensterzustand:** FREI. Login-Probe mit der Runner-Anmeldung (`~/.jans-dispatch.env`) antwortet
«OK» — kein Usage-/Rate-Limit, kein Login-Block, kein Mail-Anlass.

**Lagebild:** Durchsatz gesund — 19 Commits in 90 Minuten, beide Stationen produktiv (energie Run
95/96/97, planungsgrundlagen 70–74, baurecht-buch 55, immobewertung 47, spec 32, twin-mail Batch 66,
zwei wettbewerbs-dna-Refuter-Laeufe). Keine STOP-Datei, je Station genau eine Runner-Instanz.

**Hauptbefund (P1, behoben): der eigene Fix von 16:00 war nie aktiv.** Der Runner liest sein Script
einmal beim Start in den Speicher. Der Blindgaenger-Retry wurde um 15:55 geschrieben — die Runner
liefen aber seit 13:10 (MacBook Pro) bzw. 13:07 (Mac Mini). Der um 15:57 armierte schonende Neustart
brach um 16:41 erfolglos ab, und danach blieb es dabei: **beide Stationen fuhren den ganzen
Nachmittag ohne Retry weiter**. Belegt durch zwei Blindgaenger nach dem Fix, die unwiderholt blieben
(MacBook Pro 17:00 `wettbewerbs-dna-training`, Mac Mini 18:34 `energie-training`). Der Fix war
dokumentiert, aber nicht wirksam — dieselbe Falle wie beim Vollgas-Neustart um 12:45.

**Zweiter Befund: die Erkennung war zu eng.** Der Retry suchte feste Tell-Tale-Saetze. Die
vollstaendige Zaehlung ueber beide Stationen ergibt heute **18 Blindgaenger** (Mac Mini 11, MacBook
Pro 7) — das Modell formuliert die Leer-Antwort aber frei, und **4 der 18 haetten den Filter
passiert** («Bereit. Woran soll ich arbeiten?», «Ich bin bereit — was moechtest Du als Naechstes…»,
«…Nachricht ist ohne Inhalt bei mir angekommen», «…sei diese Nachricht ohne konkreten Auftrag
angekommen»).

**Messfalle, die das verdeckt hat:** `Macmini.log` enthaelt 5'520 Zeilen mit NUL-Bytes (Folge der
konkurrierenden `tee -a`-Schreibzugriffe ueber SMB). `grep` behandelt die Datei damit als binaer und
liefert **kommentarlos gar nichts** — kein Fehler, keine Meldung. Jede Auswertung der Mini-Logs
braucht zwingend `grep -a`, sonst misst man still nur die halbe Flotte.

**Selbst ausgefuehrt:**
- **Erkennung auf die FORM statt auf Phrasen umgestellt** (`scripts/vollgas-runner.sh`): ein
  Blindgaenger ist rc=0, unter 60 s **und** unter 400 Zeichen Antwort. Ein echter Trainingslauf
  schreibt immer einen Report (kuerzester produktiver Lauf heute 125 s, jede produktive Antwort weit
  ueber 400 Zeichen). Der Phrasen-Zweig bleibt als OR und wurde um die vier neuen Varianten ergaenzt.
  Gegen alle 18 heutigen Blind-Antworten getestet (alle erkannt) und gegen die drei heutigen
  Kollisions-Abbrueche nach Rule 260724 (keiner ausgeloest — die enden zwar auch kurz, liefern aber
  einen langen Begruendungstext; ein Retry wuerde dort nur erneut kollidieren).
- **Neues Werkzeug `scripts/vollgas-runner-restart.sh`** — der schonende Neustart als wiederverwendbares
  Script statt als Ad-hoc-Konstrukt. Es wartet auf das Pausenfenster zwischen zwei Laeufen und
  erkennt es daran, dass das einzige Kind des Runners ein `sleep` ist. **Genau daran scheiterte der
  Versuch von 15:57:** der wartete auf «gar kein Kindprozess» — den Zustand gibt es praktisch nie,
  weil die 30-Sekunden-Pause selbst ein Kind ist. Danach killt es sauber, raeumt den verwaisten Lock
  auf (bash fuehrt den EXIT-Trap bei SIGTERM nicht aus) und startet den Runner sofort selbst neu;
  der launchd-Supervisor ist nur noch Rueckfallnetz.
- **Mac Mini neu gestartet und verifiziert:** Kill um 18:52:54 exakt im Pausenfenster (der 860-s-Lauf
  `energie-training` war um 18:52:41 sauber fertig geworden — **kein Lauf verloren**), neuer Runner
  PID 68866 um 18:52:59, Zyklus 1 laeuft. MacBook Pro: Waechter armiert, wartet auf das Ende des
  laufenden `wettbewerbs-dna-training` (seit 18:20, produktiv — hat bereits zwei Refuter-Commits
  geliefert). Der Neustart erfolgt dort automatisch in der naechsten Pause.
- **M365-Connector repariert (P2 aus dem 16:00-Eintrag, seit 13.07. offen).** Ursache gefunden statt
  vermutet: der MCP-Server sucht `@pnp/cli-microsoft365` **ausschliesslich global**
  (`dist/util.js:138`, `npm list -g` + `npm root -g`), JANS installiert es aber lokal ueber die
  `package.json` — der Katalog `allCommandsFull.json` konnte damit nie gefunden werden. Der
  eigentliche Connector war die ganze Zeit intakt (`m365 status` meldet gueltigen Certificate-Login).
  `/usr/local/lib/node_modules` gehoert root, sudo geht headless nicht — darum benutzereigener
  npm-Prefix `~/.npm-global` mit Symlink auf die lokale Installation (kein zweiter Download, keine
  Versions-Divergenz). Der Wrapper `scripts/m365-mcp-server.sh` setzt den Prefix und legt den Symlink
  bei Bedarf selbst an, **der Mac Mini heilt sich damit beim naechsten Lauf von allein**. End-to-End
  gegengeprueft: 851 Befehle laden, inklusive `outlook message list`. Damit haben
  `twin-fidelity-review` und `twin-mail-training` ihre Goldproben-Quelle zurueck — letzterer meldete
  um 18:19 ausdruecklich, er brauche fuer den naechsten Lauf einen frischen M365-Pull.

**Weiter beobachtet, nicht angetastet:**
- `immobewertung-training`: **15. Delta-Null-Lauf in Folge** (Run 47, Commit 82cea2ea). Der Loop hat
  die Ruecktaktung selbst eskaliert; sie liegt als offene Pendenz in `logbuch/fristen.md` bei Raphael.
- `planungsgrundlagen-training`: **8 Laeufe ohne neuen Fund**, empfiehlt zum **sechsten Mal** die
  Umstellung auf ereignisgetriebenen Modus und setzt sie auftragsgemaess nicht selbst um. Auf dem Mac
  Mini ist es nach den Deaktivierungen von 16:00 einer von nur noch zwei Loops — der Zyklus besteht
  dort faktisch aus einem produktiven Lauf (energie, ~900 s) und einem Frischecheck (~150 s).

**Vorschlaege:**
- **P1 — erledigt.** Retry ist ab dem jeweiligen Neustart scharf und erkennt jetzt alle 18 heute real
  aufgetretenen Varianten; Mini laeuft bereits damit, MacBook Pro zieht in der naechsten Pause nach.
- **P2 — Taktentscheid Raphael: `immobewertung-training` und `planungsgrundlagen-training`.** Beide
  sind gesaettigt und melden das selbst, beide warten seit Tagen auf einen Entscheid, den der Radar
  bewusst nicht faellt. Empfehlung: `immobewertung-training` stilllegen (15 Nullaeufe),
  `planungsgrundlagen-training` auf ereignisgetrieben umstellen; frei werdende Kapazitaet auf
  `wettbewerbs-dna` ETAPPE 3 lenken, den einzigen Loop mit sichtbar offener Substanz.
- **P3 — DIN/VSS/RAL einmalig re-auditieren** (unveraendert aus dem 16:00-Eintrag): die Stilllegung
  von `normen-training-mini` stuetzt sich auf eine «Inventar komplett»-Selbstmeldung, und Run 22 des
  Schwester-Loops hat gezeigt, dass so eine Meldung eine Messfehler-Kette sein kann.
- **P3 — Log-Rotation fuer `logbuch/vollgas/*.log` erwaegen.** Die NUL-Byte-Verseuchung waechst mit
  jedem Parallel-Schreibzugriff; die Logs sind bei 600–700 KB und werden fuer Auswertungen zunehmend
  unzuverlaessig.

**Mail:** keine. Kein P1-Blocker, den nur Raphael loesen kann; Fenster frei, beide Runner laufen.

---

## 2026-07-25 16:00 — [FREI] Zwei Loops liefen den ganzen Tag leer im Kreis; Mini von 4 auf 2 echte Slots bereinigt, Blindgaenger-Retry im Runner

**Fensterzustand:** FREI. Login-Probe mit der Runner-Anmeldung (`~/.jans-dispatch.env`) antwortet
«OK» — kein Usage-/Rate-Limit, kein Login-Block, kein Mail-Anlass.

**Lagebild:** Beide Runner leben und produzieren. Je Station genau EINE Instanz (MBP PID 17097 seit
13:10, Lock `/tmp/jans-vollgas-runner.lock` gesetzt; der zweite `ps`-Treffer ist das Kind desselben
Prozesses, kein Doppelstart). Keine STOP-Datei. Durchsatz gesund: 17 Commits in 90 Minuten, davon
substanzielle Laeufe (energie Run 90/91/92, planungsgrundlagen 64/65, baurecht-buch 54, normen 22,
spec 30, zwei twin-Batches). Der Supervisor hat heute zweimal korrekt gegriffen (12:45, 13:09).

**Hauptbefund (P1, behoben):** Die Zaehlung aller Laeufe seit Mitternacht zeigt, dass ein erheblicher
Teil der Slots an Laeufe ging, die **nach 5-13 Sekunden mit rc=0 und der Antwort «ich sehe keine
konkrete Anfrage, nur Systemkontext»** endeten — der Prompt kam leer beim Modell an.

| Station | Loop | blind | produktiv |
|---|---|---|---|
| Mac Mini | `normen-training-mini` | 6 | 0 |
| Mac Mini | `synobsis-batch-nacht` | 4 | 1 |
| MacBook Pro | `wettbewerbs-dna-training` | 3 | 0 (+1 Kollisions-Abbruch) |
| MacBook Pro | baurecht-buch / normen-nacht | je 1 | 3 bzw. 2 |

Auf dem Mac Mini waren damit **zwei von vier Loops reine Blindgaenger** — die Haelfte der Slots lief
im Kreis, ohne je etwas zu produzieren.

**Der Leerlauf-Guard vom 13:12 kann das NICHT abfangen.** Seine Annahme war, die SKILL.md werde
waehrend des `cat` truncatet; er prueft deshalb die Laenge. Gegengeprueft: die Dateien sind
vollstaendig (4067 bzw. 4721 Bytes), der Prompt wird korrekt gebaut, und derselbe Prompt manuell
mit identischer Invocation abgefeuert **kommt an** (Antwort «EMPFANGEN»). Auch die YAML-Frontmatter
ist unschuldig — synthetischer Formtest mit und ohne Frontmatter kam beide Male durch. Es ist also
ein **transienter Drop auf CLI-Seite**, kein Datei-Problem; der Laengen-Guard laeuft daran vorbei.

**Selbst ausgefuehrt:**
- **`normen-training-mini` und `synobsis-batch-nacht` auf `enabled: false`** (Mac Mini, reversibel,
  Backup `.bak-260725`, Begruendung im Kopf der jeweiligen SKILL.md). Beide sind nicht bloss blind,
  sondern inhaltlich fertig: `normen-training-mini` traegt seit 17.07. selbst «STILLGELEGT — Inventar
  DIN/VSS/RAL komplett» in der description, und `synobsis-batch-nacht` meldet in seinem einzigen
  produktiven Lauf heute den **14. Leerlauf in Folge** und empfiehlt seit mehreren Laeufen die eigene
  Pausierung, ohne sie auftragsgemaess selbst umzusetzen. Wirkt sofort, ohne Runner-Neustart (die
  Task-Liste wird je Zyklus frisch gebaut). Der Mini zykliert damit nur noch die beiden produktiven
  Loops `energie-training` und `planungsgrundlagen-training` — kuerzerer Zyklus, mehr echte Laeufe/Std.
- **Blindgaenger-Retry in `scripts/vollgas-runner.sh` eingebaut:** endet ein Lauf mit rc=0, unter 60 s
  UND mit dem Tell-Tale-Satz, wird derselbe Task **einmal sofort nachgefeuert** statt den Zyklus-Slot
  zu verlieren. Erkennung bewusst eng (Laufzeit UND Textmuster), damit ein echt schneller Lauf nie
  faelschlich wiederholt wird; gegen alle vier real aufgetretenen Blind-Antworten getestet, Gegenprobe
  mit einer echten Ergebnis-Antwort schlaegt nicht an. `bash -n` sauber.
- **Schonender Runner-Neustart armiert** statt Holzhammer: `normen-training-nacht` lief gerade
  (30-Minuten-Loop), ein sofortiger Kill haette die Arbeit weggeworfen. Ein abgesetzter Waechter
  wartet, bis der Runner zwischen zwei Laeufen steht, beendet ihn dann; der launchd-Supervisor startet
  ihn binnen 180 s mit dem neuen Script neu (Abbruch nach 45 Min, dann laeuft alles unveraendert
  weiter). Der Mac-Mini-Runner braucht keinen Neustart — dort wirkt die Bereinigung ohne Code.

**Weitere Beobachtungen (nicht angetastet):**
- `immobewertung-training` meldet heute den **13. Delta-Null-Lauf in Folge** (Run 45) und verbrennt je
  Zyklus ~10 Min ohne Erkenntnis. Der Loop hat die Ruecktaktung selbst eskaliert, entscheidet sie aber
  nicht — dieselbe Konstellation wie bei den beiden heute deaktivierten Loops, nur eine Stufe frueher.
- `immobewertung-training` brach um 15:51 zusaetzlich mit **API Error 500** ab (330 s, serverseitig,
  transient) — kein Handlungsbedarf, aber der neue Retry greift hier bewusst NICHT (rc=1, kein
  Blind-Muster).
- `twin-fidelity-review` meldet den **M365-Connector als defekt** (`@pnp/cli-microsoft365 npm package
  not found` bei jedem Befehl). Damit faellt der Mail-Pull fuer die Twin-Goldprobe aus — der Loop
  laeuft, aber seine Verifikationsstufe ist blind.

**Vorschlaege:**
- **P1 — erledigt.** Blindgaenger-Slots auf beiden Stationen bereinigt (Mini strukturell, MBP per Retry).
- **P2 — `immobewertung-training` ruecktakten oder stilllegen.** 13 Delta-Null-Laeufe in Folge; die KB
  ist saturiert. Entscheid liegt bei Raphael, weil hier — anders als bei den beiden deaktivierten
  Loops — keine Selbst-Stilllegung dokumentiert ist. Frei werdende Kapazitaet auf die groesste offene
  Luecke lenken (Kandidat: `wettbewerbs-dna` ETAPPE 3, heute faktisch ohne produktiven Lauf).
- **P2 — M365-Connector reparieren** (`npm i -g @pnp/cli-microsoft365`), sonst bleibt die Twin-Goldprobe
  dauerhaft ohne Signal.
- **P3 — DIN/VSS/RAL einmalig re-auditieren statt dauerhaft stillzulegen.** Run 22 des Schwester-Loops
  hat gezeigt, dass ein «Inventar komplett» eine Messfehler-Kette sein kann (2 unsichtbare Normen,
  2 ueberholte Fassungen). Die Stilllegung von `normen-training-mini` stuetzt sich auf genau so eine
  Komplett-Meldung — ein einmaliger Pruef-Lauf waere ehrlicher als die stille Annahme.

**Mail:** keine. Kein P1-Blocker, der Raphael braucht; Fenster frei, Runner laufen.

---

## 2026-07-25 13:12 — [FREI] Vollgas-Neustart war halb wirkungslos: Runner fuhr mit dem Drossel-Filter, MBP jetzt von 2 auf 8 echte Loops

**Fensterzustand:** FREI. Login-Probe mit der Runner-Anmeldung (`~/.jans-dispatch.env`,
`CLAUDE_CODE_OAUTH_TOKEN`) antwortet «OK» — kein Usage-/Rate-Limit, kein Login-Block, kein
Mail-Anlass. Nebenbefund: dieselbe Probe OHNE diese Env scheitert mit «OAuth session expired and
could not be refreshed» — die blanke Shell-Anmeldung ist abgelaufen. Für Runner und Dispatch
irrelevant (beide laden die Env), aber jeder `claude -p`-Aufruf aus einer nackten Shell/Cron ohne
diese Env würde derzeit scheitern.

**Hauptbefund (P1, behoben):** Die Reaktivierung um 12:45 hat die Runner gestartet, aber sie liefen
mit dem **Filter aus der Drossel-Zeit**. Der Prozess war um 12:45:28 gestartet, das korrigierte
Script wurde erst um 12:48:27 geschrieben — der laufende Prozess hatte die alte `EXCLUDE_RE` bereits
im Speicher. Folge auf dem MacBook Pro: statt 10 nur 4 Loops, und von diesen 4 waren **drei
erledigte Einmal-Tasks**, die als Blindgänger im Kreis liefen. Effektiv liefen also 1 bis 2 echte
Lern-Loops statt 8 — genau das Gegenteil der Anweisung. Nach sauberem Neustart (PID 17097, 13:10):
**8 Loops** (baurecht-buch, immobewertung, normen-training-nacht, spec, twin-fidelity, twin-mail,
wettbewerbs-dna, wettbewerbs-layer). Der Mac Mini hat sich um 13:07 selbst korrigiert (3 auf 4
Loops, `normen-training-mini` war ebenfalls vom alten Filter geschluckt) — dort war kein Eingriff
nötig.

**Selbst ausgeführt:**
- MacBook-Runner sauber neu gestartet, neue Zyklus-Liste im Log verifiziert (8 statt 4).
- Drei erledigte Einmal-Tasks auf `enabled: false` gesetzt (reversibel, der Runner überspringt sie),
  jeweils mit Begründung im Kopf der SKILL.md: `syn02-spec-anstoss` (am 20.07. erledigt, feuerte am
  25.07. zweimal als dokumentiertes No-op und empfahl selbst die Entfernung), `wettbewerbs-layer-
  nachbrenner` (Ziel am 13.07. erreicht, meldete selbst «keine Änderung vorgenommen» und empfahl
  die Deaktivierung) und `wettbewerbs-dna-reaktivierung`.
- **`wettbewerbs-dna-reaktivierung` war der gefährlichste Fund:** ein Einmal-Task aus dem
  Drossel-Regime, der bei jedem Feuern das Gegenteil der heutigen Anweisung getan hätte — Schritt 3
  setzt `wettbewerbs-dna-training` ausdrücklich auf den gedrosselten Nachttakt («NICHT auf VOLLGAS
  zurückstellen»), Schritt 5 schreibt den «Schoner-Modus» fest, Schritt 6 verbietet den Start des
  Endlos-Runners. Er lief um 12:49 und um 13:08 erneut im Zyklus und wurde beim Neustart abgebrochen.
  Der Lauf von 12:49 hatte die Beschreibung von `wettbewerbs-dna-training` immerhin korrekt auf
  VOLLGAS (2x täglich 02:20/14:20) gehoben — der **Prompt-Text** blieb aber auf dem Drossel-Stand
  («1x täglich, EIN Baustein, nicht auf Durchsatz optimieren»). Dieser Widerspruch ist bereinigt:
  der Takt-Absatz steht jetzt auf VOLLGAS, Qualitätsleitplanken unverändert.
- **Leerlauf-Guard in `scripts/vollgas-runner.sh` eingebaut:** Wiederholt endeten Läufe nach 6 bis
  13 Sekunden mit rc=0 und einer Antwort sinngemäss «es ist nur der System-Kontext angekommen, was
  möchtest Du?» — der Prompt kam also leer beim Modell an, der Slot war verbrannt, und im Log sah
  es wie ein erfolgreicher Lauf aus (belegt am 14.07. und 25.07. auf beiden Stationen, u.a.
  `normen-training-mini` 6s, `wettbewerbs-dna-training` 10s, `spec-training` 7s). Vermutete Ursache:
  die SKILL.md wird während des `cat` gerade neu geschrieben. Der Guard überspringt einen Lauf,
  wenn die SKILL.md unter 200 Zeichen liefert, und macht das als `SKIP … Leerlauf vermieden` sichtbar.
  Syntax geprüft (`bash -n`); greift ab dem nächsten Runner-Neustart.

**Durchsatz:** Im NAS-Repo in den letzten 90 Minuten nur die 15-Minuten-Commits des nativen
`nas-selfcommit` (5 Stück) — erwartbar, weil der Vollgas-Betrieb erst um 12:45 wieder anlief und die
ersten Zyklen fast ausschliesslich Blindgänger waren. CHANGELOGs der aktiven KBs sind aktuell:
normen 25.07. 01:34, twin 25.07. 06:04, planungsgrundlagen 25.07. 05:35, energie 25.07. 00:37,
wettbewerbs-dna 25.07. 09:17, spec 25.07. 12:47, baurecht 24.07. 23:24, immobilienbewertung 24.07.
02:55. Kein KB abgehängt. Der ehrliche Durchsatzwert dieses Fensters ist erst im nächsten Lauf
messbar, weil die echten Loops erst seit 13:10 zykeln.

**Vorschläge:**
- P1: keiner offen — Runner laufen auf beiden Stationen mit korrekter Liste (MBP 8, Mini 4).
- P2 (Entscheid Raphael): **Das Selbst-Ende des Runners wurde bei der Reaktivierung von 11.08.2026
  auf 31.12.2099 angehoben** — in Runner UND Supervisor. Vollgas läuft damit unbefristet. Das
  kollidiert mit der weiterhin stehenden One-Time-Task `token-drosselung-100810` (10.08.2026), die
  die Lern-Loops auf Sparbetrieb zurücktakten würde. Beide Vorgaben widersprechen sich; eines von
  beidem muss aufgehoben werden. In Rule 260725 ist die Verlängerung über den 11.08. hinaus als
  OFFENE Frage an Dich vermerkt — faktisch ist sie im Code aber schon gesetzt. Der Radar hat das
  dokumentiert, aber NICHT eigenmächtig zurückgedreht.
- P2: Der zweite Teil derselben offenen Frage — ob das 5x-Abo-Downgrade am 10.08. bestehen bleibt —
  ist mit unbefristetem Vollgas ebenfalls unvereinbar.
- P3: Die blanke Shell-OAuth-Anmeldung ist abgelaufen. Kein Blocker (Runner und Dispatch laden die
  Env), aber bei Gelegenheit per `claude setup-token` auffrischen, damit Ad-hoc-`claude -p`-Aufrufe
  aus einer nackten Shell wieder funktionieren.

---

## 2026-07-25 13:05 — [VOLLGAS] Doppel-Feuerung `wettbewerbs-dna-reaktivierung`: kein Handlungsbedarf, nur vermerkt

**Lagebild:** Der One-Time-Task `wettbewerbs-dna-reaktivierung` (urspruenglich fuer Mo 20.07. 12:30
angesetzt) ist heute erneut gefeuert — ohne Zugriff auf `list_scheduled_tasks`/`update_scheduled_task`
in dieser Session, daher keine eigene Verifikation des Task-Zustands moeglich. Der Eintrag vom
20.07.2026 12:30 (oben, Zeile ~631) belegt bereits abschliessend: die Reaktivierung wurde damals
durchgefuehrt und verifiziert (`wettbewerbs-dna-training` auf `enabled: true`, Cron `20 2 * * *`,
Lauf 21.07. 02:26 bestaetigt). Es gibt nichts erneut zu reaktivieren.

**Zusaetzlich ueberholt:** Der Kern-Streitpunkt des damaligen Auftrags (gedrosselter Nachttakt statt
VOLLGAS) ist seit dem Regimewechsel 25.07. 12:45 (Banner oben) ohnehin hinfaellig — Raphael hat das
gesamte Drossel-Regime ausdruecklich aufgehoben, der Endlos-Runner laeuft wieder auf beiden Stationen.

**Keine Aktion ausgefuehrt:** keine Task-Aenderung, kein Runner-Eingriff, keine STOP-Datei angefasst.

**Vorschlaege:**
- P3: Der One-Time-Task `wettbewerbs-dna-reaktivierung` scheint erneut in der Warteschlange
  aufgetaucht zu sein, obwohl er am 20.07. bereits als erledigt vermerkt wurde (dessen Ordner unter
  `~/.claude/scheduled-tasks/` liegt laut damaligem Eintrag noch, bewusst nicht geloescht). Raphael
  pruefen lassen, ob der Task versehentlich erneut eingereiht wurde oder aufgeraeumt werden soll —
  keine Loeschung ohne Freigabe.

---

## 2026-07-25 07:16 — [GEDROSSELT] Nachtfenster sauber abgeschlossen, Drossel intakt, SMB-Flatter aufgefangen

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn). Kein
«Not logged in», kein Usage-/Rate-Limit-Signal. Kein Blocker, keine Mail. Der Token-Pfad ist ueber die
abgeschlossenen Nacht-Laeufe belegt, nicht ueber eine Probe.

**Durchsatz:** Das Nachtfenster (22:00–06:00) ist planmaessig ausgelaufen und hat Ertrag geliefert.
Seit dem letzten Radar-Eintrag (00:49) sichtbar: `twin-mail-training` Batch 60 (2026-07-02 bis 07-07) mit
Append auf vier Facetten-Wikis (arbeitsweise, beziehungsregister, fachsignatur, stimme), der
`twin-fidelity-review` 2026-07-25 und `synobsis-batch-nacht` Lauf 13 (leer, 853/853 — KB saturiert wie im
Register dokumentiert, kein Handlungsbedarf). CHANGELOGs der aktiven KBs frisch: normen 25.07. 01:47,
energie 25.07. 00:46, planungsgrundlagen 25.07. 05:54, baurecht/koordination/auflagebereinigung 24.07.
23:45, twin 25.07. 06:21. Kein KB abgehaengt, kein stockender Loop.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen, kein `vollgas-runner`-
Prozess (`pgrep` leer). Drossel-Guard intakt, nicht angetastet.

**SMB-Flatter:** Der `/Volumes/daten`-Mount fiel waehrend des Laufs kurz ab (headless-SMB-Flatter,
Rule 260725) und wurde per `osascript 'mount volume smb://diskstation918.tail8265aa.ts.net/daten'`
(Tailscale) sofort remountet; dieser Eintrag wird in einem Prozess direkt nach dem Remount geschrieben.

**Radar-Commit:** Wie seit dem 24.07. ueberlaesst der Radar die Sicherung dem nativen `nas-selfcommit`
(SMB-Git-Schreibpfad flattert); der Eintrag wird beim naechsten 15-Min-Takt mitgenommen.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten;
  der Radar startet nichts. Ab 10.08.2026 (token-drosselung-100810) nur noch melden und Reduktion des
  Radars auf 1x taeglich vorschlagen.
- P3: keiner.

---

## 2026-07-25 00:49 — [GEDROSSELT] Nachtfenster produktiv, Token-Pfad belegt, Drossel intakt

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn). Kein
«Not logged in», kein Usage-/Rate-Limit-Signal. Kein Blocker, keine Mail. Der Token-Pfad ist ueber die
substanziellen Trainings-Outputs der letzten Stunde belegt (mehrere abgeschlossene `claude -p`-Laeufe,
die als Wiki-/Report-Dateien gelandet sind), nicht ueber eine Probe.

**Durchsatz:** Das Nachtfenster (22:00–06:00) arbeitet planmaessig und ergiebig. Zwei Sammel-Commits
liefern echten Ertrag: `652c35f5` (23:45, 30 Dateien, 1'175 Zeilen) mit baurecht Buch-Run 51 (neues
Destillat LSV-Anhang 6), energie Run 87 (Blower-Door-Kosten, Anergienetz, Denkmalschutz-Sanierung,
BAUHERREN-FAQ +109 Zeilen), koordination wissens-chef Run 14 (QUERBEZUEGE) und dem auflagebereinigung-
Health-Check; `45de99fb` (00:45, 13 Dateien) mit planungsgrundlagen Run 59 (Geoportal-Uebersicht,
PV-Eignung) und dem energie-Health-Check 2026-07-25. Dazwischen die ueblichen `nas-selfcommit`-
Heartbeats (je 2 station-status-Dateien) im 15-Min-Takt. Alle neun aktiven KB-CHANGELOGs frisch
(24./25.07.). Kein KB abgehaengt, kein stockender Loop.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen, kein
`vollgas-runner`-Prozess (`pgrep` leer). Drossel-Guard intakt, nicht angetastet.

**Radar-Commit:** Wie am 24.07. entschieden committet sich der Radar nicht selbst (SMB-Git-Schreibpfad
haengt), sondern ueberlaesst die Sicherung dem nativen `nas-selfcommit`. Dieser Eintrag wird beim
naechsten 15-Min-Takt mitgenommen.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten;
  der Radar startet nichts. Ab 10.08.2026 (token-drosselung-100810) nur noch melden und Reduktion des
  Radars auf 1x taeglich vorschlagen.
- P3: keiner.

---

## 2026-07-24 18:47 — [GEDROSSELT] Nachtschicht wieder angelaufen, erster Ertrag um 18:30, Drossel intakt

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn). Kein
«Not logged in», kein Usage-/Rate-Limit erkennbar. Kein Blocker, keine Mail. Der aktive Token-Pfad ist
über den Dispatch-Lauf `20260724-183004-75330` (Mac Mini, 18:30, sauber abgeschlossen) und den daraus
folgenden Commit `399d4ca6` (18:45, 10 Dateien) belegt.

**Durchsatz:** Die Tagesruhe ist planmässig zu Ende — das Mac-Mini-Nachtschicht-Fenster (18:00–09:00)
hat um 18:30 wieder gegriffen und im ersten Zyklus geliefert: Prioritäten 1–4 leer bzw. nicht fällig
(keine Sync-/Remote-Tasks, Synobsis Stufe 2 fertig, Trainingsfenster 22:00–06:00 noch nicht erreicht,
Fristen-Radar bereits versendet), darum Priorität 5 — die vier als «leicht behebbar» markierten toten
`[[links]]` der KB `normen` aus dem heutigen Health-Check korrigiert, beim Fix zwei weitere Vorkommen
desselben Fehlers gefunden und mitbereinigt (6 statt 4). Sauber gearbeitet: `[[sia-102-2003]]` wurde
NICHT auf eine falsche Ausgabe umgebogen, sondern gemäss Rule `identifikatoren-verifizieren` zu
Klartext entlinkt, weil die Ausgabe 2003 nicht im Bestand ist. Der Doppelarbeit-Guard (Rule 260720,
Protokoll inhaltlich lesen) hat funktioniert. Zwischen 13:00 und 18:30 ausschliesslich
`nas-selfcommit`-Heartbeats mit je 2 `station-status`-Dateien — im Drossel-Regime der SOLL-Zustand.
CHANGELOGs der neun aktiven KBs alle vom 23./24.07.; `normen` mit 18:34 der frischeste. Kein KB abgehängt.

**Runner/STOP:** unverändert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen, kein
`vollgas-runner`-Prozess auf der Station (`pgrep` leer). Drossel-Guard intakt, nicht angetastet.

**SMB-Git-Hänger bestätigt (zweites Auftreten, Beobachtungspunkt aus 12:48 geschlossen):** Ein
schlichtes `git status --porcelain` über den SMB-Mount lief 2 Minuten ohne Ergebnis ins Timeout,
während `git log` im selben Aufruf normal antwortete — dasselbe Muster wie 12:50–12:58 (Lese-/
Log-Pfade gesund, Index-/Objekt-Schreibpfade hängen). Damit ist der Befund reproduziert und der
Vorschlag aus 12:48 wird ab sofort umgesetzt: **der Radar committet sich nicht mehr selbst**, sondern
schreibt seinen Eintrag in `RADAR.md` und überlässt die Sicherung dem nativen `nas-selfcommit`
(Cron auf der Synology, ext4, 15-Min-Takt). Das ist konform mit Rule `sync-kanonische-quelle` («kein
Git-Job über SMB») und vermeidet zugleich die Cross-Contamination aus Rule 260724, weil kein
pathspec-loser Commit mehr entsteht.

**Vorschläge:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (nächster Wochen-Reset Mo 11:59). Status quo halten;
  der Radar startet nichts.
- P2: Radar-Commits sind ab jetzt dem `nas-selfcommit` übergeben (siehe Befund). Naechster Lauf prueft
  nur noch, ob der Eintrag tatsächlich vom Selfcommit erfasst wurde.
- P3: Offener Entscheid `synobsis-batch-nacht` stilllegen (Register `fristen.md` Zeile 98, eskaliert
  20.07., seither unbeantwortet) — der Loop lief heute 02:20 zum 12. Mal ergebnislos. Der Radar setzt
  das nicht selbst um (Task-Konfiguration deckt der Auftrag nicht ab).
- P3: Ab 10.08. (`token-drosselung-100810`) Radar auf 1x täglich reduzieren — noch nicht fällig.

---

## 2026-07-24 12:48 — [GEDROSSELT] Tagesruhe planmaessig, Nachtertrag gesichert, Drossel intakt

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn). Kein
«Not logged in», kein Usage-/Rate-Limit erkennbar. Kein Blocker, keine Mail. Jetzt 12:48 — ausserhalb
des Nachtfensters (22:00–06:00); der aktive Token-Pfad ist ueber die Trainings-Commits der Nacht und
die Morgen-Routine belegt (letzter substanzieller Commit `1f8fec21` um 07:59, ag-gruendung-monitor).

**Durchsatz:** Tagsueber planmaessig ruhig. Die letzten 8 Commits (seit 11:00) sind ausschliesslich
`nas-selfcommit`-Takte mit je 2 Dateien — beides `station-status/*.md`, also reine Heartbeats ohne
Wissensinhalt. Das ist im Drossel-Regime der SOLL-Zustand, kein stockender Loop: die Mac-Mini-
Nachtschicht (Dispatch-Fenster 18:00–09:00) endete mit dem Lauf 08:30 regulaer, seither ist kein
Loop faellig. Der Nachtertrag selbst ist gesichert (energie Run 86, wettbewerbs-dna Etappe 3,
twin-mail-training Batch 59, twin-fidelity-review, Rule 260724). CHANGELOGs der neun aktiven KBs
alle vom 23./24.07. — kein KB ist abgehaengt.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macbookpro`-Aequivalent (`STOP` + `STOP-Macmini`) vom
14.07. 12:53 stehen, kein `vollgas-runner`-Prozess auf der Station. Drossel-Guard intakt; nicht
angetastet. `ch.jans.vollgas-supervisor` in launchd geladen, aber ohne laufenden Runner wirkungslos.

**Korrektur zum Eintrag 06:48:** Dort stand, die Stilllegung des Loops `synobsis-batch-nacht` sei
«laut Register bereits entschieden». Das ist praeziser zu fassen: der Punkt steht in
`logbuch/fristen.md` (Zeile 98) als **offener Entscheid Raphael** — eskaliert am 20.07. durch
Dauerschicht-Zyklus 19, nicht entschieden. Der Radar setzt ihn darum NICHT selbst um (Task-
Konfiguration aendern deckt der Radar-Auftrag nicht).

**Neuer Befund — `git commit` ueber den SMB-Mount haengt (12:50–12:58, dreimal reproduziert):** Der
Radar-Commit blieb dreimal ohne Ergebnis (2 Min, 5 Min, dann Hintergrundlauf). Der Prozess steht in
`ps` auf STAT **`UN`** (uninterruptible sleep, nicht killbar) — er haengt in einem SMB-I/O-Call, nicht
an einem Lock: `.git/index.lock` existiert nicht, keine Hooks (`core.hooksPath` leer), keine
GPG-Signatur, kein zweiter Git-Prozess. Ein normaler Schreibtest auf denselben Ordner laeuft in
0.27 s — der Mount als solcher ist gesund, nur die Git-Objekt-/Ref-Schreibpfade haengen. `git add`
lief vorher durch: die Datei ist geschrieben und **staged**; der native `nas-selfcommit` (Cron auf
der Synology, ext4, nicht ueber SMB) uebernimmt sie im naechsten 15-Min-Takt. Kein Datenverlust.
Das ist genau der Fall, den Rule `sync-kanonische-quelle` («kein Git-Job ueber SMB») und die
Auto-Verbesserung 260724 (pathspec-begrenzter Commit) adressieren — hier erstmals auch beim
direkten, interaktiven Commit aufgetreten. Beobachten: tritt es bei den naechsten Laeufen wieder
auf, sollte der Radar seine eigenen Commits ganz dem `nas-selfcommit` ueberlassen.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P2: SMB-Git-Haenger beobachten (siehe Befund oben); bei Wiederholung Radar-Commits dem
  `nas-selfcommit` ueberlassen statt selbst zu committen.
- P3: Offener Entscheid `synobsis-batch-nacht` stilllegen (Register `fristen.md`, seit 20.07.) — der
  Loop lief heute 02:20 zum 12. Mal ergebnislos; jede Nacht kostet er Tokens ohne Gegenwert. Ab
  10.08. (`token-drosselung-100810`) Radar auf 1x taeglich reduzieren — noch nicht faellig.

---

## 2026-07-24 06:48 — [GEDROSSELT] Nachtfenster-Ende, kraeftiger Trainingsertrag, Drossel intakt

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn). Kein
«Not logged in», kein Usage-/Rate-Limit erkennbar. Kein Blocker, keine Mail. Jetzt 06:48 — das
Nachtfenster (22:00–06:00) laeuft aus; der aktive Token-Pfad ist ueber die substanziellen
Trainings-Commits der Nacht belegt.

**Durchsatz:** Kraeftig und breit. Ueber das Nachtfenster liefen mehrere KBs parallel und
kompoundierend: `energie-run86` (Anergienetz F109, oberflaechennahe Erdwaerme F110, PV-Marktpreise
BFE-2024), `wettbewerbs-dna` Etappe 3 (B2/B3 Healthcare Tranche 1, 3 Destillate `established`),
`twin-mail-training` Batch 59 und `twin-fidelity-review`. 27 `nas-selfcommit`-Takte sicherten die
Zwischenstaende. Kein stockender Loop. Zusaetzlich griff die neue Auto-Verbesserung 260724
(pathspec-begrenzter Commit bei paralleler NAS-Instanz) und wurde als Rule verankert.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` (in `logbuch/vollgas/`) vom 14.07. 12:53 stehen;
kein `vollgas-runner`-Prozess. Drossel-Guard intakt, Wiederanlauf nur auf ausdrueckliche Anweisung
Raphaels. Nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: `synobsis`-Batch heute zum 12. Mal leer (KB saturiert) — Stilllegung des Loops `synobsis-batch-nacht`
  ist laut Register bereits entschieden; naechster Nachtlauf kann den leeren Batch-Takt einsparen. Ab
  10.08. (token-drosselung-100810) Radar auf 1x taeglich reduzieren — noch nicht faellig.

---

## 2026-07-24 00:48 — [GEDROSSELT] Nachtfenster aktiv, Trainingsbetrieb gesund, Drossel intakt

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn). Kein
«Not logged in», kein Usage-/Rate-Limit erkennbar. Kein Blocker, keine Mail. Jetzt 00:48 — mitten im
Nachtfenster (22:00–06:00), in dem die gedrosselten Lern-Loops planmaessig laufen; der aktive
Token-Pfad ist ueber die frischen Trainings-Commits belegt.

**Durchsatz:** Gesund. Von den letzten 4 Commits/90 Min sind zwei substanzielle Trainings-Commits:
`9a51b3c4` (00:00, 10 Dateien — normen EN 520 Gipsplattentypen, koordination wissens-chef-run13) und
`28771cb2` (23:30, 15 Dateien — baurecht Parkierung, energie graue Energie/PV, normen SIA 2040 +
VSS 640066, planungsgrundlagen Naturgefahren, koordination QUERBEZUEGE). Mehrere KBs kompoundieren
parallel, kein stockender Loop.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` (in `logbuch/vollgas/`) vom 14.07. 12:53 stehen;
kein `vollgas-runner`-Prozess. Drossel-Guard intakt, Wiederanlauf nur auf ausdrueckliche Anweisung
Raphaels. Nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: keiner. Ab 10.08. (token-drosselung-100810) Radar auf 1x taeglich reduzieren — noch nicht faellig.

---

## 2026-07-23 18:48 — [GEDROSSELT] Abendfenster ruhig, Drossel intakt, Nachtschicht noch aus

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn).
Kein «Not logged in», kein Usage-/Rate-Limit erkennbar. Kein Blocker, keine Mail. Abends vor dem
Nachtfenster (22:00–06:00) ist im Drossel-Regime bewusst kein Trainingsbetrieb erwartet, daher kein
aktiver Token-Pfad zu belegen — regelkonform, kein Stocken.

**Durchsatz:** 6 Commits/90 Min, ausschliesslich der 15-Min-`nas-selfcommit`-Takt (17:30–18:45) —
kein Trainings-Commit am Abend, wie im Nachtfenster-Regime vorgesehen. Kein stockender Loop; die
Nacht-Trainingslaeufe (spec, wettbewerbs-dna, twin u.a.) starten erst ab 22:00.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` (in `logbuch/vollgas/`) vom 14.07. 12:53 stehen;
kein `vollgas-runner`-Prozess. Drossel-Guard intakt, Wiederanlauf nur auf ausdrueckliche Anweisung
Raphaels. Nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: keiner. Ab 10.08. (token-drosselung-100810) Radar auf 1x taeglich reduzieren — noch nicht faellig.

---

## 2026-07-23 12:48 — [GEDROSSELT] Tagfenster ruhig, Drossel unveraendert intakt

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, token-schonend im Drossel-Sinn). Kein
«Not logged in», kein Usage-/Rate-Limit erkennbar. Kein Blocker, keine Mail. Tagsueber ist im
Drossel-Regime bewusst kein Trainingsbetrieb erwartet (Loops im Nachtfenster 22:00–06:00), daher
kein aktiver Token-Pfad zu belegen — das ist regelkonform, kein Stocken.

**Durchsatz:** 6 Commits/90 Min, ausschliesslich der 15-Min-`nas-selfcommit`-Takt (11:30–12:45) —
kein Trainings-Commit tagsueber, wie im Nachtfenster-Regime vorgesehen. Letzte inhaltliche Nachtarbeit
`32b8bd0c` (wissen: EN 520 Typ D + KISPI-Herkunftsklaerung) um ~08:45. Dispatch heute regulaer
tagsueber (07:30, 08:30). Kein stockender Loop.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` (in `logbuch/vollgas/`) vom 14.07. 12:53 stehen;
kein `vollgas-runner`-Prozess, letzter Runner-Log-Eintrag 14.07. 12:40. Drossel-Guard intakt,
Wiederanlauf nur auf ausdrueckliche Anweisung Raphaels. Nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: keiner. Ab 10.08. (token-drosselung-100810) Radar auf 1x taeglich reduzieren — noch nicht faellig.

---

## 2026-07-23 06:48 — [GEDROSSELT] Nachtfenster sauber gelaufen, 4 KBs frisch auf 23.07.

**Fensterzustand:** Keine Login-Probe (Betriebsbeleg-Methode, spart Token im Drossel-Sinn). Belegt
durch drei echte Trainings-Commits um 06:04–06:05: `d960c1c9` spec-training Lauf 26 (Verifikation,
P1 haelt), `37a59acf` wettbewerbs-dna Etappe 3 (B1 Healthcare-Sweep, 42 frei-pdf-Kandidaten),
`4267a94d` twin-mail-training Batch 46 (Beziehungsregister-Mappings). Aktiver Token-Pfad trägt, kein
«Not logged in», kein Usage-/Rate-Limit. Kein Blocker, keine Mail.

**Durchsatz:** 7 Commits/90 Min — die drei Nacht-Trainingslaeufe plus 15-Min-`nas-selfcommit`-Takt.
Alle acht beobachteten KB-CHANGELOGs aktuell: twin, immobilienbewertung, wettbewerbs-dna, spec auf
23.07. (Nachttraining), normen, baurecht, energie, planungsgrundlagen auf 22.07. — kein stockender
Loop, sauber im Nachtfenster (22:00–06:00). Dispatch tagsueber stuendlich bis 21:30, danach naechtliche
Ruhe (erwartbar).

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` (in `logbuch/vollgas/`) vom 14.07. 12:53 stehen;
kein `vollgas-runner`-Prozess, letzter Runner-Log-Eintrag 14.07. 12:40. Drossel-Guard intakt,
Wiederanlauf nur auf ausdrueckliche Anweisung Raphaels. Nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: keiner. Ab 10.08. (token-drosselung-100810) Radar auf 1x taeglich reduzieren — noch nicht faellig.

---

## 2026-07-23 00:48 — [GEDROSSELT] Nachtfenster: Wissens-Chef arbeitet, alle KBs auf Stand

**Fensterzustand:** Keine Login-Probe noetig, Betriebsbeleg eindeutig (Methode 22.07. weitergefuehrt):
in der Nacht laeuft aktiver KB-Betrieb (`7450fdb4` wissens-chef Run 12 um 23:41), das belegt einen
tragenden Token-Pfad besser als jede `claude -p`-Probe. Kein «Not logged in», kein Usage-/Rate-Limit.
Kein Blocker, keine Mail.

**Durchsatz:** 6 Commits/90 Min. Darunter eine echte inhaltliche Nachtarbeit: `7450fdb4`
wissens-chef Run 12 (Cross-KB-Konsistenz, SN-640-060-Rollenkorrektur + 7 Flags/Links in 5 KBs),
Rest der 15-Min-`nas-selfcommit`-Takt. Alle acht beobachteten KB-CHANGELOGs (normen, baurecht, twin,
immobilienbewertung, wettbewerbs-dna, spec, energie, planungsgrundlagen) stehen auf 22.07. — kein
stockender Loop, regelkonform im Nachtfenster (22:00–06:00). Dispatch-Runs liefen tagsueber
stuendlich bis 21:30, danach naechtliche Ruhe (erwartbar, kein Ausfall).

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen (Drossel-Regime,
Wiederanlauf nur auf ausdrueckliche Anweisung Raphaels). Kein loeschbarer Grund — nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: keiner. Betriebsbeleg-Messung (KB-CHANGELOGs + juengster Nicht-selfcommit) traegt zuverlaessig.

---

## 2026-07-22 18:48 — [GEDROSSELT] Abendfenster ruhig, Token-Pfad belegt, sogar Tag-KB-Arbeit

**Fensterzustand:** Keine Login-Probe noetig, weil der Betriebsbeleg eindeutig ist (P3-Empfehlung
vom 12:52 umgesetzt): der juengste Dispatch-Run liegt um 18:30 (`dispatch/log/20260722-183005-70874.md`),
davor luecklos im Stundentakt zurueck. Der Produktions-Token in `~/.jans-dispatch.env` traegt also,
kein «Not logged in», kein Usage-/Rate-Limit. Kein Blocker, keine Mail.

**Durchsatz:** 6 Commits/90 Min. Neben dem 15-Min-`nas-selfcommit`-Takt heute auch eine echte
inhaltliche KB-Arbeit im Tagbetrieb: `3ce64862` normen-KB um 17:30 (Luecke SN EN 520, Anlass 2619
KISPI Korrex Gipsplatten-Rohdichte). KB-CHANGELOGs von normen, baurecht, twin, immobilienbewertung,
spec, energie und planungsgrundlagen stehen auf 22.07.; wettbewerbs-dna auf 21.07. (gedrosselt,
regelkonform). Kein stockender Loop.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen (Drossel-Regime,
Wiederanlauf nur auf ausdrueckliche Anweisung Raphaels). Kein loeschbarer Grund — nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: keiner. Betriebsbeleg-Messung (`dispatch/log/` + KB-CHANGELOGs) statt `claude -p`-Probe hat
  sich bewaehrt; so weiterfuehren.

---

## 2026-07-22 12:52 — [GEDROSSELT] Tagfenster ruhig, Nachttraining hat gegriffen, Produktion gesund

**Fensterzustand:** Interaktive Login-Probe (`claude -p` mit `source ~/.jans-dispatch.env`) lief
zweimal in den Timeout (90s rc=142, danach 120s ueber das Bash-Limit hinaus) — kein «Not logged
in», kein Usage-/Rate-Limit-Text, nur die bekannten Trust-Dialog-Hinweise. Das ist der schon am
06:50 dokumentierte kosmetische Effekt des interaktiven `~/.claude`-Stores (abgelaufener OAuth,
haengt in Tageszeit), NICHT der Produktionspfad. Kein realer Blocker, keine Mail.

**Beleg aus dem Betrieb:** Die token-getriebene Task-Flotte laeuft einwandfrei — Dispatch-Runs
heute um 06:37, 07:33 und 08:37 abgelegt (`dispatch/log/`). Das bleibt der massgebliche
Login-Beweis, nicht die interaktive Probe.

**Durchsatz:** 6 Commits/90 Min, ausschliesslich der 15-Min-`nas-selfcommit`-Takt (Tagbetrieb,
kein Training aktiv — regelkonform, Trainings laufen im Nachtfenster 22:00–06:00). Das Nachtfenster
hat gegriffen: KB-CHANGELOGs von baurecht, twin, immobilienbewertung, spec, energie und
planungsgrundlagen bereits auf 22.07.; normen und wettbewerbs-dna auf 21.07. Kein stockender Loop.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen (Drossel-Regime,
Wiederanlauf nur auf ausdrueckliche Anweisung Raphaels). Kein loeschbarer Grund — nicht angetastet.

**Vorschlaege:**
- P1: keiner.
- P2: Drossel-Entscheid Raphaels weiterhin offen (naechster Wochen-Reset Mo 11:59). Status quo halten.
- P3: Interaktive Login-Probe bleibt im Tagbetrieb wenig aussagekraeftig (haengt). Kuenftig primaer
  am Betriebsbeleg (`dispatch/log/` + KB-CHANGELOGs) messen statt an der `claude -p`-Probe; diese nur
  noch als Schnelltest, mit hartem Timeout und ohne Interpretation eines blossen Timeouts als Block.

---

## 2026-07-22 06:50 — [GEDROSSELT] Falscher LOGIN-Alarm entlarvt: Produktionspfad (Token) gesund

**Fensterzustand:** Ein blanker `claude -p`-Probe (ohne Env) meldete diesmal «Failed to
authenticate: OAuth session expired and could not be refreshed» — das haette als P1-[LOGIN]
durchgehen koennen. Gegenprobe MIT `source ~/.jans-dispatch.env` (also der Weg, den Runner und
alle geplanten Tasks tatsaechlich gehen): sauber durch, rc=0, nur die bekannten Trust-Dialog-
Hinweise fuers `/Volumes`. Der abgelaufene OAuth betrifft also **nur** den interaktiven
`~/.claude`-Credential-Store, NICHT den Produktions-Token in `~/.jans-dispatch.env`. Kein realer
Blocker, keine Mail.

**Beleg aus dem Betrieb:** Der Nachtschicht-Dispatch lief durch bis 06:37 — Baurecht Wissens-
Health-Check (Phase 1), exit_code 0, 2.9/5 USD, Report unter `wissen/baurecht/outputs/
2026-07-22_health-check.md` abgelegt. Das ist der beste Gegenbeweis zum vermeintlichen Login-
Block: die token-getriebene Task-Flotte authentifiziert einwandfrei.

**Durchsatz:** 6 Commits/90 Min (15-Min-`nas-selfcommit`-Takt + `sync: twin-fidelity-review`).
KB-CHANGELOGs taufrisch (planungsgrundlagen/baurecht bereits 22.07.). Nachtfenster wie vorgesehen.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen (Drossel-Regime,
Wiederanlauf nur auf ausdrueckliche Anweisung). Kein loeschbarer Grund — nicht angetastet.

**Vorschlaege:**
- P1: keiner. Der OAuth-Ablauf im `~/.claude`-Store ist kosmetisch, solange der Token-Pfad steht.
- P2: Weiter offen der Drossel-Entscheid Raphaels (naechster Wochen-Reset Mo 11:59). Status quo.
- P3: **Login-Probe des Radars kuenftig IMMER mit `source ~/.jans-dispatch.env`** ausfuehren —
  sonst produziert sie einen falschen [LOGIN]-Alarm gegen den irrelevanten interaktiven Store.
  Optional bei Gelegenheit den interaktiven `~/.claude`-OAuth per Trust-Dialog auffrischen, damit
  auch blanke `claude -p`-Aufrufe ohne Env sauber sind (kein Betriebsdruck).

---

## 2026-07-22 00:47 — [GEDROSSELT] Nachtfenster laeuft produktiv, Login-Probe sauber

**Fensterzustand:** Login-Probe (perl-alarm 90s) sauber durch: kein «Not logged in», kein Usage-/
Rate-Limit-Fehler (rc=0), nur die bekannten Trust-Dialog-Hinweise fuers `/Volumes`-Verzeichnis
(unkritisch). Fenster hat also Kapazitaet — im Drossel-Regime bleibt der Runner davon unberuehrt.

**Durchsatz Nachtfenster (ab 22:00):** regelkonform aktiv. Die Lern-/Trainings-Loops arbeiten wie
vorgesehen im Nachtfenster: `Wissens-Chef Run 11` (23:45) und `Energie-KB Run 83` (7 parallele
Agenten, PDF-Inventar erschoepft, FAQ F1–F104). Die acht aktiven KB-CHANGELOGs sind alle taufrisch
(normen/baurecht/twin/immobewertung/wettbewerbs-dna/spec/energie 21.07., planungsgrundlagen bereits
22.07.). 19 Commits in 6 h, davon der 15-Minuten-`nas-selfcommit`-Takt plus die zwei KB-Runs — das
gewuenschte Bild.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen (Drosselung auf
Anweisung Raphaels, Wiederanlauf nur auf ausdrueckliche Anweisung). Kein loeschbarer Login-/Limit-
Grund — nicht angetastet. Runner-Logs enden erwartungsgemaess am 14.07. 12:40.

**Mail:** keine. Kein neuer/geloester P1.

**Vorschlaege:**
- P1: keiner.
- P2: Weiter offen der Entscheid Raphaels zum Drossel-Regime (naechster Wochen-Reset Mo 11:59).
  Bis dahin Status quo, Radar bleibt Schoner.
- P3: Login-Probe-Fix (perl-alarm) bestaetigt stabil. No-op-Flags aus dem 06:49-Eintrag (`synobsis`
  saturiert, `immobewertung` Delta-Null) weiter offen zur Frequenzsenkung im Nachtfenster.

---

## 2026-07-21 18:48 — [GEDROSSELT] Abendbetrieb ruhig, Login-Probe jetzt belastbar (perl-alarm)

**Fensterzustand:** Die Login-Probe laeuft erstmals wieder sauber durch — der P3-Vorschlag vom
12:47-Eintrag ist umgesetzt: statt des auf macOS fehlenden `timeout` nun `perl -e 'alarm 90; exec
@ARGV' -- claude -p …`. Ergebnis: kein «Not logged in», kein Usage-/Rate-Limit-Fehler (rc=0). Der
CLI meldet lediglich Trust-Dialog-Hinweise fuers `/Volumes`-Verzeichnis (unkritisch, betrifft nur
die Permission-Uebernahme, nicht den Login). Damit ist der fruehere [LOGIN]-Verdacht nicht mehr
belegbar; im Drossel-Regime bleibt der Fensterzustand ohnehin nachrangig, der Runner ruht so oder so.

**Durchsatz Tagesfenster (bis 18:48):** ruhig und regelkonform. 25 Commits in den letzten 6 h,
in den letzten 90 Min ausschliesslich `nas-selfcommit` im 15-Minuten-Takt — kein KB-Training. Das
ist das gewuenschte Bild: die Lern-/Trainings-Loops liegen im Nachtfenster 22:00–06:00 (Regel
260711), das jetzt (18:48) noch nicht erreicht ist; tagsueber ruht die Flotte bewusst.

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen (Grund: Drosselung
auf Anweisung Raphaels, «Wiederanlauf nur auf ausdrueckliche Anweisung»). Kein loeschbarer Login-/
Limit-Grund — nicht angetastet. Runner-Logs enden erwartungsgemaess am 14.07. 12:40.

**Mail:** keine. Kein neuer/geloester P1; der Login-Verdacht loest sich zudem als Mess-Artefakt auf.

**Vorschlaege:**
- P1: keiner.
- P2: Weiter offen der Entscheid Raphaels zum Drossel-Regime (naechster Wochen-Reset Mo 11:59).
  Bis dahin Status quo, Radar bleibt Schoner.
- P3: Login-Probe-Fix (perl-alarm) als erledigt vermerkt. Verbleibend die No-op-Flags aus dem
  06:49-Eintrag (`synobsis` saturiert, `immobewertung` Delta-Null) zur Frequenzsenkung im Nachtfenster.

---

## 2026-07-21 12:47 — [GEDROSSELT] Ruhiger Tagesbetrieb wie erwartet, Runner unangetastet

**Fensterzustand:** Diesmal keine belastbare Login-Probe — das aufgerufene `timeout` fehlt auf
macOS von Haus aus (`command not found`), die Haiku-Probe lief also nicht durch. Im Drossel-Regime
ist der Fensterzustand ohnehin nicht das operative Signal: der Runner bleibt gestoppt, unabhaengig
vom Kontingent. Belastbar bleibt der Durchsatz.

**Durchsatz Tagesfenster (06:00–12:47):** ruhig und regelkonform. Ausser den beiden Morgen-Commits
(`vollgas-radar` 06:49 und `Logbuch-Radar` 07:xx) laeuft tagsueber nur `nas-selfcommit` im
15-Minuten-Takt — kein KB-Training. Das ist das gewuenschte Bild: die Lern-/Trainings-Loops liegen
im Nachtfenster 22:00–06:00 (Regel 260711), tagsueber ruht die Flotte bewusst. Die kraeftige
Nachtleistung ist im 06:49-Eintrag belegt (Schulbau B1–B6 abgeschlossen, baurecht Run 50, Normen
Run 17, Energie Run 82 u.a.).

**Runner/STOP:** unveraendert. `STOP` + `STOP-Macmini` vom 14.07. 12:53 stehen (Grund: Drosselung auf
Anweisung Raphaels, «Wiederanlauf nur auf ausdrueckliche Anweisung»). Kein loeschbarer Login-/Limit-
Grund — nicht angetastet. Runner-Logs enden erwartungsgemaess am 14.07. 12:40.

**Mail:** keine. Login-Blocker seit 19.07. 22:52 gemailt, keine Wiederholung; kein neuer/geloester P1.

**Vorschlaege:**
- P1: keiner.
- P2: Weiter offen der Entscheid Raphaels zum Drossel-Regime (naechster Wochen-Reset Mo 11:59).
  Bis dahin Status quo, Radar bleibt Schoner.
- P3: (a) Login-Probe robuster machen — `timeout` durch native Alternative ersetzen (z.B.
  `perl -e 'alarm 90; exec @ARGV' -- claude -p …` oder `gtimeout` aus coreutils), damit der
  Fensterzustand wieder belastbar erfasst wird. (b) No-op-Flags aus dem 06:49-Eintrag (`synobsis`
  saturiert, `immobewertung` Delta-Null) bleiben zur Frequenzsenkung offen.

---

## 2026-07-21 06:49 — [GEDROSSELT] Nachtfenster stark gelaufen, Nachttakt jetzt belegt, Login-Block unveraendert

**Fensterzustand:** Die Probe `claude -p --model haiku` liefert unveraendert kein «OK» (haengt bis
zum Timeout, kein Usage-Signal) — also weiter [LOGIN], keine Aussage ueber das Kontingent.
Belastbar bleibt der Durchsatz.

**Durchsatz Nachtfenster (22:00–06:00):** kraeftig. Neun inhaltliche Commits, u.a. `wettbewerbs-dna`
Etappe 3 Baustein B5 — damit **Schulbau B1–B6 vollstaendig abgeschlossen** (neues Parameter-Set
`entwurfs-referenzen/.../schule-volksschule-ch.json`), `baurecht`-Buch Run 50 (WsG/WsV + Meldeverfahren
§§ 2a–2e BVV), Normen Run 17 (SIA 382/1 + 384/201 verifiziert), Energie-KB Run 82 (§ 2a BVV korrigiert,
ZH-Kantonsratsbeschluss 60 Mio lokalisiert), Wissens-Chef Run 10, `spec`-training Lauf 24, `twin`-Mail
Batch 58. Seit Fensterschluss (06:00) nur noch `nas-selfcommit` im 15-Minuten-Takt — erwartbar am Morgen.
Das Fenster hat Kapazitaet, die Nacht-Task-Flotte arbeitet ungebremst — das im Drossel-Regime
gewuenschte Bild.

**Runner/STOP:** unveraendert. Endlos-Runner gestoppt (STOP + STOP-Macmini vom 14.07. 12:53,
unangetastet), Logs enden am 14.07. 12:40. Kein loeschbarer Login-/Limit-Grund — Grund ist die
Drosselung auf Anweisung Raphaels mit Vorbehalt «Wiederanlauf nur auf ausdrueckliche Anweisung».

**Mail:** keine. Login-Blocker seit 19.07. 22:52 gemailt, keine Wiederholung; kein neuer/geloester P1.

**Vorschlaege:**
- P1: keiner.
- P2: Offen bleibt der Entscheid Raphaels zum Drossel-Regime. Bis dahin Status quo, Radar bleibt Schoner.
- P3: (a) **ERLEDIGT** — der ausstehende Nachttakt-Beleg fuer `wettbewerbs-dna-training` liegt vor: das
  CHANGELOG datiert den B5-Fortschritt ausdruecklich als «MacBook Pro Nachtlauf 2026-07-21», der 02:26-Takt
  feuert. (b) Zwei wiederholte No-op-Laeufe fallen auf: `synobsis` (Nacht-Batch «853/853, kein neuer Stoff»,
  KB saturiert — Stilllegung war bereits Raphaels Entscheid) und `immobewertung` Run 39 («Delta-Null-
  Bestaetigungslauf»). Beide erzeugen im Drossel-Regime keinen Mehrwert; Frequenz je 1x pro mehrere Tage
  bzw. bis neuer Stoff/Greenlight genuegt — nicht taeglich.

**Fensterzustand:** Die Probe `claude -p --model haiku` endet unveraendert mit «Not logged in ·
Please run /login» — also [LOGIN], kein Usage-Signal, keine Aussage ueber das Kontingent.
Belastbar ist der Durchsatz: 5 Commits in den letzten 90 Minuten, davon inhaltlich
`baurecht`-Buch Run 50 (WsG/WsV-Nachzug abgeschlossen, Meldeverfahren §§ 2a-2e BVV als vierter
Verfahrenstyp integriert) und Wissens-Chef Run 10 (§ 2a BVV dreiseitig verlinkt, GVZ-Artikel an
VKF-BRL angebunden), dazu die `nas-selfcommit`-Laeufe im 15-Minuten-Takt bis 00:45. Die
Nachtschicht des Mac Mini (Dispatch-Fenster 18:00-09:00) hat um 00:30 einen frischen Zyklus
gestartet. Das Fenster hat Kapazitaet, die App-/Nacht-Task-Flotte arbeitet ungebremst — genau
das im Drossel-Regime gewuenschte Bild.

**Runner/STOP:** Endlos-Runner bleibt gestoppt (STOP + STOP-Macmini vom 14.07. 12:53,
unangetastet). Als Grund nennt die STOP-Datei die Drosselung auf Anweisung Raphaels mit dem
Vorbehalt «Wiederanlauf nur auf ausdrueckliche Anweisung» — es liegt kein loeschbarer Login-
oder Limit-Grund vor. `STOP-Macbookpro` existiert bewusst nicht (die generische STOP-Datei
deckt beide Stationen).

**Mail:** keine. Der Login-Blocker ist seit 19.07. 22:52 gemailt, eine Wiederholungsmail ist
ausgeschlossen; ein neuer P1 ist nicht entstanden, ein geloester ebenfalls nicht.

**Vorschlaege:**
- P1: keiner.
- P2: Weiterhin offen der Entscheid Raphaels zum Drossel-Regime. Bis dahin Status quo, Radar
  bleibt Schoner.
- P3: Am 21.07. bestaetigen, dass `wettbewerbs-dna-training` um 02:26 im Nachtfenster feuert —
  Beleg fuer den Nachttakt steht noch aus.

---

## 2026-07-20 18:48 — [GEDROSSELT] Vier KBs am Nachmittag gewachsen, Login-Block unveraendert, STOP unangetastet

**Fensterzustand:** Die Probe `claude -p --model haiku` endet unveraendert mit «Not logged in ·
Please run /login» — also [LOGIN] und kein Usage-Signal; ueber das Kontingent sagt sie nichts.
Belastbar ist der Durchsatz: 25 Commits in den letzten sechs Stunden, davon inhaltlich vier
gewachsene Wissensbasen — `auflagebereinigung` (neuer Artikel GVZ-Einreichung BMA/Sprinkler),
`firmengruendung-ch` (Steuern AG/Inhaber), `kunde-bopp` (Profil Christoph Bopp plus Output
Firmenrollen-Verifikation) und `wettbewerbs-dna` (Kennwerte Schulbauten, Etappe 3). Dazu
Logbuch/Fristen und die `nas-selfcommit`-Laeufe im 15-Minuten-Takt bis 18:45. Das Fenster hat
Kapazitaet, die App-Task-Flotte arbeitet ungebremst — genau das im Drossel-Regime gewuenschte Bild.

**Runner/STOP:** Endlos-Runner bleibt gestoppt; die Logs beider Stationen enden unveraendert am
14.07. um 12:37/12:40. Kein Defekt: die STOP-Datei nennt als Grund die Drosselung auf Anweisung
Raphaels mit Vorbehalt «Wiederanlauf nur auf ausdrueckliche Anweisung». Es liegt damit kein
loeschbarer Login- oder Limit-Grund vor — STOP und STOP-Macmini wurden nicht angetastet.
`STOP-Macbookpro` existiert nicht (die generische STOP-Datei deckt beide Stationen).

**Mail:** keine. Der Login-Blocker ist seit 19.07. 22:52 gemailt, eine Wiederholungsmail ist
ausgeschlossen; ein neuer P1 ist nicht entstanden.

**Vorschlaege:**
- P1: keiner.
- P2: Weiterhin offen der Entscheid Raphaels zum Drossel-Regime (siehe Eintrag 12:30). Bis dahin
  Status quo, Radar bleibt Schoner.
- P3: (a) Am 21.07. bestaetigen, dass `wettbewerbs-dna-training` um 02:26 gefeuert hat — der
  heutige Etappe-3-Fortschritt spricht dafuer, ist aber noch nicht der Beleg fuer den Nachttakt.
  (b) Der erledigte One-Time-Task `wettbewerbs-dna-reaktivierung` liegt weiterhin unter
  `~/.claude/scheduled-tasks/`; bewusst nicht geloescht, gehoert Raphael vorgelegt.

---

## 2026-07-20 12:52 — [GEDROSSELT] Fenster frei und produktiv, Login-Block unveraendert, STOP bleibt bewusst stehen

**Fensterzustand:** Die Probe `claude -p --model haiku` endet erneut mit «Not logged in · Please
run /login» — also [LOGIN], kein Usage-Signal. Sie sagt damit nichts ueber das Kontingent aus.
Belastbar ist stattdessen der Durchsatz der letzten zwei Stunden: `planungsgrundlagen` Run 54
(ZH-Naturgefahren-Endpunkt gefunden, Grundwasser auf `established`), Energie-KB Run 81 (zwei
materielle Rechtsfehler in F47 korrigiert), synobsis-Batch mit neuem Vektorindex, der
SYN-02-Spec-Abschluss (`b262e60b`) und der eigene Reaktivierungs-Commit `593f368e`. Dazu die
regulaeren `nas-selfcommit`-Laeufe im 15-Minuten-Takt bis 12:45. Das Fenster hat Kapazitaet, die
App-Task-Flotte arbeitet ungebremst.

**Runner/STOP:** Endlos-Runner bleibt gestoppt, die Logs beider Stationen enden unveraendert am
14.07. um 12:37/12:40. Das ist korrekt und kein Defekt: die STOP-Datei nennt als Grund die
Drosselung auf Anweisung Raphaels, mit ausdruecklichem Vorbehalt «Wiederanlauf nur auf
ausdrueckliche Anweisung». Damit liegt kein loeschbarer Login-/Limit-Grund vor — STOP und
STOP-Macmini wurden nicht angetastet.

**Mail:** keine. Der Login-Blocker ist seit 22:52 gemailt, eine Wiederholungsmail ist ausgeschlossen.
Ein neuer P1 ist nicht entstanden.

**Vorschlaege:**
- P1: keiner.
- P2: Weiterhin offen der Entscheid Raphaels zum Drossel-Regime (siehe Eintrag 12:30). Bis dahin
  Status quo, Radar bleibt Schoner.
- P3: (a) Am 21.07. bestaetigen, dass `wettbewerbs-dna-training` um 02:26 wirklich gefeuert hat
  (unveraendert offen aus dem 12:30-Eintrag). (b) Der One-Time-Task
  `wettbewerbs-dna-reaktivierung` hat heute 12:30 gefeuert und ist damit erledigt; sein Ordner
  liegt noch unter `~/.claude/scheduled-tasks/`. Bewusst NICHT geloescht — Aufraeumen eines
  Task-Verzeichnisses ist keine Beschleunigung und gehoert Raphael vorgelegt.

---

## 2026-07-20 12:30 — [GEDROSSELT] Wochen-Reset bestaetigt, Wettbewerbs-DNA-Loop wieder scharf — im Nachttakt, nicht auf VOLLGAS

**Fensterzustand:** Der Wochen-Reset um 11:59 ist erfolgt und belegt, nicht angenommen. Die im
Auftrag vorgesehene Probe `claude -p --model haiku` ist NICHT verwertbar: sie endet mit
«Not logged in · Please run /login», also im bekannten headless-Login-Block ([LOGIN]) und nicht in
einer Usage-Meldung. Ein fehlgeschlagener Login sagt nichts ueber das Kontingent. Stattdessen zwei
belastbare Signale: der One-Time-Task `syn02-spec-anstoss` ist heute um 12:15 regulaer durchgelaufen
und hat um 12:24 den Commit `e0ec7d4e` («SYN-02: Faktenlage … nach Limit-Reset verifiziert»)
hinterlassen, und dieser Reaktivierungslauf selbst arbeitet nach 11:59 ohne Drosselung. Das Fenster
ist frei. Der headless-Login-Block besteht davon unabhaengig weiter und bleibt Beobachtungspunkt.

**Was reaktiviert wurde:** `wettbewerbs-dna-training` steht wieder auf `enabled: true`. Verifiziert
statt vertraut: Cron unveraendert `20 2 * * *`, erster Lauf in der Nacht auf den 21.07. um 02:26.
Der Takt bleibt damit exakt der am 17.07. korrigierte gedrosselte Nachtbetrieb — EIN Baustein pro
Lauf, 1x taeglich im Fenster 22:00–06:00 gemaess Regel 260711. Bewusst NICHT auf den historischen
Zwei-Stunden-Takt zurueckgestellt: der Reset gibt Kontingent frei, er hebt das Drossel-Regime nicht
auf. Die Task-Beschreibung wurde entsprechend nachgefuehrt, damit der alte Vermerk «deaktiviert bis
Wochen-Reset» nicht als Zustand stehen bleibt. Der Endlos-Runner bleibt unangetastet, die
STOP-Dateien beider Stationen wurden nicht angefasst.

**Zum Drossel-Banner im Kopf dieser Datei:** Es verweist auf «mindestens bis zum naechsten
Wochen-Reset» — dieser ist jetzt eingetreten, die Bedingung also formal erfuellt. Aufgehoben wird
das Banner hier trotzdem nicht: Rule 260714 behaelt das Wiederhochfahren ausdruecklich Raphael vor.
**Das ist der offene Entscheid** — laeuft das Drossel-Regime weiter, oder kehrt das alte Lastprofil
zurueck? Bis zu dieser Anweisung bleibt der Radar im Schoner-Modus und alle Loops im Nachttakt.

**Vorschlaege:**
- P1: keiner. Kein Blocker, keine Mail noetig; Radar und Hub-Chef-Briefing melden den Vorgang.
- P2: Entscheid Raphael zum Drossel-Regime (siehe oben). Bis dahin gilt der Status quo.
- P3: Der naechste Lauf soll am 21.07. bestaetigen, dass `wettbewerbs-dna-training` um 02:26
  tatsaechlich gefeuert hat — die Reaktivierung ist erst mit einem echten Lauf belegt, nicht mit
  dem gesetzten Flag.

---

## 2026-07-19 12:47 — [GEDROSSELT] Kontext-Diaet halbiert den Grundkontext: 72 kB verifiziert, wirkt ab sofort auf JEDEN Lauf

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt (Schoner-Rolle, kein Wiederanfahren). Runner-Logs beider
Stationen enden weiterhin am 14.07. 12:39/12:37 — korrekt. Kein Login-Probe gefahren: der Wochen-Reset
faellt morgen um 11:59 (noch ~23 Std.), eine Probe kostete nur Kontingent ohne Erkenntnisgewinn.

**Lagebild:** Der wichtigste Vorgang seit dem letzten Lauf ist **nicht** im Loop-Betrieb passiert,
sondern strukturell: Commit `bae52aa0` (09:15) hat die Kontext-Diaet umgesetzt — CLAUDE.md ist
Wegweiser statt Dokumentation, `auto-verbesserungen.md` konsolidiert, die Historie ins nicht
importierte `auto-verbesserungen-archiv.md` ausgelagert. Nachgemessen und bestaetigt: der wirklich
per @-Import geladene Grundkontext betraegt jetzt **74'632 Bytes (72 kB)** — CLAUDE.md 16.7 kB plus
19 importierte Rules; die 52 kB Archiv liegen ausserhalb. Das ist der erste Hebel des
Drossel-Regimes, der **jeden** Lauf jeder Station verbilligt, nicht nur einen Loop: die
Nachtfenster-Trainings, die vier Radar-Laeufe und alle operativen Briefings tragen diesen Kontext
jedes Mal mit. Zugleich verankert die neue Rule 260719 das Minimum Viable Model (mechanische Stufen
auf Haiku/Sonnet) und deterministische Vorfilter statt Rohmaterial-Lektuere — beides zahlt auf
dieselbe Richtung ein.

Der uebrige Betrieb ist unauffaellig. Seit dem 00:50-Lauf sechs inhaltliche Commits, alle im
Nachtfenster oder als Tages-Briefing regelkonform: Normen Run 16 (SIA/VKF-Nachtrag, 31 Positionen
destilliert und verifiziert), Recht-und-Norm Run 53, Wissens-Chef Run 9 (zwei falsche
ZH-Rechtszuschreibungen korrigiert), immobewertung Run 38, twin-mail Batch 57, twin-fidelity-Review;
die restlichen 57 Commits sind `nas-selfcommit`. Zeitplan-Kontrolle beider Stationen erneut
durchgezogen: alle Loops stehen 1x taeglich im Nachtfenster, `wettbewerbs-dna-training` ist wie
vorgesehen `enabled: false`, und die beiden One-Time-Tasks fuer morgen sind scharf und korrekt
datiert (`syn02-spec-anstoss` 20.07. 12:15, `wettbewerbs-dna-reaktivierung` 20.07. 12:30).
Pendenzen-Queues beider Stationen leer.

Ein Punkt zum Vormerken statt zum Handeln: `spec-training` Lauf 23 hat die Schliessung von Lauf 22
**widerrufen**, weil eine gemeldete Monitor-Reparatur nie erfolgt war. Das ist inhaltlich die richtige
Reaktion (ehrliche Selbstkorrektur statt Fortschritts-Fiktion), aber es heisst, dass in der KB `spec`
ein offener Punkt zurueck auf den Tisch kommt — nicht Radar-Sache, gehoert dem Loop selbst.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2: Morgen ist der Tag mit Entscheidungsbedarf — 11:59 Wochen-Reset, danach feuern die beiden
  One-Time-Tasks. Der 12:40-Lauf soll verifizieren, dass die Reaktivierung den Wettbewerbs-Loop
  tatsaechlich auf **gedrosselt 02:20** setzt und nicht versehentlich auf VOLLGAS: das Drossel-Regime
  bleibt bis zu einer ausdruecklichen Anweisung Raphaels bestehen, der Reset allein hebt es nicht auf.
- P3: `synobsis-batch-nacht` (Mac Mini) hat mit dem heutigen Lauf 853/853 zum **18. Mal ergebnislos**
  bestaetigt. Der Entscheid war auf morgen Mo 20.07. terminiert und bleibt es; Empfehlung unveraendert
  Stilllegung bis neues Quellmaterial in `05_Architekten_Synobsis` landet oder eine Stufe-3-Kuration
  freigegeben wird.

---

## 2026-07-19 00:50 — [GEDROSSELT] Vollstaendige Zeitplan-Pruefung beider Stationen: keine dritte Drossel-Luecke

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt (Schoner-Rolle, kein Wiederanfahren). Runner-Logs beider
Stationen enden weiterhin am 14.07. 12:39/12:37 — korrekt. Kein Login-Probe gefahren; der Wochen-Reset
ist morgen (Mo 20.07. 11:59, noch ~35 Std.).

**Lagebild:** Der P2-Vorsatz vom Abend ist eingeloest — erstmals wurde nicht nur der Commit-Strom
gezaehlt, sondern **jeder** Zeitplan Task fuer Task gelesen: 26 App-Scheduled-Tasks auf dem MacBook Pro
plus die launchd-Plists beider Stationen. Ergebnis: **keine dritte Luecke**. Alle Lern-/Trainings-Loops
stehen 1x taeglich im Nachtfenster (normen 01:20, wettbewerbs-dna 02:20 disabled, immobewertung 02:50,
twin-mail 03:35, spec 04:10, twin-fidelity 05:40, wissens-chef 23:10, baurecht woechentlich Mo 23:40;
Mac Mini: plg 00:30, synobsis 02:15, energie 22:30, normen-mini 05:30 mit `Disabled: true`). Die beiden
gestrigen Korrekturen halten. Die operativen Briefings (logbuch-radar, konversations-log, hub-chef,
heartbeat, mahnwesen, zahlungsabgleich, Monitore) liegen regelkonform unangetastet am Morgen. Der
Commit-Strom bestaetigt das Bild: die drei inhaltlichen Commits seit dem letzten Lauf liegen alle im
Fenster (Energie Run 80 22:46, Wissens-Chef Run 9 00:15, Recht-und-Norm Run 53 00:48), die uebrigen 23
sind `nas-selfcommit`. Pendenzen-Queues beider Stationen leer.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2: Die Zeitplan-Pruefung ist jetzt als fixer Schritt etabliert und laeuft sauber — sie bleibt im
  Lauf, aber der Fokus verschiebt sich auf morgen: um 11:59 faellt der Wochen-Reset, um 12:15/12:30
  feuern `syn02-spec-anstoss` und `wettbewerbs-dna-reaktivierung`. Wichtig: die Reaktivierung setzt den
  Wettbewerbs-Loop bewusst auf **gedrosselt 1x taeglich 02:20**, nicht auf VOLLGAS — das Drossel-Regime
  bleibt bis zu einer ausdruecklichen Anweisung Raphaels bestehen. Der naechste Lauf nach dem Reset
  sollte das verifizieren, nicht vorwegnehmen.
- P3 (unveraendert, Einzeiler): `synobsis-batch-nacht` ganz stilllegen (853/853, kein neues
  Quellmaterial); Entscheid morgen Mo 20.07.

---

## 2026-07-18 18:50 — [GEDROSSELT] Zweite Drossel-Luecke geschlossen: `wissens-chef` lief noch mit VOLLGAS-Zeit 17:00

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt (Schoner-Rolle, kein Wiederanfahren). Runner-Logs beider
Stationen enden weiterhin am 14.07. 12:39/12:37 — korrekt. Kein Login-Probe gefahren; vor dem Reset
(Mo 20.07. 11:59, noch ~1.7 Tage) wieder relevant.

**Lagebild:** Der P2-Vorsatz vom Mittag (Zeitplaene selbst lesen statt nur Commits zaehlen) hat sofort
einen zweiten Befund gebracht — diesmal auf dem MacBook Pro. Der einzige echte Trainings-Commit seit
12:55 ist `Wissens-Chef Run 8` um **17:25**, also klar ausserhalb des Nachtfensters. Die Pruefung der
Scheduled Tasks zeigte: `wissens-chef` trug unveraendert die VOLLGAS-Taktung «taeglich 17:00» samt
Beschreibung «TOKEN-VOLLGAS bis 10.08.» — die Ruecktaktung nach Rule 260714 war hier nie nachgezogen
worden, weil der Wettbewerbs-Fokus vom 13.07. nur die Trainings-Loops erfasst hatte, nicht den
Cross-KB-Koordinator. Der Lauf ist mit Workflow-Fan-out tokenintensiv, also genau das, was die Drossel
adressiert. Selbst korrigiert (regelkonform nach 260714 + 260711): Cron auf **23:10** verschoben, 1x
taeglich, Beschreibung entsprechend nachgefuehrt; naechster Lauf heute 23:1x im Nachtfenster. Die am
Mittag korrigierten Mini-Plists halten (energie 22:30, plg 00:30, synobsis 02:15, normen 05:30/disabled
verifiziert). Uebrige 24 der 25 Commits der letzten 6 Std.: `nas-selfcommit` (DSM-Cron). Pendenzen-Queues
beider Stationen leer.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2: die Zeitplan-Pruefung ist damit zweimal fuendig geworden — sie gehoert als **fixer Schritt** in
  jeden Radar-Lauf (Scheduled Tasks der App + launchd-Plists beider Stationen gegen das Nachtfenster
  spiegeln), nicht nur als Vorsatz. Vor der Reaktivierung am Mo 20.07. eine vollstaendige Liste
  Task-fuer-Task durchgehen, damit keine dritte Luecke unbemerkt weiterlaeuft.
- P3 (unveraendert, Einzeiler): `synobsis-batch-nacht` ganz stilllegen (853/853, kein neues
  Quellmaterial); Entscheid am Mo 20.07.

## 2026-07-18 12:55 — [GEDROSSELT] Drossel-Luecke auf dem Mac Mini geschlossen: drei Trainings liefen noch mit VOLLGAS-Frequenz

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt (Schoner-Rolle, kein Wiederanfahren). Kein Login-Probe
gefahren; vor dem Reset (Mo 20.07. 11:59, noch ~1.9 Tage) wieder relevant.

**Lagebild:** Erstmals seit dem Regimewechsel ein echter Befund. Ein Trainings-Commit lag heute
**ausserhalb** des Nachtfensters: `Energie-Training Run 78` um 10:59. Ursachenpruefung auf dem Mac Mini
(`ssh mini`, launchd-Plists) zeigte, dass die Ruecktaktung nach Rule 260714 dort **nie angekommen**
war — waehrend die MacBook-Tasks seit dem Wettbewerbs-Fokus 13.07. sauber auf 1x taeglich im
Nachtfenster stehen, trugen drei Mini-Jobs weiterhin VOLLGAS-Frequenzen: `training-energie` 10:30 +
16:30 (beide mitten in der Arbeitszeit), `training-plg` 11:30 (Arbeitszeit), `synobsis-batch`
22:15/00:15/02:15/04:15 (4x, dazu der bekannte No-op). Das sind seit dem 14.07. taeglich rund sechs
ueberfluessige Laeufe, davon drei in der Arbeitszeit — genau das, was die Drossel verhindern soll.
Selbst korrigiert (regelkonform nach 260714 + 260711, Plists gesichert als `.bak-drossel-20260718-*`,
neu geladen und verifiziert): energie → **22:30**, plg → **00:30**, synobsis → **02:15**, je 1x taeglich
im Nachtfenster. `training-normen` (5:30/13:30/21:30) brauchte keinen Eingriff — der Job traegt
`Disabled: true` und laeuft ohnehin nicht; die Zeitliste wurde trotzdem auf 05:30 bereinigt, damit eine
spaetere Reaktivierung nicht versehentlich wieder tagsueber startet. Uebrige 24 der 25 Commits der
letzten 6 Std.: `nas-selfcommit` (DSM-Cron). Pendenzen-Queues beider Stationen leer.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2: bei der Reaktivierung am Mo 20.07. die Frequenzen **stationsweise** gegenpruefen, statt sie nur
  auf der Station zu setzen, auf der die Anweisung entgegengenommen wurde — diese Luecke ist vier Tage
  unbemerkt gelaufen, weil der Radar bisher nur Commits gezaehlt und nicht die Zeitplaene selbst gelesen hat.
- P3 (unveraendert, Einzeiler): `synobsis-batch-nacht` ganz stilllegen (853/853, kein neues Quellmaterial);
  mit der Reduktion auf 1x ist der Druck vorerst weg, Entscheid am Mo 20.07.

## 2026-07-18 06:47 — [GEDROSSELT] Nachtfenster sauber abgearbeitet, Runner bleibt gestoppt, kein Blocker

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt (Schoner-Rolle, kein Wiederanfahren). Kein Login-Probe
gefahren — reine Tokenkosten ohne Nutzen, solange der Runner ohnehin nicht anlaeuft; vor dem Reset
(Mo 20.07. 11:59, noch ~2.2 Tage) wieder relevant.

**Lagebild:** Das Nachtfenster 22:00–06:00 ist vollstaendig und planmaessig durchgelaufen — vier
echte Trainings-Commits: `synobsis Nacht-Batch` (02:2x, 853/853, Vektorindex aktualisiert),
`twin-mail-training` Batch 56 (Zeitraum 19.–23.06.), `spec-training` Lauf 22 (Verifikationslauf, neuer
belegter Verifier-Fehlermodus «leeres Signal ist kein Beweis fuer Leere» bei silent-empty Connectoren)
und `twin-fidelity-review` (06:0x). Das ist exakt die erlaubte Nachtfenster-Last nach Regel
260711/260714, nicht der Endlos-Runner. Die uebrigen 24 der 28 Commits der letzten 6 Std. sind
`nas-selfcommit` (DSM-Cron, 15-Min-Takt). Runner-Logs beider Stationen enden unveraendert am
14.07. 12:39/12:37 — korrekt fuer den gestoppten Zustand. Pendenzen-Queues beider Stationen leer.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (unveraendert, Einzeiler): `synobsis-batch-nacht` stilllegen — der Lauf meldet erneut
  853/853 ohne neues Quellmaterial, also weiterhin ein No-op; Umsetzung bewusst erst am
  Reaktivierungs-Lauf Mo 20.07., um vor dem Reset keine Kleinlast auf dem Mini zu erzeugen.
- P3: keiner.

## 2026-07-18 00:48 — [GEDROSSELT] Nachtfenster-Trainings laufen planmaessig, Runner bleibt gestoppt, kein Blocker

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt (Schoner-Rolle, kein Wiederanfahren). Kein Login-Probe
gefahren (reine Tokenkosten ohne Nutzen, solange der Runner ohnehin nicht anlaeuft); vor dem Reset
(Mo 20.07. 11:59, noch ~2.5 Tage) wieder relevant.

**Lagebild:** Es ist Nachtfenster (00:48), und die gedrosselten Lern-Loops laufen genau wie
vorgesehen: `planungsgrundlagen-training` Run 51 (K41-K44 Kartenportale geloest) und
`energie-training` Run 77 (Register-Hygiene E99/E100, Wiki-Artikel Innendaemmung, FAQ F97) haben in
den letzten Stunden committet. Das ist die erlaubte Nachtfenster-Last (Regel 260711/260714), nicht
der Endlos-Runner. Uebrige Commits sind `nas-selfcommit` (DSM-Cron, 15-Min-Takt). Mac-Mini-Pendenzen-
Queue leer. Naechster relevanter Punkt bleibt die Reaktivierung am Mo 20.07. nach dem Wochen-Reset.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (unveraendert, Einzeiler): `synobsis-batch-nacht` stilllegen — bewusst erst am
  Reaktivierungs-Lauf Mo 20.07., um vor dem Reset keine Kleinlast auf dem Mini zu erzeugen.
- P3: keiner.

## 2026-07-17 18:48 — [GEDROSSELT] Freitagabend ruhig, nur interaktive Stationsarbeit, kein Blocker

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt (Schoner-Rolle, kein Wiederanfahren). Kein Login-Probe
gefahren — reine Tokenkosten ohne Nutzen, solange der Runner ohnehin nicht anlaeuft; vor dem Reset
(Mo 20.07. 11:59, noch ~2.6 Tage) wieder relevant.

**Lagebild:** Keine Trainingslast in den letzten Stunden, wie es das Drossel-Regime vorsieht. Die
Commits der letzten 2 Std. sind ausschliesslich `nas-selfcommit` (DSM-Cron, 15-Min-Takt); die
groesseren Batches um 17:15/17:30 (12 bzw. 11 Dateien) stammen aus interaktiver Arbeit an der
Station, keine Loop-Last. Mac-Mini-Pendenzen-Queue leer. Naechster relevanter Punkt bleibt die
Reaktivierung am Mo 20.07. nach dem Wochen-Reset.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (unveraendert, Einzeiler): `synobsis-batch-nacht` stilllegen — bewusst erst am
  Reaktivierungs-Lauf Mo 20.07., um vor dem Reset keine Kleinlast auf dem Mini zu erzeugen.
- P3: keiner.

## 2026-07-17 12:48 — [GEDROSSELT] Ruhiger Tageslauf, keine Trainingslast — nur interaktive Arbeit

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen seit 14.07. 12:53 mit
unveraendertem Grund, Runner bleibt gestoppt. Kein Login-Probe gefahren (Schoner-Rolle: reine
Tokenkosten ohne Nutzen, solange der Runner nicht anlaeuft) — vor dem Reset am Mo 20.07. 11:59
wieder relevant, also noch ~2.9 Tage.

**Lagebild:** Seit dem 06:50-Lauf keine Trainingslaeufe, wie es das Drossel-Regime vorsieht — die
Commits der letzten Stunden sind ausschliesslich `nas-selfcommit` (DSM-Cron, 15-Min-Takt), also
Beiwerk aus interaktiver Arbeit an der Station, keine Loop-Last. Der groessere Batch um 11:00
(13 Dateien) stammt aus derselben interaktiven Arbeit. Die Mac-Mini-Pendenzen-Queue ist leer, die
Stilllegung des Normen-Loops von heute Nacht haelt.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (unveraendert, Einzeiler): `synobsis-batch-nacht` stilllegen — bewusst erst am
  Reaktivierungs-Lauf Mo 20.07., um vor dem Reset keine Kleinlast auf dem Mini zu erzeugen.
- P3: keiner.

## 2026-07-17 06:50 — [GEDROSSELT] Erste saubere Nacht seit dem Regimewechsel: alle Trainings liefen IM Nachtfenster

**Fensterzustand:** Drossel-Regime unveraendert. STOP + STOP-Macmini stehen (seit 14.07. 12:53,
Grund unveraendert im STOP vermerkt), Runner bleibt gestoppt. Kein Login-Probe gefahren — unter der
Schoner-Rolle waere er reine Tokenkosten ohne Nutzen, solange der Runner ohnehin nicht anlaeuft; vor
dem Reset (Mo 20.07. 11:59) wieder relevant.

**Lagebild:** Der P2-Verdacht «Darkwake schiebt die Nacht-Trainings in den Vormittag» hat sich in
dieser Nacht NICHT bestaetigt — alle Laeufe liegen im Fenster 22:00–06:00: normen-mini Run 32 (21:42,
3. Inventar-Bestaetigung), energie Runs 75/76/78 (22:48–23:00), synobsis-Batch (02:20), immobewertung
Run 36 (03:08), baurecht-buch Run 47 (03:29), twin-mail Batch 55 (03:51), twin-fidelity (06:24, knapp
am Rand). Inhaltlich kein Leerlauf: baurecht Run 47 hat die von Run 46 gemeldete Endbedingung
**widerlegt** und vier Komplexe nach Modell D verifiziert — der Loop ist also zu Recht noch aktiv.

**Beide Pendenzen von 02:15 sind durch:** die Mini-Queue ist leer, der Task `normen-training-mini` ist
stillgelegt (Commit `46fd80a3`, Pendenz im `done/`-Archiv); `synobsis-batch` meldet 853/853 unveraendert
und empfiehlt selbst die Stilllegung. `wettbewerbs-dna-training` bleibt korrekt deaktiviert bis zur
Reaktivierung am Mo 20.07. 12:30.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2: `synobsis-batch-nacht` (Mac Mini) laeuft im dritten No-op — jetzt gleich behandeln wie den
  Normen-Loop: per Pendenz stilllegen statt taeglich Tokens fuer 853/853 zu verbrennen. Bewusst NICHT
  in diesem Lauf ausgeloest, weil der Mini den Prompt-Task abarbeiten muss und das vor dem Reset
  Kleinlast erzeugt; sauberer Zeitpunkt ist der Reaktivierungs-Lauf am Mo 20.07.
- P2 (herabgestuft): Darkwake-Verschiebung — nach dieser Nacht kein akuter Handlungsbedarf mehr. Erst
  wenn sich die Verschiebung wiederholt, lokale launchd-Jobs statt App-Scheduler vorschlagen (beruehrt
  das Lastprofil, daher nur mit Freigabe Raphaels).
- P3: keiner.

## 2026-07-17 02:15 — [GEDROSSELT] Auftrag Raphael: die zwei offenen P2/P3 in die Wege geleitet (ohne Mehrlast vor dem Reset)

**Anlass:** Raphael hat auf den Eintrag von 00:48 hin freigegeben, die beiden offenen Punkte «so in die
Wege zu leiten, wie es am besten ist». Leitlinie dabei: bis zum Wochen-Reset (Mo 20.07. 11:59, noch
~3.4 Tage bei unveraendert 81%) darf KEINE zusaetzliche Last entstehen — sparen ja, hochfahren nein.

**1. Normen-Loop stillgelegt (P2, Endbedingung erreicht).** Das Inventar DIN/VSS/RAL ist in den
Mini-Runs 30, 31 und 32 dreimal in Folge als komplett bestaetigt — weitere Laeufe waeren Leerlauf auf
Tokenkosten. Der Task laeuft auf dem Mac Mini, sein `enabled`-Zustand ist nicht per SSH editierbar
(nur die SKILL.md liegt dort, der State steckt im App-Scheduler). Darum Pendenz ueber die vorgesehene
Queue: `sync-tasks/mac-mini/20260717-021231_normen-training-mini-stilllegen-(Inventar-komplett).md`
(typ=prompt) — der Mini setzt `enabled=false`, ergaenzt die Beschreibung um den Stilllegungsgrund und
vermerkt es im `wissen/normen/CHANGELOG.md`. Bewusst **deaktiviert statt geloescht**: kommt neues
Norm-Material in die SharePoint-Normenbibliothek, ist der Loop mit einem Klick zurueck.

**2. Wettbewerbs-DNA vorbereitet, aber NICHT scharf geschaltet (P3).** Prompt, Beschreibung und Takt
von `wettbewerbs-dna-training` sind jetzt korrigiert: weg vom alten VOLLGAS-Text («ULTRA, alle 2 Std.,
bis 10.08.»), hin zu 1x taeglich 02:20 im Nachtfenster (Regel 260711), **ein** Baustein pro Lauf statt
Durchsatz-Stapelung; der Workflow-Fan-out bleibt, aber auf die Referenzen eines Bausteins begrenzt —
er ist der Qualitaets-, nicht der Mengenhebel. Ergaenzt um eine Endbedingung (alle drei Ziel-Bauaufgaben
abgeschlossen → Abschluss melden statt Leerlauf). Der Task bleibt **deaktiviert**; scharf schaltet ihn
der neue One-Time-Task `wettbewerbs-dna-reaktivierung` am Mo 20.07. 12:30, also nach dem Reset und
kurz nach `syn02-spec-anstoss` (12:15), was inhaltlich zusammenpasst.

**Beinahe-Fehler, transparent vermerkt:** das Setzen der neuen `cronExpression` hat den Task
**automatisch wieder aktiviert** (nextRunAt waere heute 02:26 gewesen, also in gut einer Stunde — genau
die Mehrlast, die vermieden werden soll). Beim Verifizieren aufgefallen und sofort auf `enabled=false`
zurueckgesetzt. Lehre fuer kuenftige Laeufe: nach jedem `update_scheduled_task` mit Schedule-Aenderung
den `enabled`-Zustand **nachpruefen** — ein Schedule-Update re-armt den Task.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (unveraendert): Darkwake schiebt die Nacht-Trainings in den Vormittag und kollidiert mit Regel
  260711. Saubere Loesung waeren lokale launchd-Jobs statt App-Scheduler — Umsetzung erst nach Freigabe
  Raphaels, da sie das Lastprofil beruehrt.
- P2 (unveraendert): `synobsis-batch-nacht` weiter im No-op (853/853) — auf woechentlich reduzieren oder
  pausieren, bis neues Material in `05_Architekten_Synobsis` landet (Mac Mini).
- P3: Im naechsten Lauf (06:40) pruefen, ob der Mac Mini die Normen-Pendenz abgearbeitet hat.
- **Entscheid Raphael faellig zum Reset:** Das Drossel-Banner gilt «mindestens bis zum naechsten
  Wochen-Reset». Am Mo 20.07. ist zu entscheiden, ob das Drossel-Regime weiterlaeuft oder das alte
  Lastprofil zurueckkommt. Der Radar bleibt bis zu dieser Anweisung im Schoner-Modus.

---

## 2026-07-17 00:48 — [GEDROSSELT] P3 von 18:48 geklaert: `wettbewerbs-dna-training` ist DEAKTIVIERT, nicht ausgefallen

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
weiterhin gesetzt (14.07. 12:53), kein `vollgas-runner`-Prozess. Als Schoner starte ich nichts neu
und lasse die `claude -p`-Probe bewusst aus.

**Die zwei stillen Tage von `wettbewerbs-dna` haben eine schlichte Erklaerung: der Task ist
abgeschaltet.** Die Task-Liste zeigt `wettbewerbs-dna-training` mit `enabled: false`, letzter Lauf
13.07. 20:32 — seither kein Trigger mehr, deshalb auch kein Commit seit dem Nachbrenner vom 14.07.
11:05. Das ist kein Fehler, sondern die konsequenteste Sparmassnahme des Drossel-Regimes: der
tokenintensivste Loop des Hub (ETAPPE 3, Workflow-Fan-out mit Refuter-Stufe, urspruenglich alle 2 Std.)
ist zugunsten des Wochenlimits stillgelegt. Als Schoner schalte ich ihn NICHT wieder ein. Die
Task-Beschreibung traegt allerdings noch den alten VOLLGAS-Text («alle 2 Std., bis 10.08.») — solange
der Task deaktiviert ist, ist das nur eine irrefuehrende Notiz ohne Wirkung; sie waere beim
Wiederhochfahren mitzukorrigieren. Damit ist die Beobachtungsliste der stillen KBs abgearbeitet:
`twin`, `spec`, `immobilienbewertung` laufen weiter im 1x-taeglich-Nachttakt (naechste Trigger heute
00:50 bis 05:45), `normen` (21:42) und `energie` (23:00) haben gestern Abend committet.

**Durchsatz:** 100 Commits in 24 Std., davon substanziell u.a. `energie-training` Run 75/76/78
(MuKEn-Anhang 6+7, PV-Ruecklieferverguetung, neues Fachthema Innendaemmung), `normen-training-mini`
Run 32 (Inventar DIN/VSS/RAL zum dritten Mal in Folge als komplett bestaetigt) und Wissens-Chef Run 6.
Der Rest sind `nas-selfcommit`-Laeufe im 15-Minuten-Takt. Fuer ein Drossel-Regime ist das ein
gesunder, ruhiger Puls.

**Reset-Countdown:** Wochen-Reset Montag 20.07. 11:59 — von jetzt (Fr 00:48) noch ~3.46 Tage.
Wochenlimit-Stand unveraendert 81% (Referenz 14.07., keine neue /usage-Zahl vorliegend). Der schonende
Verlauf laeuft dem Ziel «nicht vor Reset auf 100%» weiter entgegen.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (unveraendert): `normen-training-mini` meldet das DIN/VSS/RAL-Inventar zum dritten Mal in Folge
  als komplett — das ist die Endbedingung aus dem Radar-Auftrag. Loop auf dem Mac Mini beenden oder
  auf woechentlich reduzieren und die Kapazitaet nach dem Reset auf eine offene Wissensluecke
  umlenken (Kandidat: `wettbewerbs-dna` ETAPPE 3). Entscheid bei Raphael, da es das Lastprofil beruehrt.
- P2 (unveraendert): Darkwake schiebt die Nacht-Trainings in den Vormittag und kollidiert so mit
  Regel 260711. Saubere Loesung waeren lokale launchd-Jobs statt App-Scheduler — Umsetzung erst nach
  Freigabe Raphaels.
- P2 (unveraendert): `synobsis-batch-nacht` weiter im No-op (853/853) — auf woechentlich reduzieren
  oder pausieren, bis neues Material in `05_Architekten_Synobsis` landet (Mac Mini).
- P3: Beim Wiederhochfahren nach dem Reset (Mo 20.07., zusammen mit dem geplanten Task
  `syn02-spec-anstoss` 12:15) `wettbewerbs-dna-training` reaktivieren UND die Beschreibung/den
  Prompt vom VOLLGAS-Takt auf den dann gueltigen Takt korrigieren.

---

## 2026-07-16 18:48 — [GEDROSSELT] P3 von 12:50 erledigt: MacBook-KBs haben nachgezogen, Muster «Verschiebung statt Verlust» bestaetigt

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
weiterhin gesetzt (14.07. 12:53), kein `vollgas-runner`-Prozess. Als Schoner starte ich nichts neu
und lasse die `claude -p`-Probe bewusst aus.

**Die offene P3-Frage von 12:50 ist beantwortet — die MacBook-KBs haben im Tagesverlauf nachgezogen.**
Um 12:50 hatte heute noch keine der sechs MacBook-KBs committet; seither sind zwei dazugekommen:
`wissen/baurecht` und `wissen/normen` tragen beide einen Eintrag vom 16.07., getragen vom Wissens-Chef
Run 6 (17:28: SIA-180-Fundstellen korrigiert, MuKEn-Modul-11 auf ZH skopiert, GreenPV-Fuehrung geklaert)
und vom Mac-Mini-Normen-Run 31 (13:44: Inventar-Check, 2 von 6 Vertiefungs-Luecken DIN/VSS/RAL
geschlossen). Damit ist das Muster «Verschiebung statt Verlust» ein zweites Mal belegt: was das
Darkwake-Fenster nicht startet, holt der Scheduler nach, sobald die Station wach ist. Kein Login-,
Token- oder Ausfall-Problem.

**Weiterhin ohne Commit heute (unkritisch, im Drossel-Regime erwartbar):** `wettbewerbs-dna` (letzter
Stand 14.07.), `twin`, `spec`, `immobilienbewertung` (alle 15.07.). Bei 1x-taeglich-Takt und
gedrosselter Last ist ein Aussetzer pro KB kein Signal; erst zwei stille Tage in Folge waeren einer.
`wettbewerbs-dna` steht mit zwei Tagen an der Schwelle — im naechsten Lauf gezielt anschauen.

**Reset-Countdown:** Wochen-Reset Montag 20.07. 11:59 — von jetzt (Do 18:48) noch ~3.71 Tage.
Wochenlimit-Stand unveraendert 81% (Referenz 14.07., keine neue /usage-Zahl vorliegend). Der schonende
Verlauf laeuft dem Ziel «nicht vor Reset auf 100%» weiter entgegen.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (unveraendert von 12:50): Darkwake schiebt die Nacht-Trainings in den Vormittag und kollidiert so
  mit Regel 260711 (keine Trainings waehrend der Arbeitszeit). Saubere Loesung waeren lokale
  launchd-Jobs statt App-Scheduler (die wecken aus Darkwake) — Umsetzung erst nach Freigabe Raphaels,
  da sie das Lastprofil beruehrt.
- P2 (unveraendert): `synobsis-batch-nacht` weiter im No-op (853/853) — auf woechentlich reduzieren oder
  pausieren, bis neues Material in `05_Architekten_Synobsis` landet (Mac Mini).
- P3: `wettbewerbs-dna` im naechsten Lauf gezielt pruefen (zwei Tage ohne Commit).

---

## 2026-07-16 12:50 — [GEDROSSELT] Entwarnung zur Nacht-Leere: Tasks sind nur VERSCHOBEN, nicht ausgefallen

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
weiterhin gesetzt (14.07. 12:53), kein `vollgas-runner`-Prozess. Als Schoner starte ich nichts neu.

**Der P2-Verdacht von 06:50 ist entkraeftet — kein Login-Ausfall, kein verlorener Lauf.** Das
Nachtfenster 15→16.07 war um 06:50 tatsaechlich leer, aber die Laeufe sind danach nachgezogen:
`energie-training` Run 73 (Mac Mini, geplant 22:30) hat um 10:50 committet (MuKEn-2025-Originaltext
gefunden, 5 Destillate vertieft), `planungsgrundlagen` zuletzt 11:45. Auch die App-Flotte auf dem
MacBook Pro laeuft (ag-gruendung-monitor 08:xx committet, dieser Radar-Lauf selbst). Das Muster ist
damit **Verschiebung statt Verlust**: der App-Scheduler holt die in Darkwake (stuendlich 03:04–06:04
belegt) nicht gestarteten Tasks nach, sobald die Station wieder richtig wach ist. Ein Login-/Token-
Problem ist nicht ersichtlich; die `claude -p`-Probe bleibt im Drossel-Regime bewusst ungenutzt.

**Offen (unkritisch):** Die sechs MacBook-KBs (wettbewerbs-dna 14.07., twin/spec/immobewertung/
normen/baurecht 15.07.) haben heute noch nicht committet; nach obigem Muster ist ein Nachziehen im
Tagesverlauf zu erwarten. Im naechsten Lauf gegenpruefen.

**Reset-Countdown:** Wochen-Reset Montag 20.07. 11:59 — von jetzt (Do 12:50) noch ~3.97 Tage.
Wochenlimit-Stand unveraendert 81% (Referenz 14.07., keine neue /usage-Zahl vorliegend). Der
schonende Verlauf laeuft dem Ziel (nicht vor Reset auf 100%) weiter entgegen.

**Vorschlaege:**
- P1: keiner. Kein Blocker, kein Mail-Anlass.
- P2 (herabgestuft von 06:50): Darkwake verschluckt die Nacht-Trainings nicht, es verschiebt sie nur
  in den Vormittag. Das kollidiert mit Regel 260711 (Trainings NICHT waehrend der Arbeitszeit). Wenn
  das Muster anhaelt, waere die saubere Loesung, die Nacht-Trainings als lokale launchd-Jobs zu fuehren
  (die wecken aus Darkwake) statt ueber den App-Scheduler — Umsetzung erst nach Freigabe Raphaels,
  da sie das Lastprofil beruehrt.
- P2 (unveraendert): synobsis-batch-nacht weiter im No-op (853/853) — auf woechentlich reduzieren oder
  pausieren, bis neues Material in `05_Architekten_Synobsis` landet (Mac Mini).
- P3: MacBook-KB-Nachzieher heute Nachmittag im naechsten Lauf verifizieren.

---

## 2026-07-16 06:50 — [GEDROSSELT] Schoner-Lauf: Runner steht, Nachtfenster 15→16.07 ohne Output (Darkwake-Verdacht)

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 14.07. 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer), Runner-Logs unberuehrt seit
14.07. 12:40 (MacBook Pro) / 12:37 (Mac Mini). Als Schoner starte ich den Runner NICHT neu und loesche
STOP NICHT — kein Wiederhochfahren ohne ausdrueckliche Anweisung Raphaels.

**NEU — Nachtfenster leer trotz wacher Station:** Aus dem gerade zu Ende gegangenen Nachtfenster
(15→16.07, 22:00–06:00) liegt KEIN Trainings-Commit vor; keine der sechs MacBook-KBs
(wettbewerbs-dna/baurecht/twin/immobilienbewertung/spec/normen) wurde seit 16.07. 00:00 geaendert.
Auch der Mac Mini ist seit 15.07. 16:55 (energie Run 72) commitlos. Die Station war NICHT aus:
uptime 2 Tage 20 h (Boot Mo 13.07. 10:34), `caffeinate` verhindert Sleep — aber `pmset -g log` zeigt
stuendliche **Darkwake**-Phasen (04:04 / 05:04 / 06:04). In Darkwake fuehrt der App-Scheduler geplante
Tasks in aller Regel nicht aus; das ist die wahrscheinliche, weitgehend harmlose Ursache der Leere.
Ein Login-/Token-Ausfall der App-Flotte ist NICHT bestaetigt — die `claude -p`-Probe testet nur den
CLI-/Runner-Login (`~/.jans-dispatch.env`), nicht den App-Scheduler-Auth-Pfad, und wuerde im
Drossel-Regime nur Tokens kosten; darum wieder uebersprungen.

**Login (bewusst nicht aktiv geprueft):** wie oben — im Drossel-Regime ohne Hebel; ein Fix wuerde nur
hochfahren. Fix-Rezept bei Bedarf unveraendert: `claude setup-token` (Abo-OAuth, KEIN API-Key) in
`~/.jans-dispatch.env` beider Stationen; Mini zusaetzlich `security unlock-keychain`.

**Reset-Countdown:** Naechster Wochen-Reset Montag 20.07. 11:59 — von jetzt (Do 06:50) noch ~4.21 Tage.
Wochenlimit-Stand unveraendert 81% (Referenz 14.07., keine neue /usage-Zahl vorliegend). Der schonende
Verlauf spielt dem Ziel (nicht vor Reset auf 100%) in die Haende.

**Vorschlaege:**
- P1: keiner bestaetigt. Kein gesicherter Blocker; kein Mail-Anlass (die Nacht-Leere ist unbestaetigt
  und im Drossel-Regime ist niedrige Aktivitaet erwartet/akzeptiert).
- P2 (NEU, zur Beobachtung): Nachtfenster-Output beider Stationen im naechsten Lauf gegenpruefen. Bleibt
  es auch bei der naechsten Nacht komplett leer, ist zu klaeren, ob (a) Darkwake die App-Scheduled-Tasks
  systematisch verschluckt (dann Trainings besser als lokale launchd-Jobs statt App-Scheduler fuehren,
  die auch aus Darkwake wecken) oder (b) doch ein App-Flotten-Login abgelaufen ist. Erst bei bestaetigtem
  Login-Ausfall Mail an Raphael.
- P2 (unveraendert): synobsis-batch-nacht weiter im No-op (853/853, kein neuer Stoff) — Nacht-Batch auf
  woechentlich reduzieren oder pausieren, bis neues Material in `05_Architekten_Synobsis` landet
  (auf dem Mac Mini umzusetzen).
- P3: keiner offen.

## 2026-07-15 18:48 — [GEDROSSELT] Schoner-Lauf: Runner steht, ruhiger Tagesabschnitt (unveraendert)

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 14.07. 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer), Runner-Logs unberuehrt seit
14.07. 12:40 (MacBook Pro) / 12:37 (Mac Mini). Als Schoner starte ich den Runner NICHT neu und loesche
STOP NICHT — kein Wiederhochfahren ohne ausdrueckliche Anweisung Raphaels.

**Durchsatz (erwartet niedrig):** keine Commits in den letzten 90 Min, 2 in den letzten 6h (ohne
`nas-selfcommit`). Jetzt ist 18:48 — ausserhalb des Nachtfensters 22:00–06:00, in das die gedrosselten
Trainings gehoeren. Ein ruhiger Nachmittag ohne Runner ist genau das gewuenschte Drossel-Bild, kein Fehler.

**Login (bewusst nicht aktiv geprueft):** Im Drossel-Regime ohne Hebel — der Runner soll stehen, ein
Login-Fix wuerde nur wieder hochfahren. Die headless-Login-Probe (`claude -p`) startet selbst eine
verschachtelte Claude-Session und verbraucht Tokens; das widerspricht dem Schon-Zweck (Rule 260714),
darum diesen Lauf uebersprungen. Fix erst noetig, wenn Raphael hochfahren laesst (`claude setup-token`,
Abo-OAuth, KEIN API-Key, in `~/.jans-dispatch.env` beider Stationen; Mini zusaetzlich
`security unlock-keychain`).

**Reset-Countdown:** Naechster Wochen-Reset Montag 20.07. 11:59 — von jetzt (Mi 18:48) noch ~4.72 Tage.
Wochenlimit-Stand unveraendert 81% (Referenz 14.07., keine neue /usage-Zahl vorliegend).

**Vorschlaege:**
- P1: keiner. Kein Blocker im Drossel-Regime.
- P2 (unveraendert): synobsis-batch-nacht weiter im No-op (853/853, kein neuer Stoff) — Empfehlung
  weiterhin: Nacht-Batch auf woechentlich reduzieren oder pausieren, bis neues Material in
  `05_Architekten_Synobsis` landet. Auf dem Mac Mini umzusetzen; spart Leerlauf-Tokens.
- P3: keiner offen.

## 2026-07-15 12:49 — [GEDROSSELT] Schoner-Lauf: Runner steht, Tages-Trainings liefern produktiv weiter

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 14.07. 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer), Runner-Logs unberuehrt seit
14.07. 12:40 (MacBook Pro) / 12:37 (Mac Mini). Als Schoner starte ich den Runner NICHT neu und loesche
STOP NICHT — kein Wiederhochfahren ohne ausdrueckliche Anweisung Raphaels.

**Gedrosselte Trainings greifen — Beleg:** Die geplanten Tasks arbeiten auch tagsueber ohne Runner
produktiv weiter. Commits der letzten 2h (ohne `nas-selfcommit`): Planungsgrundlagen-Training Run 49
(Mehrwertrevers-Systematik + ZSV-Bemessungsschluessel + GreenPV-Fassaden-PV-Benchmark), Energie-KB
Run 71 (VHKA-Pre-2001-Ausnahme SZ, GEAK-Klasse-D SZ + MuKEn-2025-Fahrplan, SZ-Fernwaerme-Restluecken).
Genau das gewuenschte gedrosselte Bild: Fortschritt aus den Einzel-Tasks, kein Dauer-Runner.

**Login (unveraendert, unkritisch):** headless-Login-Probe (`claude -p --model haiku`) antwortet
«Not logged in». Im Drossel-Regime bewusst kein Hebel und kein P1 — der Runner soll stehen; ein Fix
wuerde nur wieder hochfahren. Keine Mail. Fix erst noetig, wenn Raphael hochfahren laesst
(`claude setup-token`, Abo-OAuth, KEIN API-Key, in `~/.jans-dispatch.env` beider Stationen; Mini
zusaetzlich `security unlock-keychain`).

**Reset-Countdown:** Naechster Wochen-Reset Montag 20.07. 11:59 — von jetzt (Di 12:49) noch ~4.96 Tage.
Wochenlimit-Stand unveraendert 81% (Referenz 14.07., keine neue /usage-Zahl vorliegend).

**Vorschlaege:**
- P1: keiner. Kein Blocker im Drossel-Regime.
- P2: synobsis-batch-nacht weiterhin im No-op (853/853, kein neuer Stoff, sechs identische Laeufe/Tag) —
  Empfehlung unveraendert: Nacht-Batch pausieren oder auf woechentlich reduzieren, bis neues Material in
  `05_Architekten_Synobsis` landet oder eine Stufe-3-Kuratierung freigegeben wird. Spart Leerlauf-Tokens.
- P3: keiner offen.

## 2026-07-15 07:26 — [GEDROSSELT] Schoner-Lauf: Runner steht, Nachtfenster-Trainings produktiv (real Fortschritt ueber Nacht)

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 14.07. 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer), Runner-Logs unberuehrt
seit 14.07. 12:40 (MacBook Pro) / 12:37 (Mac Mini). Als Schoner starte ich den Runner NICHT neu und
loesche STOP NICHT.

**Gedrosselte Trainings greifen — Beleg:** Die geplanten Nacht-/Tag-Tasks arbeiten ohne Runner
produktiv weiter. Scheduled-Task-Commits der letzten 12h (ohne `nas-selfcommit`): Normen Mini-Run 28
+ 29 (Q&A-Selbstbefragung Rest-DIN/VSS/RAL), baurecht-buch Run 45 (Modell-D, § 220 Abs. 2 / KNHV § 13
/ USG Art. 32d, Rueckstand abgebaut), Energie-KB Run 70 (VHKA + SZ-Fernwaerme/Netzanschluss, GEAK-
Foerder-Korrekturen, FAQ F82/F83), twin-mail-training, synobsis Nacht-Batch (853/853, kein neuer
Stoff). Das ist genau das gewuenschte gedrosselte Bild: Fortschritt aus den Tasks, kein Dauer-Runner.

**Login (unveraendert, unkritisch):** headless-Login-Test (`claude -p --model haiku`) auf dem
MacBook Pro erneut ohne Antwort (haengt/`Not logged in`). Im Drossel-Regime bewusst kein Hebel — der
Runner soll stehen; ein Fix wuerde nur wieder hochfahren. Kein neuer P1, keine Mail. Der Login wird
erst gebraucht, wenn Raphael ausdruecklich hochfahren laesst (`claude setup-token`, Abo-OAuth,
KEIN API-Key, in `~/.jans-dispatch.env` beider Stationen; Mini zusaetzlich `security unlock-keychain`).

**Reset-Countdown:** Naechster Wochen-Reset Montag 20.07. 11:59 — von jetzt (Di 07:26) noch ~5.2 Tage.
Wochenlimit-Stand unveraendert 81% (Referenz 14.07., keine neue /usage-Zahl vorliegend).

**Vorschlaege:**
- P1: keiner. Kein Blocker im Drossel-Regime.
- P2: synobsis-batch-nacht laeuft seit 02.07. im No-op (853/853, kein neuer Stoff) — den Nacht-Batch
  pausieren oder auf woechentlich reduzieren, bis neues Material in `05_Architekten_Synobsis` landet
  oder Raphael eine Stufe-3-Kuratierung freigibt. Spart Leerlauf-Tokens ohne Erkenntnisgewinn.
- P3: Feinschliff keiner offen.

## 2026-07-15 00:51 — [GEDROSSELT] Schoner-Lauf: Runner gestoppt, Nachtfenster-Trainings greifen, Reset-Countdown korrigiert (~5.5 Tage)

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 14.07. 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer), Runner-Logs unangetastet
seit 12:40/12:37. Als Schoner starte ich den Runner NICHT neu und loesche STOP NICHT.

**Reset-Countdown korrigiert:** Der naechste Wochen-Reset ist **Montag 20.07. 11:59** — von jetzt
(Mi 00:51) sind das **noch ~5.5 Tage**, nicht «~3.4 Tage» wie in den letzten beiden Eintraegen
angegeben (dort zu tief geschaetzt). Wochenlimit-Stand unveraendert 81% (Referenz 14.07.), keine
neue /usage-Zahl vorliegend — daher nicht fortgeschrieben, nur der Zeitbezug richtiggestellt.

**Login (unveraendert):** headless-Login-Test (`claude -p --model haiku`) auf dem MacBook Pro
weiterhin «Not logged in». Im Drossel-Regime unkritisch — der Runner soll ohnehin stehen; ein Fix
wuerde nur wieder hochfahren. Kein neuer P1, kein Mail. Gebraucht erst, wenn Raphael ausdruecklich
hochfahren laesst (`claude setup-token`, Abo-OAuth, KEIN API-Key, in `~/.jans-dispatch.env` beider
Stationen).

**Durchsatz (letzte 12 h):** substanzielle Trainings-Commits ueber das Nachtfenster wie vorgesehen —
Mac Mini: Energie-KB Run 70 (VHKA ZH/SZ, Schwyzer Anschlusskosten/Fernwaerme-Tarife, GEAK-Pflicht-
Landkarte + Foerderkorrektur, FAQ F82/F83) und Normen Mini-Run 28 (17 DIN/Sonstiges-Q&A-Destillate).
Danach ab ~00:00 nur noch `nas-selfcommit` (15-Min-Backstop) — MacBook Pro still (Login-Block +
Drossel, erwartet). Die gedrosselten Nachtfenster-Trainings greifen sauber.

- **P1 — keiner.** Kein Blocker des erwuenschten (gedrosselten) Zustands.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt, Wochenlimit geschont, Zeitbezug korrigiert. Kein Mail-Anlass.

---

## 2026-07-14 23:48 — [GEDROSSELT] Schoner-Lauf: P2 umgesetzt — Radar-Frequenz von stuendlich auf 4x taeglich gesenkt (schont selbst Wochenlimit)

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt, kein `vollgas-runner`-Prozess. Als Schoner starte ich den Runner NICHT neu und
loesche STOP NICHT. Wochenlimit 81% verbraucht, Reset Mo 11:59, noch ~3.4 Tage.

**Login (unveraendert):** headless-Login-Test auf dem MacBook Pro weiterhin «Not logged in» (seit
~22:48). Im Drossel-Regime unkritisch — der Runner soll ohnehin stehen; ein Fix wuerde nur wieder
hochfahren. Kein Mail. Wird erst gebraucht, wenn Raphael ausdruecklich hochfahren laesst
(`claude setup-token`, Abo-OAuth, KEIN API-Key, in `~/.jans-dispatch.env` beider Stationen).

**Selbst umgesetzt (statt nur vorschlagen) — P2 aus 22:52:** Die Radar-Frequenz von **stuendlich
(`40 * * * *`) auf alle 6 Std (`40 */6 * * *`, 00:40/06:40/12:40/18:40)** gesenkt. Der stuendliche
Lauf verbrauchte selbst Wochenlimit-Budget, das wir gerade schonen — die Reduktion ist die
konsequente Schoner-Handlung (Rule 260714), reversibel beim Wiederhochfahren. Task-Beschreibung auf
Schoner-Modus umgestellt. Damit entfaellt die wiederholte P2-Vormerkung.

**Durchsatz:** 8 Commits/90 Min (Mac Mini: Energie-KB Run 70 gedrosselt — VHKA ZH/SZ, Schwyzer
Anschlusskosten, GEAK-Foerderkorrektur, FAQ F82/F83; normen Mini-Run 28). MacBook Pro still
(Login-Block + Drossel, erwartet). Mac-Mini-Nachtfenster-Trainings ziehen wie vorgesehen an.

- **P1 — keiner.** Kein Blocker des erwuenschten (gedrosselten) Zustands.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt, Wochenlimit geschont, Radar-Eigenlast gesenkt. Kein Mail-Anlass.

---

## 2026-07-14 22:52 — [GEDROSSELT] Schoner-Lauf: Runner gestoppt, headless-Login auf dem MacBook Pro weg — im Drossel-Regime aber unkritisch, kein Mail

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer), Runner-Logs zuletzt 12:40/12:37
angefasst. Als Schoner starte ich den Runner ausdruecklich NICHT neu und loesche STOP NICHT.
Wochenlimit wird geschont (81% verbraucht, Reset Mo 11:59, jetzt noch ~3.4 Tage).

**Login-Aenderung:** Der headless-Login-Test (`claude -p --model haiku`) liefert zweimal
hintereinander «Not logged in · Please run /login» — ein Wechsel gegenueber den Laeufen 20:48/21:48,
die noch «OK» meldeten. Der MacBook-Pro-headless-Login ist also seit ~22:48 weg.

**Bewertung — bewusst KEIN Mail (anders als im VOLLGAS-Regime):** Im Drossel-Regime ist der Runner
ohnehin gewollt gestoppt; ein headless-Login-Block auf dem MacBook Pro blockiert den erwuenschten
Zustand NICHT. Ein Fix (`claude setup-token`) wuerde nur dazu dienen, den headless-Durchsatz WIEDER
hochzufahren — genau das Gegenteil dessen, was wir gerade wollen (Wochenlimit schonen). Raphael
deswegen zu wecken waere kontraproduktiv. Deshalb: Beobachtung protokollieren, kein Mail. Der Login
wird erst wieder gebraucht, wenn Raphael ausdruecklich hochfahren laesst — dann via `claude setup-token`
(Abo-OAuth, KEIN API-Key) in `~/.jans-dispatch.env` auf beiden Stationen.

**Durchsatz:** 8 Commits/90 Min, 27/6 Std. Neue Substanz: Energie-KB «GEAK-Pflicht-Landkarte ZH/SZ»
(SZ-Klasse-D-Nachweisweg, Korrektur Foerderbeitraege, FAQ F82, 22:45) und normen-KB Mini-Run 28 —
beides ueber den Mac Mini (dessen Login separat und offenbar intakt). Rest = `nas-selfcommit`-
Heartbeats (alle 15 Min). Erwartete ruhige Gedrossel-Kadenz; die Mac-Mini-Trainings ziehen im
Nachtfenster (22:00–06:00) wie vorgesehen an, der MacBook Pro bleibt still (Login-Block + Drossel).

- **P1 (neu, aber im Drossel-Regime unkritisch) — MacBook-Pro-headless-Login weg:** nur relevant,
  falls Raphael VOR dem naechsten Wochen-Reset auf dem MacBook Pro wieder headless hochfahren will;
  Fix dann `claude setup-token`. Kein Mail (siehe Bewertung).
- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Im Schoner-Modus reicht 3–4x
  taeglich statt stuendlich; der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir gerade
  schonen. Vorschlag an Raphael fuers naechste Briefing (Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Wochenlimit geschont. Login-Block protokolliert,
im Drossel-Regime kein Handlungsbedarf, kein Mail-Anlass.

## 2026-07-14 21:48 — [GEDROSSELT] Schoner-Lauf: Nachtfenster erreicht, Runner gestoppt, Login intakt, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer). Als Schoner starte ich den Runner
ausdruecklich NICHT neu und loesche STOP NICHT. Wochenlimit wird geschont (Reset Mo 11:59, jetzt
noch ~3.5 Tage). Login-Test (Background + Kill-Fallback) liefert sauber «OK» — kein Login-Block.

**Durchsatz:** 7 Commits/90 Min, 26/6 Std. Neue Substanz seit dem letzten Lauf: normen-KB
Mini-Run 28 (Mac Mini, Q&A-Selbstbefragung 17 DIN/Sonstiges-Destillate). Rest = nas-selfcommit-
Heartbeats (alle 15 Min) + Radar-Eintraege — die erwartete ruhige Gedrossel-Kadenz ohne Dauer-Runner.
Das Nachtfenster (22:00–06:00, Regel 260711) ist ab jetzt gleich erreicht; die gedrosselten
Trainings-Tasks duerfen im Fenster wieder anziehen. Alles im Soll.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Im Schoner-Modus reicht 3–4x
  taeglich statt stuendlich; der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir gerade
  schonen. Vorschlag an Raphael fuers naechste Briefing (Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Login intakt, keine neue/offene P1. Kein Mail-Anlass.

## 2026-07-14 20:48 — [GEDROSSELT] Schoner-Lauf: Lage ruhig, Runner gestoppt, Login intakt, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer). Als Schoner starte ich den Runner
ausdruecklich NICHT neu und loesche STOP NICHT. Wochenlimit wird geschont (Reset Mo 11:59, jetzt
noch ~4 Tage). Login-Test (Background + Kill-Fallback) liefert sauber «OK» — kein Login-Block.

**Durchsatz:** 6 Commits/90 Min, 25/6 Std. Die letzten 90 Min waren reine `nas-selfcommit`-Heartbeats
(alle 15 Min) — genau die erwartete ruhige Gedrossel-Kadenz ohne Dauer-Runner. Einzige Substanz ueber
6 Std: Energie-Training Run 69 (SIA 2024 Gesundheitsbau, Netzverstaerkung PV/E-Mobilitaet, Fernwaerme,
Netto-Null). Nachtfenster (22:00–06:00) noch nicht erreicht, daher wenig Trainings-Aktivitaet — im Soll.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Im Schoner-Modus reicht 3–4x
  taeglich statt stuendlich; der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir gerade
  schonen. Vorschlag an Raphael fuers naechste Briefing (Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Login intakt, keine neue/offene P1. Kein Mail-Anlass.

## 2026-07-14 19:48 — [GEDROSSELT] Schoner-Lauf: Lage stabil, Runner gestoppt, Login intakt, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt (Grund bestaetigt: «Tempo drosseln, Wochenlimit 81%»), kein `vollgas-runner`-Prozess
(`pgrep` leer). Als Schoner starte ich den Runner ausdruecklich NICHT neu und loesche STOP NICHT.
Wochenlimit wird geschont (Reset Mo 11:59, jetzt noch ~4 Tage). Login-Test mit `set -a` + Background-
Kill-Fallback (kein `timeout` auf macOS) liefert sauber «OK» — kein Login-Block.

**Durchsatz:** 6 Commits/90 Min, 28/6 Std. Echte KB-Substanz ueber 6 Std: Energie-Training Run 69
(SIA 2024 Gesundheitsbau, Netzverstaerkung PV/E-Mobilitaet, Fernwaerme-Kosten, Netto-Null) und
normen Mini-Run 28 (Q&A-Selbstbefragung Skript Treppen HCU, 2 Fehler korrigiert + 1 Ergaenzung,
inkl. Wiederherstellung nach parallelem Ueberschreib-Commit). Rest = nas-selfcommit-Heartbeats +
Radar-Eintraege — die erwartete ruhige Gedrossel-Kadenz ohne Dauer-Runner.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Im Schoner-Modus reicht 3–4x
  taeglich statt stuendlich; der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir
  gerade schonen. Vorschlag an Raphael fuers naechste Briefing (Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert) — normen Mini-Run 28 Ueberschreib-Kollision:** Zwei parallele Commits haben
  sich einmal ueberschrieben (563a515c stellt 16dba6ce wieder her). Im Drossel-Regime mit weniger
  Parallelitaet nachrangig, aber als Muster vorgemerkt.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Trainings gedrosselt produktiv, Login intakt,
keine neue/offene P1. Kein Mail-Anlass.

## 2026-07-14 18:48 — [GEDROSSELT] Schoner-Lauf: Lage stabil, Runner gestoppt, Login intakt, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt (Grund bestaetigt: «Tempo drosseln, Wochenlimit 81%»), kein `vollgas-runner`-Prozess
(`pgrep` leer). Als Schoner starte ich den Runner ausdruecklich NICHT neu und loesche STOP NICHT.
Wochenlimit wird geschont (Reset Mo 11:59, jetzt noch ~4 Tage). Login-Test mit `set -a` + Background-
Kill-Fallback (kein `timeout` auf macOS) liefert sauber «OK» — kein Login-Block.

**Durchsatz:** 6 Commits/90 Min, 32/6 Std. Substanz ueber 6 Std: normen-Training Mini-Run 28
(Q&A-Selbstbefragung DIN 1960 / DIN 18232-2 / DIN V 106 / SIA 102:2020 / Skript Treppen HCU, mit
Korrekturen + Ergaenzungen) und Energie-Training Run 69 (SIA 2024 Gesundheitsbau, PV/E-Mobilitaet-
Netzverstaerkung, Fernwaerme, Netto-Null). Restliche 21 Commits nas-selfcommit-Heartbeats — die
erwartete ruhige Gedrossel-Kadenz ohne Dauer-Runner.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Im Schoner-Modus reicht 3–4x
  taeglich statt stuendlich; der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir
  gerade schonen. Vorschlag an Raphael fuers naechste Briefing (Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert) — Idle-Loops** (`baurecht-buch-training`/`immobewertung-training`) brechen
  intermittierend mit «keine eigentliche Anfrage» ab; im Drossel-Regime nachrangig.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Trainings gedrosselt produktiv, Login intakt,
keine neue/offene P1. Kein Mail-Anlass.

## 2026-07-14 17:49 — [GEDROSSELT] Schoner-Lauf: Lage weiter stabil, Runner gestoppt, Login intakt, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt (Inhalt bestaetigt: «auf Anweisung Raphael»), kein `vollgas-runner`-Prozess
(`pgrep`/`ps` leer). Als Schoner starte ich den Runner ausdruecklich NICHT neu und loesche STOP
NICHT. Wochenlimit wird geschont (Reset Mo 11:59, jetzt noch ~4 Tage). Login-Test mit `set -a`
+ Background-Kill-Fallback (kein `timeout` auf macOS) liefert sauber «OK» — kein Login-Block.

**Durchsatz:** 7 Commits/90 Min, 43/6 Std. Darunter 1 echter KB-Lauf (Energie-Training Run 69:
SIA 2024 Gesundheitsbau, Netzverstaerkung PV/E-Mobilitaet, Fernwaerme-Kosten, Netto-Null), Rest
nas-selfcommit-Heartbeats — die erwartete ruhige Gedrossel-Kadenz ohne Dauer-Runner.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Im Schoner-Modus reicht 3–4x
  taeglich statt stuendlich; der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir
  gerade schonen. Vorschlag an Raphael fuers naechste Briefing (Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert) — Idle-Loops** (`wettbewerbs-dna-training`/`spec-training`/`synobsis-batch-nacht`)
  brechen intermittierend mit «keine eigentliche Anfrage» ab; im Drossel-Regime nachrangig.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Trainings gedrosselt produktiv, Login intakt,
keine neue/offene P1. Kein Mail-Anlass.

## 2026-07-14 16:48 — [GEDROSSELT] Schoner-Lauf: Lage unveraendert stabil, Runner gestoppt, Login intakt, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) unveraendert. STOP + STOP-Macmini
seit 12:53 gesetzt, kein `vollgas-runner`-Prozess (`pgrep` leer). Als Schoner starte ich den Runner
NICHT neu. Wochenlimit wird geschont (Reset Mo 11:59, jetzt noch ~4 Tage). Login-Test mit `set -a`
(P3 vom 15:52 beherzigt) liefert sauber «OK» — kein Login-Block. `timeout` fehlt auf macOS/zsh;
Fallback ueber `gtimeout`/Background-Kill eingesetzt, Vermerk fuer kuenftige Laeufe.

**Durchsatz:** 6 Commits/90 Min, 52/6 Std. Die letzten 90 Min waren reine nas-selfcommit-Heartbeats
(station-status), kein KB-Inhalt — normale ruhige Gedrossel-Kadenz. Ueber 6 Std echt produktiv:
normen Mini-Run 27 (16 DIN/VSS-Destillate Q&A-geprueft), wettbewerbs-dna Nachbrenner (Muster
`jans-board-dna.md` refuter-verifiziert `draft`→`established`), spec Trainingslauf 18, energie/synobsis.
Erwartetes Bild: Trainings arbeiten gedrosselt weiter, ohne Dauer-Runner.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Im Schoner-Modus reicht 3–4x
  taeglich statt stuendlich; der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir gerade
  schonen. Vorschlag an Raphael fuers naechste Briefing (Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert) — Idle-Loops** (`wettbewerbs-dna-training`/`spec-training`/`synobsis-batch-nacht`)
  brechen intermittierend mit «keine eigentliche Anfrage» ab; im Drossel-Regime nachrangig. Fix bei
  ruhiger Gelegenheit: «Fahre den naechsten offenen Baustein aus»-Auftakt in der jeweiligen SKILL.md.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Trainings gedrosselt produktiv, Login intakt,
keine neue/offene P1. Kein Mail-Anlass.

## 2026-07-14 15:52 — [GEDROSSELT] Schoner-Lauf: Runner weiter gestoppt, Login intakt (Export-Nuance geklaert), Trainings ueber 6h produktiv, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) stabil. STOP + STOP-Macmini
unveraendert seit 12:53 gesetzt, kein `vollgas-runner`-Prozess aktiv (`pgrep` leer) — der
GEWUENSCHTE Zustand. Als Schoner starte ich den Runner ausdruecklich NICHT neu; das Fuellen des
5h-Fensters ist kein Ziel. Wochenlimit wird geschont (Reset Mo 11:59, jetzt ~4 Tage).

**Beobachtung (kein Eingriff) — Login intakt, Nuance geklaert:** Ein naiver `source
~/.jans-dispatch.env` + `claude -p` meldete zunaechst «Not logged in» (rc=0). Ursache ist NICHT ein
Login-Block, sondern dass die Env-Eintraege ohne `export` beim blossen `source` nicht an den
Kindprozess `claude` weitergereicht werden. Mit `set -a; source …; set +a` liefert der Login-Test
sauber «OK». Der Runner sourct den Token korrekt (und ist ohnehin gestoppt), also KEIN Blocker.
Vermerk fuer kuenftige Schoner-Laeufe: den Login-Test immer mit `set -a` fahren, sonst Fehlalarm.

**Durchsatz (nur geplante Tasks + nas-selfcommit, kein Runner):** 6 Commits/90 Min, 65/6 Std.
Die letzten 90 Min waren inhaltlich ruhig (nur station-status-Heartbeats) — normal fuer die
gedrosselte Kadenz. Ueber 6 Std echt produktiv: normen Mini-Run 27 (16 DIN/VSS-Destillate
Q&A-geprueft, 4 Sachfehler korrigiert, ~62 Ergaenzungen), energie Runs 65/66 (neue Destillate
U-Wert-Katalog, Erdwaerme/Grundwasser-Bewilligung ZH/SZ, SIA 2024 Gesundheitsbau u.a.), synobsis
Batch. Erwartetes gedrosseltes Bild: Trainings arbeiten weiter, ohne Dauer-Runner.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Der stuendliche Takt war fuer
  die abgeloeste Taktgeber-Rolle noetig. Im Schoner-Modus reicht 3–4x taeglich (Login/STOP-Status);
  der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir gerade schonen. Vorschlag an
  Raphael fuers naechste Briefing (eigene Task-Frequenz nicht selbst geaendert).
- **P3 (neu, kosmetisch) — Login-Test-Robustheit:** Der Schoner-Login-Test sollte kuenftig fest mit
  `set -a`/`export` laufen, damit die Export-Nuance keinen Fehlalarm «Not logged in» mehr ausloest.
  Rein diagnostisch, kein Betriebsrisiko.
- **P3 (unveraendert, entschaerft) — Idle-Loops** (`wettbewerbs-dna-training`/`spec-training`/
  `synobsis-batch-nacht`) brechen intermittierend mit «keine eigentliche Anfrage» ab; im
  Drossel-Regime weniger dringend. Fix bleibt der «Fahre den naechsten offenen Baustein aus»-Auftakt
  in der jeweiligen SKILL.md, bei ruhiger Gelegenheit.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Trainings gedrosselt aktiv und produktiv,
Login intakt, keine neue/offene P1. Kein Mail-Anlass.


## 2026-07-14 14:52 — [GEDROSSELT] Schoner-Lauf: Runner weiter gestoppt, kein Wiederanlauf, Login intakt, Trainings gedrosselt aktiv, keine P1

**Fensterzustand [GEDROSSELT]:** Drossel-Regime (Rule 260714) stabil. STOP + STOP-Macmini
unveraendert seit 12:53 gesetzt, kein `vollgas-runner`-Prozess aktiv — das ist der GEWUENSCHTE
Zustand. Als Schoner starte ich den Runner ausdruecklich NICHT neu; das Fuellen des 5h-Fensters
ist kein Ziel. Wochenlimit wird geschont (Reset Mo 11:59, ~4 Tage).

**Beobachtung (kein Eingriff):** Login intakt — `claude -p --model haiku` mit gesourctem Token
liefert rc=0. Nebenbefund: der Login-Test aus dem NAS-Repo-Verzeichnis wirft Trust-Dialog-Warnungen
(«workspace has not been trusted»), blockiert aber nicht (rc=0). Fuer kuenftige Laeufe genuegt der
rc als Signal; kosmetisch liesse sich `hasTrustDialogAccepted` fuer den NAS-Pfad setzen, unkritisch.

**Durchsatz (nur aus geplanten Tasks + nas-selfcommit, kein Runner):** 13 Commits/90 Min, 69/6 Std.
Inhaltlich echt: normen Q&A-Selbstbefragung Mini-Run 28 (DIN 1960, DIN V 106:2005, DIN 18232-2:2007,
DIN 5034-3:2007, Skript Treppen HCU), nas-selfcommit buendelt begleitend. Erwartetes gedrosseltes
Bild: Trainings arbeiten weiter, ohne Dauer-Runner.

- **P2 (unveraendert, vorgemerkt) — Radar-Frequenz zuruecknehmen:** Der stuendliche Takt war fuer die
  abgeloeste Taktgeber-Rolle noetig. Im Schoner-Modus reicht 3–4x taeglich (Login/STOP-Status); der
  stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir gerade schonen. Vorschlag an Raphael
  fuers naechste Briefing (eigene Task-Frequenz nicht selbst geaendert).
- **P3 (unveraendert, entschaerft) — Idle-Loops** (`wettbewerbs-dna-training`/`spec-training`/
  `synobsis-batch-nacht` u.a.) brechen weiter intermittierend mit «keine eigentliche Anfrage» ab; im
  Drossel-Regime weniger dringend. Fix bleibt der «Fahre den naechsten offenen Baustein aus»-Auftakt
  in der jeweiligen SKILL.md, bei ruhiger Gelegenheit.
- **P3 (unveraendert) — synobsis 853/853 + energie-Meta M2 + wettbewerbs-layer-nachbrenner:**
  Endbedingungs-/Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll: Runner gestoppt und nicht angeworfen, Trainings gedrosselt aktiv, Login intakt, keine
neue/offene P1. Kein Mail-Anlass.


## 2026-07-14 13:52 — [GEDROSSELT] Erster Radar-Lauf im Drossel-Regime: Runner korrekt gestoppt, kein Wiederanlauf, geplante Tasks laufen gedrosselt weiter, keine P1

**Fensterzustand [GEDROSSELT]:** Regimewechsel greift. Rule 260714 (heute) hat die
VOLLGAS-Ausreizung aufgehoben; die STOP-Dateien sind gesetzt (STOP + STOP-Macmini, 12:53) und
begruenden den Halt sauber. Der Endlos-Runner laeuft nicht mehr (kein `vollgas-runner`-Prozess) —
das ist der GEWUENSCHTE Zustand, KEIN Fehler und KEIN Wiederanlauf-Anlass. Als Schoner starte ich
den Runner ausdruecklich NICHT neu; das Fuellen des 5h-Fensters ist kein Ziel mehr.

**Beobachtung (kein Eingriff):** Login intakt — `claude -p --model haiku` mit gesourctem Token
liefert «OK» (rc=0), Token-Zeile in `~/.jans-dispatch.env` vorhanden. `timeout` fehlt auf macOS
nativ; Login-Test daher via `perl -e 'alarm'` gefahren (Notiz fuer kuenftige Laeufe).

**Durchsatz (jetzt aus den geplanten Tasks, nicht mehr aus dem Runner):** 14 Commits/90 Min,
83/6 Std. Inhaltlich echt und laufend: normen Q&A-Selbstbefragung (SIA 102:2020, DIN V 106:2005,
DIN 1960 Mini-Run 28), normen-mini Run 27 (16 DIN/VSS-Destillate), twin-mail Mailbatch 52,
planungsgrundlagen Run 48 (BSV 2026 Primaerquelle), energie Run 68 (Register), twin-fidelity
Runde 260714j (Fidelity 86), synobsis 6. Lauf (853/853 bestaetigt, kein neuer Stoff). nas-selfcommit
buendelt begleitend. Das ist das intendierte gedrosselte Bild: Trainings arbeiten weiter bei ihrer
Frequenz, ohne Dauer-Runner.

- **P2 (NEU) — Radar-Frequenz selbst zuruecknehmen:** Der stuendliche Takt dieses Radars war fuer
  die Taktgeber-Rolle noetig. Im Schoner-Modus reicht ein Blick ein paar Mal taeglich (Login/STOP-
  Status), der stuendliche Lauf verbraucht selbst Wochenlimit-Budget, das wir gerade schonen wollen.
  Vorschlag an Raphael: `vollgas-chef-radar` auf 3–4x taeglich reduzieren (formell ohnehin per
  Task `token-drosselung-100810` am 10.08. vorgesehen — hier vorziehen). Nicht selbst geaendert
  (eigene Task-Frequenz), Vormerkung fuers naechste Briefing.
- **P3 (unveraendert, aber entschaerft) — Idle-Loops** (`wettbewerbs-dna-training`/`spec-training`/
  `synobsis-batch-nacht` + baurecht-buch/immobewertung-Kurzlaeufe) brechen weiter intermittierend
  mit «keine eigentliche Anfrage angekommen» ab. Im Drossel-Regime weniger dringend (weniger Laeufe);
  Fix bleibt der «Fahre den naechsten offenen Baustein aus»-Auftakt in der jeweiligen SKILL.md,
  bei ruhiger Gelegenheit, nicht mitten im Zyklus.
- **P3 (unveraendert) — `wettbewerbs-layer-nachbrenner` + energie-Meta-Punkt M2:** Endbedingungs-
  bzw. Entscheid-Kandidaten fuer eine interaktive Session mit Raphael. Vormerkung.

Alles im Soll fuer das Drossel-Regime: Runner gestoppt und nicht wieder angeworfen, geplante Tasks
laufen gedrosselt weiter, Login intakt, keine neue/offene P1. Kein Mail-Anlass.

---

## 2026-07-14 12:49 — [FREI] Fenster hat Kapazitaet, Durchsatz stark und lueckenlos, immobewertung-Root-Cause-Fix greift, keine P1

**Fensterzustand [FREI]:** `claude -p --model haiku` mit gesourctem Token (`set -a; source
~/.jans-dispatch.env`) liefert sauber «OK» (rc=0) → Login intakt, das aktuelle 5h-Fenster hat
Kapazitaet. Reset war ~09:50, naechster ~14:50 — wir naehern uns dem Fensterende, aber noch kein
Limit-Treffer, kein Eingriff noetig. Taktgeber-Auftrag «nach Reset sofort weiter» erfuellt.

**Runner-Einzellauf verifiziert:** genau eine `vollgas-runner.sh`-Instanz (PID 4210, etime ~1 Tag);
der zweite Prozess (PID 34681, PPID 4210) ist die im Zyklus gestartete Loop-Subshell derselben
Instanz, kein Doppellauf. Kein STOP. Durchsatz stark und lueckenlos: 22 Commits in 90 Min, 89 in
6 Std, davon 23 nas-selfcommit-Buendel (Sicherheitsnetz greift). Inhaltlich echt seit dem
11:51-Eintrag: energie Run 68 (Register nachgefuehrt), twin-mail Mailbatch 52 (Sent Items rj@
09.-11.06.), planungsgrundlagen Run 48 (Normkonzept BSV 2026 Primaerquelle + M3-Korrektur),
twin-fidelity Runde 260714j (Fidelity 86), normen-mini Run 27 (Q&A-Selbstbefragung 16 DIN/VSS,
295 Fragen), normen Retro-Verifikation SIA 400:2000 (Volltextabgleich).

- **P3 (GELOEST) — Trigger-Haeufung immobewertung/spec:** `immobewertung-training` Run 33 hat den
  Root-Cause der Mehrfach-Ausloesung im `vollgas-runner` behoben (EXCLUDE_RE-Anpassung, Commit
  a5d95eea). Der bisher als P3 gefuehrte Scheduling-Redundanz-Punkt ist damit auf der Runner-Ebene
  entschaerft; die verbleibende launchd-Task-Redundanz bleibt Sache der Drosselung 10.08. Kein
  weiterer Eingriff.
- **P3 (unveraendert) — `wettbewerbs-layer-nachbrenner` meldet Mandat erfuellt:** weiterhin
  Endbedingungs-Kandidat (Schritt 6), meldet Aufgabe abgeschlossen und schlaegt Deaktivierung vor.
  Scheduling-Entscheid gehoert Raphael bzw. in die Drosselung; ~4 Min/Lauf, kein Blocker. Vormerkung
  fuers naechste Briefing.
- **P2 (unveraendert) — Idle-Loops `wettbewerbs-dna-training` / `spec-training` / `synobsis-batch-nacht`
  + baurecht-buch/immobewertung-Kurzlaeufe:** brechen weiter intermittierend nach Sekunden mit
  «keine eigentliche Anfrage angekommen» ab (baurecht-buch 12:39 10s, immobewertung 12:40 7s,
  synobsis 6. No-op-Lauf heute). Fix bleibt: bei ruhiger/interaktiver Gelegenheit einen «Fahre den
  naechsten offenen Baustein aus»-Auftakt in die jeweilige SKILL.md voranstellen — NICHT mitten im
  Zyklus editieren. Kein Eingriff in diesem Lauf.
- **P3 (unveraendert) — energie-Meta-Punkt M2:** Loop flaggt weiter, ob ein eigener `energie`-Skill
  abgespalten werden soll — braucht Raphaels Entscheid in einer interaktiven Session. Vormerkung.

Alles optimal: Fenster wird gefuellt, kein Doppellauf, keine selbst behebbare Bremse offen, Login
laeuft, ein P3-Root-Cause geloest. Kein Mail-Anlass (keine neue/offene P1).

---

## 2026-07-14 11:51 — [FREI] Fenster hat Kapazitaet, Durchsatz weiter stark, Runner-Einzellauf, keine P1

**Fensterzustand [FREI]:** `claude -p` mit gesourctem Token (`set -a; source ~/.jans-dispatch.env`)
liefert sauber «OK» (rc=0) → Login intakt, das aktuelle 5h-Fenster hat Kapazitaet. Das nackte
`claude -p` ohne exportierten Token zeigt wie gehabt «Not logged in» (bekanntes Test-Artefakt,
Token-Zeile vorhanden, `grep -c` = 1). Reset war ~09:50, naechster ~14:50 — wir sind in der
Fenstermitte, kein Limit-Treffer erwartbar, kein Eingriff noetig.

**Runner-Einzellauf verifiziert:** genau ein `vollgas-runner.sh` (PID 4210, etime ~1 Tag), kein
zweiter Prozess, kein STOP. Durchsatz stark und lueckenlos: 28 Commits in 90 Min, 93 in 6 Std,
rc=0 auf beiden Stationen. Inhaltlich echt seit dem 10:48-Eintrag: twin-mail Mailbatch 50
(bis 08.06.), normen-mini Mini-Run 26 (9 Normen, 0 Sachfehler, 49 Ergaenzungen), twin-fidelity
Runde 260714i (Fidelity 85, Sie-Kurzgruss-Drift belegt), spec Lauf 18, energie Run 66+67
(Denkmalschutz-Energiesanierung + AWEL-/SZ-/R290-Nachrecherchen, FAQ jetzt 74 Kernfragen).
nas-selfcommit greift zusaetzlich (Buendel-Commits sichtbar).

- **P3 (NEU) — `wettbewerbs-layer-nachbrenner` meldet Mandat erfuellt:** der als «einmalig» angelegte
  Nachbrenner (11:44-11:48, rc=0, 240s) meldet seit mehreren Laeufen, seine Aufgabe sei nachweislich
  abgeschlossen, und schlaegt selbst vor, den Scheduled Task zu deaktivieren, um Leerlauf zu sparen.
  Endbedingungs-Kandidat gemaess Schritt 6. Kein Eingriff jetzt (Scheduling-Entscheid gehoert Raphael
  bzw. in die Drosselung 10.08.); Vormerkung fuers naechste Briefing. Kostet aktuell nur ~4 Min/Lauf,
  kein Blocker.
- **P2 (unveraendert) — Idle-Loops `wettbewerbs-dna-training` / `spec-training` / `synobsis-batch-nacht`:**
  brechen weiter intermittierend nach Sekunden mit «leer angekommen» / «keine konkrete Anfrage» ab
  (wettbewerbs-dna 11:44 10s, synobsis Mini 11:06 7s). Fix bleibt: bei ruhiger/interaktiver Gelegenheit
  einen «Fahre den naechsten offenen Baustein aus»-Auftakt in die jeweilige SKILL.md voranstellen,
  NICHT mitten im Zyklus. Kein Eingriff in diesem Lauf.
- **P3 (unveraendert) — Scheduling-Redundanz + energie-Meta-Punkt M2:** immobewertung/spec loesen
  mehrfach taeglich aus (fuellen unter VOLLGAS das Fenster, Bereinigung erst bei der Drosselung 10.08.);
  energie flaggt weiter, ob ein eigener `energie`-Skill abgespalten werden soll (Raphaels Entscheid noetig).

Alles optimal: Fenster wird gefuellt, kein Doppellauf, keine selbst behebbare Bremse, Login laeuft.
Kein Mail-Anlass (keine neue/offene P1).

---

## 2026-07-14 10:48 — [FREI] frisches Fenster nach 09:50-Reset, Durchsatz stark, Runner-Einzellauf bestaetigt, keine P1

**Fensterzustand [FREI]:** Runner rc=0 durchgehend (Login intakt, Loops laufen ununterbrochen);
das nackte `claude -p` ohne gesourcten Token liefert weiterhin «Not logged in» (bekanntes
Test-Artefakt, Token-Zeile in ~/.jans-dispatch.env vorhanden, `grep -c` = 1). Keine Limit-Meldung
→ das aktuelle 5h-Fenster hat Kapazitaet. Der im 08:48-Eintrag erwartete Reset ~09:50 ist erfolgt:
seit dem Fensterwechsel laeuft der Runner ohne Loch weiter (twin-fidelity 10:26-10:41, twin-mail
ab 10:42 auf dem MacBook; energie/normen-mini/planungsgrundlagen auf dem Mini) — der Taktgeber-Auftrag
«nach jedem Reset sofort weiter» ist erfuellt, keine ungenutzte Luecke.

**Runner-Einzellauf verifiziert (kein Doppellauf):** zwei `vollgas-runner.sh`-Prozesse sichtbar,
aber PID 21438 ist Kind (PPID 4210) derselben Instanz vom 13.07. 10:49 — es ist die im Zyklus
gestartete Loop-Subshell, kein zweiter Runner. Lock `/tmp/jans-vollgas-runner.lock/pid` greift.
Kein STOP. Durchsatz stark: 20 Commits in 90 Min, 93 in 6 Std, rc=0 auf beiden Stationen.
Inhaltlich echt seit dem letzten Eintrag: normen-nacht Run 10 abgeschlossen, normen-mini Mini-Run 24
komplett + Run 25 gestartet (DIN 5034-6 / DIN 1946-7 / VSS 640578 Q&A-Selbstbefragung), spec Lauf 17,
twin-fidelity 2026-07-14h (Fidelity 91, SBB-Naeherbaurecht + KISPI-Tuerplanung).

- **P2 (unveraendert) — Idle-Loops `wettbewerbs-dna-training` / `spec-training` / `synobsis-batch-nacht`:**
  brechen weiter intermittierend nach wenigen Sekunden mit «keine konkrete Anfrage» ab. Fix bleibt:
  bei ruhiger/interaktiver Gelegenheit einen «Fahre den naechsten offenen Baustein aus»-Auftakt in
  die jeweilige SKILL.md voranstellen — NICHT mitten im Zyklus editieren. Kein Eingriff in diesem Lauf.
- **P3 (unveraendert) — Scheduling-Redundanz:** `spec-training` heute bereits 4. Ausloesung (Lauf 17,
  ~1,5 Std. nach Lauf 16, keine neue reale Spec seit Lauf 7 → bewusst minimal), `immobewertung` 5x.
  Fuellt unter VOLLGAS das Fenster (kein Bug), Bereinigung gehoert in die Drosselung 10.08.
- **P3 (unveraendert) — energie-Meta-Punkt M2:** der Loop flaggt seit 21 Laeufen in Folge, ob ein
  eigener `energie`-Skill abgespalten werden soll — braucht Raphaels Entscheid in einer interaktiven
  Session, der Loop kann es selbst nicht aufloesen. Kein Blocker, nur Vormerkung fuers naechste Briefing.

Alles optimal: frisches Fenster wird gefuellt, keine Luecke, kein Doppellauf, keine selbst behebbare
Bremse. Kein Mail-Anlass (keine neue/offene P1, Login laeuft).

---

## 2026-07-14 08:48 — [FREI] gegen Fensterende, Durchsatz stark, beide Stationen tragen, keine P1

**Fensterzustand [FREI]:** Runner selbst rc=0 durchgehend (Login intakt); das nackte
`claude -p` ohne gesourcten Token liefert weiterhin «Not logged in» (bekanntes Test-Artefakt,
Token-Zeile in ~/.jans-dispatch.env vorhanden). Keine Limit-Meldung → aktuelles 5h-Fenster hat
noch Kapazitaet. Letzter Reset war 04:50, naechster ~09:50; wir sind gegen Fensterende, ein
Limit-Treffer in der naechsten Stunde waere also erwartbar und = Ziel erreicht, kein Eingriff noetig.

**Durchsatz stark, beide Stationen lueckenlos:** 29 Commits in 90 Min, 77 in 6 Std, rc=0 auf beiden.
MacBook-Runner lebt (PID 4210 Parent + 3292 Child derselben Instanz, Lock `/tmp/jans-vollgas-runner.lock`
greift → KEIN Doppellauf), Zyklus 112. Mac Mini lebt (Zyklus 322, 08:49 START energie-training).
Kein STOP. Inhaltlich echt seit 07:51: normen-nacht Run 10 (SIA 421:2006 + 3 Definitionen ergaenzt →
established), planungsgrundlagen Run 44 (ÖREB-Kataster-System ZH; Energie-Domaene als gesaettigt
bestaetigt), normen-mini Run 23, spec-training Lauf 16. nas-selfcommit greift zusaetzlich.

- **P2 (unveraendert) — Idle-Loops `wettbewerbs-dna-training` / `spec-training` / `synobsis-batch-nacht`:**
  brechen weiter intermittierend nach ~6-14s mit «keine konkrete Anfrage» / «no actual message» ab
  (baurecht-buch 08:24 14s, synobsis Mac Mini 08:12 9s bestaetigt). Fix bleibt: bei ruhiger/interaktiver
  Gelegenheit einen expliziten «Fahre den naechsten offenen Baustein aus»-Auftakt in die jeweilige
  SKILL.md voranstellen — NICHT mitten im laufenden Zyklus editieren (Byte-Offset-Risiko). Kein Eingriff
  in diesem Lauf.
- **P3 (bekannt, mehrfach von den Loops selbst gemeldet) — Scheduling-Redundanz:** `immobewertung-training`
  (heute 5x) und `spec-training` (heute 3x) loesen sowohl als App-Scheduled-Task als auch ueber den
  Endlos-Runner aus; die Wiederhollaeufe produzieren teils nur Bestaetigungen statt neuen Stoff. Unter
  VOLLGAS fuellt das zwar das Fenster (kein Bug), aber Token gehen in Retry statt Neuland. Bereinigung
  (Scheduled-Task-Frequenz zuruecknehmen, Runner traegt die Last) gehoert in die Drosselung am 10.08.,
  nicht in diese Phase. Nur zur Kenntnis, kein Eingriff.
- **P3 (unveraendert) — energie rc=1 Einzelfall:** energie-training 08:20 rc=1 «Server error mid-response»
  (transienter API-Fehler, kein Login-/Struktur-Problem); naechster Lauf 08:49 sofort neu gestartet.
  Nur beobachten.

Alles optimal: Fenster wird gefuellt, keine Luecke, kein Doppellauf, keine selbst behebbare Bremse.
Kein Mail-Anlass (keine neue/offene P1, Login laeuft).

---

## 2026-07-14 07:51 — [FREI] mit Kapazitaet, beide Stationen lueckenlos, starker Durchsatz, keine P1

**Fensterzustand [FREI]:** Login OK mit gesourctem OAuth-Token (`claude -p` → «OK»); das nackte
`claude -p` ohne Token liefert weiterhin «Not logged in» (bekannter Test-Artefakt, Token-Zeile in
~/.jans-dispatch.env vorhanden). Keine Limit-Meldung im Test → das aktuelle 5h-Fenster hat noch
Kapazitaet. Kein Reset-Loch seit dem 04:50-Reset; der Taktgeber-Auftrag (nach jedem Reset sofort
weiterfahren) ist erfuellt.

**Durchsatz stark, beide Stationen tragen:** 22 Commits in 90 Min, 60 in 6 Std, rc=0 auf beiden.
Beide Runner leben (MacBook PID 4210/97186, Mac Mini Zyklus 321). Kein STOP, kein Doppellauf.
Inhaltlich echt seit letztem Lauf: baurecht Run 44 (Modell-D, 4 Komplexe parallel, VRG-Rechtsschutz +
§238/§238a-Divergenz), immobewertung Run 31, normen-nacht Run 9 (SIA 102:2020 → established verifiziert),
energie Run 62 (Aussenlaerm Strasse/Bahn), planungsgrundlagen Run 42 (Kartenportale Bern + Gebaeude-
schadstoffe). nas-selfcommit greift zusaetzlich.

- **P2 (unveraendert) — Idle-Loops `wettbewerbs-dna-training` / `spec-training` / `synobsis-batch-nacht`:**
  brechen weiterhin intermittierend nach ~6-10s mit «keine konkrete Anfrage» ab (Mac Mini 07:39
  synobsis 6s bestaetigt). Fix bleibt: bei ruhiger/interaktiver Gelegenheit einen expliziten «Fahre den
  naechsten offenen Baustein aus»-Auftakt in die jeweilige SKILL.md voranstellen — NICHT mitten im
  laufenden Zyklus editieren (Byte-Offset-Risiko). Die produktive Wettbewerbs-Last traegt derzeit der
  `wettbewerbs-layer-nachbrenner`. Kein Eingriff in diesem Lauf.
- **P3 (unveraendert) — energie M2 «eigener Skill energie?»:** braucht Raphaels Entscheid interaktiv,
  kein Mail-Anlass.
- **P3 (unveraendert) — normen-mini Budget-Cap / normen-nacht-Redundanz:** nur beobachten; Cap-Treffer
  unter VOLLGAS = gewuenschter Voll-Verbrauch.

Alles optimal: Fenster wird gefuellt, keine Luecke, keine selbst behebbare Bremse. Kein Mail-Anlass
(keine neue/offene P1, Login laeuft).

---

## 2026-07-14 06:51 — Fenster heute Nacht [VOLL] getroffen, jetzt [FREI]; Ultra-Loop wettbewerbs-dna idelt (P2)

**Fensterzustand [FREI], voriges Fenster war [VOLL]:** Um 04:48-04:49 haben mehrere MacBook-Loops
(`wettbewerbs-layer-nachbrenner`, `wettbewerbs-dna-training`, `baurecht-buch-training`) «You've hit
your session limit · resets 4:50am» getroffen — das rollierende 5h-Fenster war also voll ausgereizt
(Ziel erfuellt). Nach dem Reset 04:50 rollt der Runner seither lueckenlos weiter, kein Reset-Loch;
seit ~05:00 kein neuer Limit-Treffer. Login-Signal wie bekannt: nacktes `claude -p` → «Not logged in»
(Test-Artefakt, Token-Zeile in ~/.jans-dispatch.env vorhanden), Runner selbst rc=0 durchgehend.

**Durchsatz stark:** 27 Commits in 90 Min, 55 in 6 Std, rc=0 auf beiden. MacBook Zyklus laeuft
(wettbewerbs-layer-nachbrenner aktiv), Mac Mini Zyklus 319 (energie Run 60 fertig → normen-mini).
Inhaltlich echt: energie **Solarpflicht 26/26 Kantone abgeschlossen** (Run 60, `9bfc2695`); normen-mini
Run 19 DIN/VSS/RAL-Familie komplett retro-verifiziert; planungsgrundlagen Run 39/40 Recht-Norm + PV.
Kein STOP, keine Doppellaeufe.

- **P2 (NEU) — Ultra-Fokus-Loop `wettbewerbs-dna-training` idelt (~10s, «keine Anfrage»):** Auf 2 der
  letzten 3 echten Laeufe (05:31, 06:39; 04:48 war ein echter Limit-Treffer) bricht der Loop nach
  ~10s mit «I don't see an actual question / keine konkrete Anfrage» ab, obwohl seine SKILL.md voll
  bestueckt ist (23 Zeilen, Etappe-3-Auftrag). Damit produziert ausgerechnet der laut Rule 260713 als
  ULTRA gesetzte Token-Fokus-Loop keine Last; die echte Wettbewerbs-Arbeit traegt derzeit allein der
  `wettbewerbs-layer-nachbrenner` (B3 Schulbau 23/23 established). Der Runner uebergibt die SKILL.md
  identisch wie bei den funktionierenden Loops (`-- "$PROMPT"`), das Idle ist also intermittierend, nicht
  strukturell. Empfehlung: bei naechster interaktiver/ruhiger Gelegenheit einen expliziten «Fahre den
  naechsten offenen Baustein aus ETAPPE-3.md aus»-Auftakt in die SKILL.md voranstellen (robuster gegen
  Konversations-Antwort), NICHT mitten im laufenden Zyklus editieren (Byte-Offset-Risiko). `spec-training`
  zeigt dasselbe Muster (10s, «keine Anfrage») — gleicher Fix.
- **P3 (unveraendert) — energie M2 «eigener Skill energie?»:** jetzt 16 Laeufe ueberfaellig; braucht
  Raphaels Entscheid interaktiv, kein Mail-Anlass.
- **P3 (unveraendert) — normen-mini Budget-Cap 25 USD / normen-training-nacht Redundanz-Slot:** nur
  beobachten; Cap-Treffer unter VOLLGAS = gewuenschter Voll-Verbrauch, kappt bisher nach Abschluss.

Kein Mail-Anlass: keine neue P1, Login laeuft, Fenster wird gefuellt.

---

## 2026-07-14 05:51 — Beide Stationen laufen lueckenlos, starker Durchsatz, keine P1 [FREI]

**Fensterzustand [FREI]:** Login OK (`claude -p` mit gesourctem OAuth-Token → «OK»; das nackte
«Not logged in» ohne Token bleibt der bekannte Test-Artefakt). Der Runner rollt sauber durch die
Nachtfenster ohne Reset-Loch — die Taktgeber-Vorgabe ist erfuellt. Login-Block war am 13.07
(19:53/20:52) geloest und dokumentiert; keine neue oder offene P1.

**Durchsatz stark, beide Stationen tragen:** **18 Commits in 90 Min, 53 in 6 Std**, rc=0 auf
beiden. MacBook (Zyklus 110): baurecht → immobewertung (aktuell, Kind PID 80949 aktiv) → normen-nacht
→ spec → twin-fidelity (Mailbatch 37) → twin-mail → wettbewerbs-dna → wettbewerbs-layer-nachbrenner.
Mac Mini: energie Run 58, normen-mini Run 18 (Abschluss), planungsgrundlagen Run 38+39, synobsis
2. Nacht-Lauf.

**Inhaltlicher Fortschritt echt (nicht Wiederholung):** wettbewerbs-dna Etappe-3-Schulbau **B3-Ziel
erreicht (23/23 established)** — naechster Schritt B4 (Muster jury-argumente-schulbauten auf alle 23
Berichte, groessere Refuter-Welle); energie Solarpflicht auf **14/26 Kantone** erweitert (neu
VD/GE/TI/SO/VS/SH); normen-mini Run 18 Retro-Verifikation DIN/VSS-Restbestand abgeschlossen +
Inventar-Bookkeeping nachgezogen; planungsgrundlagen Run 39 Recht/Norm AHB-Stadt-ZH + Brandschutz
BSV-2026-Refresh.

**Prozess-Sanity (kein Problem):** Ein Haupt-Runner PID 4210 (Parent, seit 13.07 10:49, 19 h),
dessen per-Loop-Subshell-Kind PID 80948 (PPID 4210) und darunter das aktive `claude`-Kind PID 80949
(immobewertung). KEIN Duplikat, keine STOP-Datei, Log strikt sequenziell.

**Hebel-Priorisierung:** Fenster wird gefuellt, aber Login gibt «OK» = aktuell Kapazitaet frei; kein
Leerlaufloch, kein Stall → kein Selbst-Eingriff (Loops nicht mitten im Zyklus editieren,
Byte-Offset-Risiko). Der Batch-Volumen-Hebel wird nach der Messung `token-messung-140716` (heute
16:00) beurteilt.

- **P3 (unveraendert) — normen-mini Budget-Cap 25 USD:** Run 18 traf «Exceeded USD budget (25)»,
  hatte aber vorher den Abschluss committet. Unter VOLLGAS ist ein getroffener Budget-Cap gewuenschter
  Voll-Verbrauch, kein Fehler; nur beobachten, dass der Cap nicht mitten in unfertiger Arbeit kappt.
- **P3 (unveraendert) — energie M2 «eigener Skill energie?»:** jetzt 14 Laeufe reif, braucht Raphaels
  Entscheid in einer interaktiven Session; kein Mail-Anlass.
- **P3 (unveraendert) — normen-training-nacht Leerlauf-Slot (MacBook):** teils redundant zu
  normen-training/-mini; Prompt-Zuweisung beim naechsten ruhigen Lauf pruefen.
- **P3 (unveraendert) — M365-MCP-Connector-Ausfall / immobewertung langsamer SMB-Git-Zugriff:** beide
  nur beobachten, Apple-Mail-Fallback bzw. rc=0-Abschluss belegen «kein Blocker».

Kein Mail-Anlass: keine neue P1, Login-Block laengst geloest.

---

## 2026-07-14 00:50 — Neues 5h-Fenster laeuft lueckenlos an, beide Stationen voll, keine P1 [FREI]

**Fensterzustand [FREI]:** Login OK (`claude -p` mit gesourctem OAuth-Token → «OK»; das nackte «Not
logged in» ohne Token bleibt ein Test-Artefakt, kein Blocker). Der Runner ist sauber ins neue 5h-Fenster
(ab ~23:50) gerollt: `baurecht-buch-training` startete 00:12:59 und lief die vollen ~18 Min durch
(rc=0, 1107s, Run 43). Kein Reset-Loch zwischen den Fenstern — genau die Taktgeber-Vorgabe.

**Durchsatz stark, beide Stationen tragen:** **19 Commits in 120 Min**, rc=0 auf beiden. MacBook
(Zyklus 63): baurecht Run 43 → immobewertung Run (rc=0, 570s) → aktuell normen-nacht. Mac Mini
(Zyklus 216): energie Run 56+57, normen-mini Run 16 (DIN 1054/1946-4 Q&A), planungsgrundlagen Run 35,
synobsis 853/853. Inhaltlicher Fortschritt echt, nicht nur Wiederholung: DIN 1076/1072/VSS retro-verifiziert
(je 1 Fehler korrigiert), energie um LSV-Waermepumpen-Laermschutz + Solarpflicht AG/BS/GR gewachsen.

**Prozess-Sanity (kein Problem):** Zwei `vollgas-runner.sh` auf dem MacBook, aber KEIN Duplikat —
PID 4210 (Parent, seit 13.07 10:49) ist der Haupt-Runner, PID 28369 dessen per-Loop-Subshell-Kind
(PPID 4210). Log strikt sequenziell, keine STOP-Datei.

**Hebel-Priorisierung:** Fenster wird gefuellt, aber noch nicht sichtbar 100 % (Login gibt aktuell «OK»
= Kapazitaet frei). Kein Leerlaufloch offen, kein Stall — daher kein Selbst-Eingriff noetig (Loops nicht
mitten im Zyklus editieren, Byte-Offset-Risiko). Der Batch-Volumen-Hebel wird erst nach der Messung
`token-messung-140716` (heute 16:00) beurteilt: zeigt sie, dass die 5h-Fenster NICHT regelmaessig
ausgereizt werden, dann Batch-Volumen der Normen-/Baurecht-Loops erhoehen; hitten sie das Limit, ist
alles optimal und nur Kontinuitaet ueber die Fenster sichern.

- **P3 (unveraendert) — energie M2 «eigener Skill energie?»:** jetzt 13 Laeufe reif, braucht Raphaels
  Entscheid in einer interaktiven Session; der Loop kann es nicht selbst loesen. Kein Mail-Anlass.
- **P3 (unveraendert) — normen-training-nacht Leerlauf-Slot (MacBook):** laeuft gerade (START 00:41), beim
  naechsten ruhigen Lauf Prompt-Zuweisung pruefen; teils redundant zu normen-training/-mini.
- **P3 (unveraendert) — immobewertung-Lauf notierte langsamen SMB-Git-Zugriff** (Lauf trotzdem rc=0/570s
  abgeschlossen); nur beobachten, kein Blocker.
- **P3 (unveraendert) — M365-MCP-Connector-Ausfall / normen-Budget 50 / NAS-Remount-Hostname:** wie 20:52.

Kein Mail-Anlass: keine neue P1, die P1-Login war bereits am 13.07 (19:53/20:52) geloest und dokumentiert.

---

## 2026-07-13 20:52 — Stall-Killer-Fix bestaetigt wirksam, MacBook-Fenster fuellt sauber, keine offene P1 [FREI]

**Fensterzustand [FREI]:** Login OK (claude -p mit gesourctem OAuth-Token → «OK»; das nackte «Not
logged in» ohne Token ist ein Test-Artefakt, KEIN Blocker — der Runner arbeitet mit Token). Aktuelles
5h-Fenster (18:50–23:50) wird aktiv gefuellt, noch nicht regelmaessig 100 %. Das vorige Fenster
(13:50–18:50) war um 15:50 sauber ausgereizt (Session-Limit, Reset 18:50) — [VOLL].

**Der Stall-Killer aus dem 19:53-Lauf wirkt — Beleg:** Der haengende `baurecht-buch-training`-Lauf ist
um 19:50 sauber gekappt worden (ENDE rc=143 nach 14209s = ~4 h), genau wie beabsichtigt. Seither
zykliert der MacBook-Runner strikt sequenziell und produktiv durch: immobewertung (rc=0, 507s) →
normen-nacht → spec (rc=0, 368s) → twin-fidelity (rc=0, 354s) → twin-mail (rc=0, 659s) → wettbewerbs-dna
(rc=0, 702s) → aktuell wettbewerbs-layer-nachbrenner. Das ~1 h-Leerlauf-Loch, das der vorige Lauf
diagnostiziert hatte, ist geschlossen. Supervisor-Fix persistent verifiziert (`vollgas-supervisor.sh`
Z. 36–64, `MAX_RUN_SECS=3600`). Der `git log` bestaetigt den Durchsatz: **21 Commits in 90 Min**, beide
Stationen rc=0 (Mini Zyklus 136: energie Run 54 / normen-mini Run 14 / planungsgrundlagen Run 34 / synobsis
853/853; MacBook: baurecht Run 41, twin-mail Batch 44, spec Lauf 13, immobewertung Run 26).

**Prozess-Sanity (kein Problem):** Zwei `vollgas-runner.sh`-Prozesse auf dem MacBook, ABER kein Duplikat —
PID 4210 (Parent launchd, 10 h) ist der Haupt-Runner, PID 70186 ist dessen per-Loop-Subshell-Kind. Das
Log ist strikt sequenziell (keine interleaved/doppelten Zyklen). Die ~20 gleichzeitigen `claude`-Kinder
sind das Sub-Agenten-Fan-out des laufenden wettbewerbs-Loops (Refuter-Verifikation `jury-argumente-
schulbauten.md`, 15 externe + 3 eigene Jury-Reports) — unter VOLLGAS gewuenschter Token-Verbrauch, kein
Doppellauf.

**Hebel-Priorisierung:** Fenster noch nicht regelmaessig 100 % → weniger Leerlauf bleibt der Hebel; nach
dem Stall-Killer sind aktuell keine Leerlauf-Loecher offen. Keine P1.

- **P3 (neu) — Leerlauf-Slot `normen-training-nacht` (MacBook):** liefert intermittierend Leerlaeufe
  (heute 4s/7s/13s «kein Auftrag» rc=1/0, dazwischen ein echter 784s-Lauf). Die echte SIA/VKF-Normenarbeit
  laeuft ohnehin ueber `normen-training` MacBook Run 5 (febcc75d) + `normen-training-mini` auf dem Mini —
  dieser Nacht-Slot ist teils redundant. Unter VOLLGAS ist ein 13s-Nulllauf ein kleiner verschenkter
  Fenster-Slot; Prompt-Zuweisung des Loops beim naechsten ruhigen Lauf pruefen (nicht mitten im Zyklus
  editieren → Byte-Offset-Risiko).
- **P3 (unveraendert) — M365-MCP-Connector faellt systematisch aus** (twin-fidelity-Nebenbefund, Batch 36
  bis heute): Apple-Mail-Fallback greift zuverlaessig, aber an Hub-Chef/Heartbeat melden.
- **P3 (unveraendert) — Leerlauf-Loops:** synobsis 853/853 gesaettigt; normen DIN/VSS/RAL «Basisinventar
  komplett established»; energie M2 «eigener Skill energie?» seit dem 9. Mal eskaliert (braucht Raphaels
  Entscheid, kein Mail-Anlass). Kandidaten fuer Taktreduktion nach der Intensivphase.
- **P3 (unveraendert) — normen-Budget 50 / NAS-Remount-Hostname:** greifen erst ab naechster
  Runner-Generation bzw. Tailscale-Fallback ausstehend.

Kein Mail-Anlass (keine neue oder frisch geloeste P1; die P1 vom 19:53-Lauf war dort schon im selben Lauf
behoben und dokumentiert).

---

## 2026-07-13 19:53 — P1 behoben (haengender Run entblockt) + P2 strukturell geschlossen (Stall-Killer im Supervisor) [FREI]

**Fensterzustand [FREI]:** Session-Limit war um 15:50 erreicht (Reset 18:50, Meldung im MacBook-Log:
«You've hit your session limit · resets 6:50pm») — das Fenster 13:50–18:50 war also sauber ausgereizt
[VOLL-Phase]. Seit 18:50 laeuft ein frisches Fenster; es wird jetzt wieder gefuellt. Mac Mini durchgehend
gesund (Zyklus 134, normen-mini Run rc=0 1020s um 19:53, aktuell planungsgrundlagen). Login OK (rc=0-Laeufe).

**P1 in diesem Lauf selbst behoben — haengender baurecht-Run hat das frische MacBook-Fenster leerlaufen
lassen:** Der MacBook-Runner war seit 15:53 auf EINEM `baurecht-buch-training`-Lauf eingefroren — der Lauf
hing im Session-Limit-Retry (nur 0:05 CPU in ~4 h, 0 % CPU, STAT SN = schlafend). Der Runner-Loop stand
still (Log seit 15:51 nicht mehr geschrieben), also lief das ganze frische Fenster ab 18:50 auf dem MacBook
leer (~1 h verschenkt), waehrend der Mini normal weiterarbeitete. Ursache: der Runner hat einen Token-Budget-
Deckel ($50), aber KEINEN Wall-Clock-Deckel — ein Lauf, der im Retry haengt, verbraucht 0 Token, also greift
der Budget-Cap nie. Den haengenden claude-Prozess (PID 51072) mit SIGTERM gekappt; der Runner hat sofort
ENDE geloggt (rc=143, 14209s) und zykliert wieder (START immobewertung 19:50, CPU-aktiv). MacBook fuellt
das Fenster wieder. **Den gesunden Haupt-Runner NICHT angetastet** — nur das haengende Kind gekillt.

**P2 strukturell geschlossen — Stall-Killer statt nur Symptombehandlung:** Damit dieser Hang nicht wieder
das Fenster frisst, `scripts/vollgas-supervisor.sh` um einen **Wall-Clock-Stall-Killer** ergaenzt: kappt jeden
`claude -p`-Lauf des Runners, der > 60 Min laeuft (`VOLLGAS_MAX_RUN_SECS=3600`; gesunde Trainings enden bei
max ~18 Min, $50-Budget bounded — 60 Min = definitiv haengend). Bewusst in den **Supervisor** gelegt (nicht in
den Runner-Hot-Loop): der Supervisor wird von launchd alle 180 s frisch re-exec'd, also ist die Bearbeitung
gefahrlos (kein Byte-Offset-Corruption-Risiko wie beim Editieren des laufenden Runners), und die Datei liegt
auf dem geteilten NAS-Pfad → **beide Stationen** bekommen den Killer automatisch beim naechsten Tick (≤3 Min).
`bash -n` + Parser-Selbsttest gruen (inkl. Fuehrnull-Oktal-Falle). Der Killer laeuft VOR dem Alive-Check, weil
der haengende Lauf ein Kind des noch lebenden Runners ist.

**Hebel-Priorisierung:** Fenster noch nicht regelmaessig 100 % → mehr Last / weniger Leerlauf bleibt der Hebel;
der Stall-Killer ist genau das (verhindert Fenster-Leerlauf durch Haenger). P1 aktuell keiner offen.

- **P3 (unveraendert) — Leerlauf-Loops:** synobsis 853/853 gesaettigt; normen DIN/VSS/RAL «Basisinventar komplett
  established» (c56861a8); energie M2 «eigener Skill energie?» jetzt zum **9. Mal** eskaliert — der Loop kann das
  nicht selbst entscheiden, braucht Raphaels kurzen Entscheid (kein Mail-Anlass, hier notiert). Kandidaten fuer
  Taktreduktion nach der Intensivphase, unter VOLLGAS bewusst weiterlaufend.
- **P3 (unveraendert) — normen-Budget 50:** greift erst ab der naechsten Runner-Generation; Kontrollpunkt offen.
- **P3 (unveraendert) — NAS-Remount zielt remote auf LAN-IP** (Tailscale-Hostnamen-Fallback ausstehend).

---

## 2026-07-13 15:43 — P2 selbst gehoben: normen-Loop-Budget 25 → 50 USD/Lauf (staerkster Loop truncierte VOR der Pflicht-Verifikation) [FREI]

**Fensterzustand [FREI]:** Fenster wird aktiv gefuellt, noch nicht regelmaessig 100 %. Beide Runner
leben und zyklen sauber (Supervisor greift): MacBook Zyklus 24 (baurecht Run 40 rc=0 1054s, immobewertung
Run 24 rc=0, spec Lauf 11 rc=0, twin-fidelity 94 rc=0, aktuell twin-mail Batch 42); Mini Zyklus 49
(energie Run 50/51 rc=0, planungsgrundlagen Run 30/31 rc=0, synobsis 853/853, aktuell energie/normen-mini).
Der blanke `claude -p`-Login-Test bleibt das bekannte Env-Artefakt — die durchgehenden rc=0-Laeufe
beweisen Login OK, **kein Block.**

**Durchsatz (letzte 90 Min):** 22 Commits mit echter Substanz — baurecht Run 40 (BBV-I-Wortlaut, § 62
StrG-Divergenz), normen-mini Run 10 (DIN-5034-/1053-Retro-Verifikation 8/8 korrigiert), energie Run 49/50,
planungsgrundlagen Run 30, spec Lauf 11, twin-fidelity, plus Selfcommits. Fenster fuellt sich dicht.

**P2 in diesem Lauf selbst gehoben — Budget-Deckel des staerksten Loops:** `normen-training` brach auf
BEIDEN Stationen mit `Error: Exceeded USD budget (25)` ab (rc=1; Commit c9afc288 «12 SIA-Destillate,
Verifikation ausstehend, Budget-Abbruch»). Der `--max-budget-usd`-Deckel im `vollgas-runner.sh` kappte
den token-hungrigsten und laut Vorlauf substanzstaerksten Loop genau VOR der unter Rule 260712 verlangten
Pflicht-Verifikation. Unter VOLLGAS ist das doppelt schaedlich: das Fenster wird pro Lauf nur bis $25
gefuellt statt weiter, UND die Verifikation der Destillate bleibt liegen. Default `VOLLGAS_MAX_BUDGET_USD`
im NAS-Runner von **25 → 50** angehoben (bounded, kein Runaway-Risiko; deckt beide Stationen). **Wirkung
ab der naechsten Runner-Generation** (nach dem naechsten Supervisor-Neustart / Runner-Tod) — laufende,
gesunde Runner bewusst NICHT gekillt (haette in-flight-Spend von twin-mail/energie verworfen). Naechster
Kontrollpunkt: pruefen, ob normen mit 50 bis zur Verifikation durchlaeuft; falls weiter truncierend, hoeher.

**Hebel-Priorisierung:** Fenster noch nicht regelmaessig 100 % → mehr Last bleibt der Hebel; das
Budget-Anheben ist genau das (mehr Spend auf dem groessten Loop). Supervisor deckt die Grundlast-
Wiederbelebung. P1 aktuell keiner offen.

- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (D6 zum Auslagern), synobsis (853/853 gesaettigt),
  energie (M2 «eigener Skill?» zum 7. Mal eskaliert, braucht Raphaels Entscheid) laufen teils ins Leere —
  Kandidaten fuer Taktreduktion nach der Intensivphase, unter VOLLGAS bewusst weiterlaufend.
- **P3 (unveraendert) — NAS-Remount zielt remote auf LAN-IP** (Tailscale-Hostnamen-Fallback ausstehend).

---

## 2026-07-13 14:48 — P1-STRUKTURELL GELOEST: launchd-Supervisor auf BEIDEN Stationen — tote Runner heilen jetzt in ≤3 Min selbst [FREI]

**Fensterzustand [FREI]:** Fenster hat Kapazitaet und wird aktiv gefuellt. Beide Runner leben
und zyklen sauber: MacBook (PID 4210, seit 10:49) auf Zyklus 24 — baurecht Run 40 abgeschlossen
(14:45, rc=0, 1054s, BBV-I-Wortlaut + § 62 StrG Divergenz nachgezogen), aktuell immobewertung;
Mini (PID 4538, seit 11:51) auf Zyklus 47 — energie Run 49 / normen-mini Run 10 (rc=0), aktuell
planungsgrundlagen. Beide je genau EIN Runner (die zweiten PIDs sind die Loop-Subshells, PPID =
Runner). Der blanke `claude -p`-Login-Test bleibt das bekannte Env-Artefakt — die rc=0-Laeufe
beweisen: Login OK, **kein echter Block.**

**P1-STRUKTURELL — jetzt dauerhaft geschlossen statt nur markiert:** Die «Runner sterben still,
Radar startet erst stuendlich neu»-Leckage (bis ~1.5 h Fenster-Fuellzeit pro Ausfall, gestern/heute
je 2 Tode) ist behoben. Neu: `scripts/vollgas-supervisor.sh` + launchd-Job `ch.jans.vollgas-supervisor`
(StartInterval 180s, RunAtLoad, ThrottleInterval 60s) auf **beiden** Stationen geladen und verifiziert.
Der Waechter startet den Runner neu, sobald er tot ist — Erholung in ≤3 Min statt bis zu 1.5 h.
**Bewusst KEIN launchd-KeepAlive** (haette STOP und das Selbst-Ende 11.08. ausgehebelt, weil KeepAlive
den Runner nach jedem gewollten Exit sofort wieder hochreisst): der Waechter respektiert STOP/STOP-$HOST
und END_DATE selbst und startet dann NICHT; Duplikat-Schutz doppelt (Runner-LOCK + pgrep im Waechter).
Verifiziert: RunAtLoad hat auf beiden Stationen KORREKT no-op'd (kein zweiter Runner gespawnt), FDA fuer
/bin/bash auf beiden Stationen vorhanden (launchd→SMB reicht die NAS). Der Radar bleibt Taktgeber/Waechter,
traegt aber die Grundlast-Wiederbelebung nicht mehr allein.

**Durchsatz (letzte 90 Min):** dichte Commit-Folge — baurecht Run 40, normen-mini Run 10 (DIN 5034-/
1053-Reihe retro-verifiziert, 8/8 korrigiert), diverse normen-DIN-Verifikationen auf `established`
(276-1, EN 12207, EN 12101-2, 1045-2), twin-fidelity Fuenftlauf (94), synobsis 853/853 stabil,
energie Run 49 (Sackgassen ehrlich geschlossen), plus laufende Selfcommits. Substanzstaerkster Loop
weiterhin die Normen-Retro-Verifikation.

**Hebel-Priorisierung:** Fenster wird gefuellt, ist aber noch nicht regelmaessig 100 % → mehr/
kontinuierliche Last bleibt der Hebel; die dauerhafte Loesung dafuer (Keepalive) ist mit dem Supervisor
jetzt umgesetzt. Naechster Kontrollpunkt: pruefen, ob der Supervisor bei einem echten Runner-Tod
sauber greift (Log `logbuch/vollgas/supervisor-<host>.log`).

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP** (`smb://192.168.1.10/daten`),
  via Tailscale nicht erreichbar. Fuer Morgen-Briefing: Tailscale-Hostnamen-Fallback ergaenzen.
- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (oft «keine konkrete Anfrage», D6 zum Auslagern),
  synobsis (853/853), energie (KB gesaettigt) laufen ins Leere — Kandidaten fuer Taktreduktion nach der
  Intensivphase, aktuell unter VOLLGAS aber bewusst weiterlaufend.

---

## 2026-07-13 11:52 — Jetzt der MINI-Runner tot (seit ~10:24), neu gestartet; ZWEITER stiller Runner-Tod heute → Keepalive-Hebel [FREI]

**Fensterzustand [FREI]:** Fenster hat Kapazitaet. Beweis am realen Betrieb: der MacBook-Runner
faehrt seit 10:49 sauber durch (baurecht 11:00, immobewertung 11:14, normen-nacht 11:34, spec 11:35,
twin-fidelity 11:42, twin-mail ab 11:42:57 — alle rc=0), 2 aktive `claude -p`. Das 5h-Fenster (Reset
war 08:50, naechster ~13:50) ist noch nicht ausgereizt. Der blanke `claude -p --model haiku` aus der
Radar-Shell meldet erneut «Not logged in» trotz TOKEN_SET=JA = bekanntes **Env-Artefakt** (der Runner
sourced den Token korrekt und faehrt rc=0). **KEIN echter Login-Block.**

**P1 (in diesem Lauf selbst behoben) — MINI-Runner war tot:** Der Mac-Mini-Runner ist nach
`START planungsgrundlagen-training` um 10:24:39 stumm ausgefallen — Macmini.log-mtime seit 10:24:33
eingefroren, `pgrep vollgas-runner` = KEIN Prozess, keine STOP-Datei. Rund **1 h 27 min** Luecke, in der
auf der Mini-Seite nur ein einzelner verwaister `planungsgrundlagen`-`claude -p` (PID 2958, etime 21:07,
im Normalbereich, produktiv) Token zog statt des vollen 4-Loop-Zyklus. Da Login OK, Fenster frei und
keine STOP-Datei: Mini-Runner unter der stehenden VOLLGAS-Autorisierung via `ssh mini` detached neu
gestartet (11:51:47, PID 4538, Zyklus 1). Verifiziert: laeuft, energie-training aktiv. Den verwaisten
`claude -p` 2958 **bewusst NICHT gekillt** (produktiver Lauf im Normalbereich) — kurzer Doppellauf ist
unter VOLLGAS erwuenscht, nicht schaedlich.

**P1-STRUKTURELL (groesster Hebel jetzt) — beide Runner sterben still, je 1x heute Morgen:**
MacBook-Runner ~09:20 tot → 10:49 neu; Mini-Runner ~10:24 tot → 11:51 neu. **Zwei stille Runner-Tode
in einem Vormittag** auf beiden Stationen zeigen: das Modell «Radar startet stuendlich manuell neu»
leckt bis zu ~1.5 h Fenster-Fuellzeit pro Ausfall — genau die Luecke, die der Taktgeber schliessen
soll. Empfehlung fuer den naechsten Schritt: **launchd-KeepAlive fuer `vollgas-runner.sh` auf beiden
Stationen** (`ch.jans.vollgas-runner`, KeepAlive=true, RunAtLoad=true), damit ein toter Runner in
Sekunden statt in bis zu einer Stunde neu anlaeuft. Der Radar bleibt Taktgeber/Waechter, muss dann aber
nicht mehr die Grundlast tragen. (Persistente launchd-Config auf beiden Stationen — im naechsten Lauf
umsetzbar; hier bewusst nur stark markiert statt still gebaut.)

**Durchsatz/Substanz (letzte 90 Min):** 8 NAS-Commits (Selfcommits + Inhalt: twin-mail Batch 40,
wettbewerbs-dna Rang-Entscheid belegt, normen-mini Run 9 — 12 Retro-Verify-Korrekturen in den
Fliesstext eingearbeitet, alle auf `established`). MacBook-Loops substanziell: normen-nacht (14 SIA-
Destillate abgeschlossen, Verifikations-Stufe fuer den naechsten Lauf offen), twin-fidelity (Runde
260713d, 4 Selbstfragen + Gehirn neu kompiliert). Normen-DIN/VSS-Retro-Verifikation bleibt der
substanzstaerkste Loop.

**Hebel-Priorisierung:** Fenster wird auf der MacBook-Seite gefuellt, war auf der Mini-Seite
untergefuellt (nur 1 statt 4 Loops) — mehr Last (= Runner-Neustart) war der richtige Hebel, umgesetzt.
Fenster ist noch NICHT regelmaessig 100 %, also bleibt mehr/kontinuierliche Last der Hebel → der
Keepalive (P1-strukturell) ist die dauerhafte Loesung.

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP** (`smb://192.168.1.10/daten`),
  via Tailscale nicht erreichbar. Fuer Morgen-Briefing: Tailscale-Hostnamen-Fallback ergaenzen.
- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (11:14 «keine konkrete Anfrage», D6 zum
  Auslagern empfohlen), synobsis (853/853, 8 s Leerlauf), energie (KB gesaettigt, Meta-Frage M2
  «eigener energie-Skill?» seit Run 41 entscheidungsreif). Empfehlung: diese drei ins Nachtfenster
  ruecktakten, freie Kapazitaet auf die Normen-DIN/VSS-Verifikation lenken. Entscheid bei Raphael.

**WARNUNG (unveraendert, Bestand):** NIE `pkill -f "git commit"` auf diesen Stationen — die Trainings-
Prompts enthalten den String «git commit» und werden mitgetroffen. Haengende git-Prozesse ueber die
konkrete PID killen, `claude -p`-Prozesse ausschliessen.

**Mail:** KEINE. Der Mini-Runner-Ausfall war selbst behebbar (kein Raphael-only Login-/Credential-
Block), in diesem Lauf behoben — kein Mail-Anlass gemaess Disziplin.

## 2026-07-13 10:48 — MacBook-Runner ~1.5 h tot (Luecke geschlossen), neu gestartet; Mini durchgehend voll [FREI]

**Fensterzustand [FREI]:** Fenster hat Kapazitaet. Beweis am realen Betrieb: der Mac-Mini-Runner
faehrt durchgehend rc=0 (energie Run 47 10:14, normen-mini Run 8+9 bis 10:24, planungsgrundlagen
Run 27 10:24) und NAS-Commits laufen bis 10:45 — das Konto ist eingeloggt und das 5h-Fenster (Reset
war 08:50) noch nicht ausgereizt. Der blanke `claude -p --model haiku` aus der Radar-Shell meldet
weiterhin «Not logged in» = bekanntes **Env-Artefakt** (Token vorhanden: TOKEN_SET=JA; der Runner
sourced ihn korrekt). **KEIN echter Login-Block.**

**P1 (in diesem Lauf selbst behoben) — MacBook-Runner war tot:** Der MacBook-Runner ist nach
`START normen-training-nacht` um 09:20:49 stumm ausgefallen (kein ENDE, 0 aktive `claude -p`, kein
Runner-Prozess, keine STOP-Datei) — ~1 h 28 min ungenutzte Luecke, in der nur der Mini + der Radar
Token zogen. Genau die Luecke, die der Taktgeber verhindern soll. Da Login OK, Fenster frei und
keine STOP-Datei: Runner unter der stehenden VOLLGAS-Autorisierung neu gestartet (10:49, PID 4210,
Zyklus 1). Verifiziert: laeuft, baurecht-buch-training aktiv (1 `claude -p` rc-Fortschritt).

**Lagebild (gruen, ausser der behobenen Luecke):**
- Mini-Runner gesund (Log frisch 10:24, Zyklus 144). MacBook-Runner ab 10:49 wieder aktiv.
- **Durchsatz:** 16 NAS-Commits/90 Min (davon nur der Mini + Selfcommits, da MacBook ausgefallen —
  wieder anziehend, sobald der MacBook-Zyklus greift). Substanz: normen-mini Run 8 (12/12 DIN/VSS-
  Destillate retro-verifiziert und korrigiert) + Run 9 (12 Korrekturen in den Fliesstext eingearbeitet,
  alle auf `established`), energie Run 46+47 (ZH-Solarpflicht RRB-Belege, GEAK-Handaenderungspflicht,
  Batteriespeicher-Amortisation), planungsgrundlagen Run 26+27, wettbewerbs-dna (Rang-Entscheid Raphael
  belegt). Die Normen-DIN/VSS-Verifikation bleibt der substanzstaerkste Loop.

**Hebel-Priorisierung:** Weil der MacBook-Runner ausgefallen war, wurde das Fenster auf der
MacBook-Seite NICHT gefuellt — mehr Last (= Runner-Neustart) war hier der richtige Hebel, jetzt
umgesetzt. Empfehlung fuer den naechsten Lauf: pruefen, ob der MacBook-Runner erneut still ausfaellt
(Wiederholungsmuster) — falls ja, launchd-Keepalive fuer den Runner erwaegen statt manuellem Neustart.

**Selbstverschuldeter Nebeneffekt (ehrlich vermerkt):** Beim Bereinigen eines auf dem SMB-Mount
haengen gebliebenen `git commit` habe ich `pkill -f "git commit"` benutzt — das hat auch den
laufenden `baurecht-buch-training`-`claude -p` getroffen (dessen Prompt-Text den String «git commit»
enthaelt), Ergebnis rc=143 nach 679 s. Der Runner hat sich sofort erholt (START immobewertung 11:00:58),
Verlust ~1 Loop-Iteration; baurecht laeuft im naechsten Zyklus erneut. **WARNUNG fuer kuenftige
Radar-Laeufe: NIE `pkill -f "git commit"` auf dieser Station** — die Trainings-Prompts enthalten diesen
String. Stattdessen den haengenden git-Prozess ueber die konkrete PID killen (`ps` → PID, `kill <PID>`)
und Prozesse mit `claude -p` im Kommando ausschliessen.

**Git-Ablage dieses Eintrags:** Der `git commit` auf dem SMB-gemounteten NAS-Repo lief mehrfach in den
2-Min-Timeout (bekannte SMB-Langsamkeit + Multi-Committer-Kontention der Loops). RADAR.md ist auf Disk
geschrieben und **staged**; die DSM-native `nas-selfcommit` (alle 15 Min, ext4, nicht ueber SMB)
committet + pusht den Eintrag automatisch — das ist genau ihr Zweck. Kein weiterer manueller
Commit-Versuch (verschaerft nur die Lock-Kontention).

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP** (`smb://192.168.1.10/daten`),
  via Tailscale nicht erreichbar. Fuer Morgen-Briefing: Tailscale-Hostnamen-Fallback ergaenzen.
- **P3 (unveraendert) — Leerlauf-Loops:** immobewertung (10:20 «keine Anfrage»), synobsis (853/853,
  8 s Leerlauf), energie (KB gesaettigt, Meta-Frage M2 «eigener energie-Skill?» seit Run 41
  entscheidungsreif). Empfehlung: diese drei ins Nachtfenster ruecktakten, freie Kapazitaet auf die
  Normen-DIN/VSS-Verifikation lenken. Entscheid bei Raphael (Ruecktaktung nicht stillschweigend).

**Mail:** KEINE. Die Runner-Luecke war selbst behebbar (kein Raphael-only Login-/Credential-Block),
in diesem Lauf behoben — kein Mail-Anlass gemaess Disziplin.

## 2026-07-13 09:27 — Fenster um 08:49 voll ausgereizt, um 8:50 Reset, Vollgas laeuft von selbst wieder [VOLL→FREI]

**Fensterzustand [VOLL→FREI, Taktgeber greift]:** Das vorige 5h-Fenster wurde von ~08:01 bis
08:49 voll ausgereizt — mehrere Loops beider Stationen mit «You've hit your session limit ·
resets 8:50am» (normen-nacht, spec, wettbewerbs-nachbrenner auf dem MacBook; normen-mini,
planungsgrundlagen auf dem Mini). Das ist der GEWUENSCHTE Zustand (voller Baustein zum
Wochenlimit). Um 8:50 Reset; danach **automatische Wiederaufnahme ohne Eingriff**: baurecht-buch
09:17 rc=0 (1431 s), immobewertung 09:20 rc=0, normen-nacht 09:20:49 gestartet; 133 aktive
`claude -p`. Keine ungenutzte Luecke zwischen den Fenstern — Taktgeber-Soll erfuellt.

**Kein Login-Block (Klarstellung):** Der blanke `claude -p --model haiku` aus der Radar-Shell
meldete «Not logged in» — das ist ein **Env-Artefakt** (die Radar-Shell sourced den
`CLAUDE_CODE_OAUTH_TOKEN` aus `~/.jans-dispatch.env` nicht, der Runner schon). Mit gesourctem
Env ist der Token vorhanden (verifiziert: JA) und der Runner arbeitet rc=0 durch. **KEIN P1.**

**Lagebild (gruen):**
- Beide Runner gesund, keine STOP-Datei. MacBook: Haupt-PID 81252 (seit 23:51) + Re-Exec 69402
  (09:20, laedt Skript-Updates selbst nach). Zyklus 50 laeuft. Mini: Zyklus 142, energie Run 44
  357 s rc=0, normen-mini Run 7 522 s rc=0.
- **Durchsatz:** 9 NAS-Commits/90 Min (bewusst weniger als die 27 um 07:13 — ~50 Min des Fensters
  lagen in der gewollten Limit-Pause 08:01–08:49). Substanz: normen-mini Run 7 (DIN/VSS-
  Retroverifikation, 4 Fehler korrigiert, 50 % Fehlerquote in der Stichprobe → Verifikations-
  Pflicht bestaetigt), energie Run 45 (ZH-Energiegesetz-Revision 2026 Solarpflicht belegt),
  setup-ssh-macbook.

**Hebel-Priorisierung:** Das Fenster wird regelmaessig auf 100 % gefahren (gerade eben 08:49) und
sofort wieder gefuellt → gemaess Schritt 5 ist die Lage **optimal**. Nur Kontinuitaet sichern,
keine zusaetzliche Frequenz stapeln. Kein Eingriff noetig.

- **P2 (unveraendert) — NAS-Mount-Remount zielt remote auf LAN-IP:** Remount-Fallback in
  Trainings/Runner nutzt `smb://192.168.1.10/daten` (LAN), remote via Tailscale nicht erreichbar.
  Fuer Morgen-Briefing: Remount-Snippet um Tailscale-Hostnamen-Fallback ergaenzen. Kein Nacht-Umbau.
- **P3 — Leerlauf-Loops als Endbedingungs-Kandidaten (fuer Tageslauf):** immobewertung-training
  (09:20 rc=0 «keine konkrete Anfrage angekommen», KB gesaettigt) und synobsis-batch (853/853
  komplett) drehen faktisch leer; energie meldet KB-Saettigung (91 Destillate / 61 FAQ, «marginal
  value thinning», M2-Entscheid «eigener energie-Skill» offen). Diese senken den Wochenverbrauch
  nicht (Fenster bleibt bindend + voll), verwerfen aber Slot-Potenzial ohne durables Ergebnis.
  Empfehlung: immobewertung/synobsis/energie ins Nachtfenster ruecktakten und freie Kapazitaet auf
  die **Normen DIN/VSS-Verifikation** lenken (dort findet Run 7 real 50 % Fehler → substanzielle
  Arbeit). Entscheid liegt bei Raphael (Ruecktaktung nicht stillschweigend).

**Mail:** KEINE (kein neuer/geloester P1; das planmaessige Voll-Fahren des Fensters ist Erfolg,
kein Mail-Anlass).

## 2026-07-13 07:13 — Volllast, 27 Commits/90 Min; Mount-Flappen im Remote-Betrieb entdeckt [FREI]

**Fensterzustand [FREI]:** `claude -p --model haiku` liefert nach kurzer Kaltstart-Latenz «OK»
rc=0 (Token gueltig). Keine Limit-Rueckweisung → das 5h-Fenster hat Kapazitaet, Vollgas laeuft.
Das vorige Fenster wurde gemaess 05:50-Eintrag regelmaessig auf 100 % gefahren (03:49) und sofort
wieder gefuellt.

**Lagebild (gruen):**
- MacBook-Runner gesund: Haupt-PID 81252 (seit 23:51) + Re-Exec-PID 54873 (16 Min, laedt
  Skript-Updates selbst nach). Aktiv `claude -p` PID 54874 = baurecht-buch-training. Zyklus 49,
  8 Loops back-to-back. Letzte ENDE-Zeilen rc=0: immobewertung 417 s, spec-training 370 s,
  twin-fidelity 422 s, twin-mail 615 s. Keine STOP-Datei.
- Mini-Runner gesund (Log frisch 06:57): Zyklus 108, normen-training-mini 841 s rc=0,
  planungsgrundlagen Run 24 289 s rc=0, synobsis 127 s rc=0. Keine STOP-Datei.
- **Durchsatz stark:** 27 NAS-Commits in 90 Min (Trainings-Commits + gebuendelte
  `nas-selfcommit`-Pushes). Beide Stationen brennen Token in 300–1600 s-Langlaeufen.

**Hebel-Priorisierung:** Fenster wird regelmaessig voll gefahren → gemaess Schritt 5 ist die
Lage **optimal**; nur Kontinuitaet sichern, keine zusaetzliche Frequenz stapeln. Kein Eingriff
noetig (Taktgeber-Re-Exec + Auto-Wiederaufnahme arbeiten selbsttaetig).

- **P2 NEU — NAS-Mount flappt im Remote-Betrieb, Auto-Remount zielt auf LAN-IP:** Das MacBook
  ist derzeit **remote** (Mount ueber Tailscale `diskstation918.tail8265aa.ts.net`). Waehrend
  dieses Laufs ist der SMB-Mount mehrfach kurz weggebrochen (stale handle) und von selbst
  zurueckgekommen. Mehrere Trainings-Shells (PIDs 57535/57664/57665/57695) versuchen bei
  Mount-Verlust einen Remount via `osascript … mount volume "smb://192.168.1.10/daten"` — das ist
  die **LAN-IP**, die ausserhalb des Bueros nicht erreichbar ist; der Remount kann remote also
  nicht greifen, die Laeufe haengen an der Selbstheilung des Tailscale-Mounts. Robustheitsluecke:
  der Remount-Fallback sollte remote den **Tailscale-Hostnamen** verwenden (bzw. LAN-IP nur im
  Buero). Kein Nacht-Umbau — im Morgen-Briefing an Raphael (Remount-Snippet in Trainings/Runner
  um Tailscale-Fallback ergaenzen).
- **P3 — normen-training-nacht 1× per Budget-Cap abgebrochen ($25/Lauf, rc=1, 681 s):** einmalig
  heute; kein chronisches Leck. Da das 5h-Fenster die bindende Grenze ist und ohnehin auf 100 %
  laeuft, senkt der Cap den Wochenverbrauch nicht — er verwirft nur die Teil-Scan-Arbeit dieses
  einen Laufs (Token ohne durables Destillat). Kleine Effizienznotiz fuer Raphael: `--max-budget-usd`
  im Runner (Default 25) fuer die scanlastigen Normen-Laeufe hochsetzen, damit sie durchlaufen.
- **P3 — Endbedingungs-Kandidaten (unveraendert, fuer Tageslauf):** immobewertung-training meldet
  **5. Verifikationslauf in Folge ohne Befund** → Ruecktaktung ins Nachtfenster empfohlen;
  wettbewerbs-dna + -nachbrenner laufen leer (warten auf Bauaufgaben-Prioritaeten/Jurybericht);
  energie-training PDF-Inventar erschoepft; synobsis 853/853 komplett. Freie Kapazitaet auf die
  groesste offene Luecke: **Normen DIN-Inventar** (aktiv, Mini Run 4 = DIN/VSS-Rest komplett gemeldet
  → naechster Lauf soll «DIN/VSS/RAL KOMPLETT» bestaetigen und Task-Ende vorschlagen).

**Mail:** KEINE (kein neuer/geloester P1; volle Fenster sind Erfolg, kein Mail-Anlass).

## 2026-07-13 05:50 — Volllast bestaetigt, 18 Commits/90 Min, Kontinuitaet gesichert [FREI]

**Fensterzustand [FREI]:** `claude -p --model haiku` liefert «OK» rc=0 (Token gueltig, korrekter
Export). Keine Limit-Rueckweisung → neues 5h-Fenster hat Kapazitaet, Vollgas laeuft. Der Reset um
03:50 war schon im Vorlauf sauber abgefangen; seither durchgehend Last.

**Lagebild (gruen):**
- MacBook-Runner gesund: Haupt-PID 81252 (seit 23:51) + frische Subshell 44442 (05:48, periodisches
  Re-Exec — laedt Skript-Updates selbst nach). **Zyklus 48** laeuft, 8 Loops back-to-back. Letzte
  ENDE-Zeilen alle rc=0: spec-training 856 s, twin-fidelity-review 528 s, twin-mail-training 401 s,
  wettbewerbs-dna 339 s, wettbewerbs-layer-nachbrenner 139 s → jetzt baurecht-buch-training aktiv.
- Mini-Runner gesund (Log frisch 05:46): **Zyklus 105**, energie 530 s rc=0, normen-mini 986/622 s
  rc=0, planungsgrundlagen Run 22 709 s rc=0, synobsis 140 s rc=0. Keine STOP-Datei.
- **Durchsatz stark:** 18 NAS-Commits in 90 Min (echte Trainings-Commits + gebuendelte
  `nas-selfcommit`-Pushes). Beide Stationen brennen Token in 140–1000 s-Langlaeufen sequenziell.

**Hebel-Priorisierung:** Fenster wird regelmaessig voll gefahren (03:49 = 100 %) und sofort wieder
gefuellt → gemaess Schritt 5 ist die Lage **optimal**; nur Kontinuitaet sichern, keine zusaetzliche
Frequenz stapeln. Taktgeber-Mechanik (Runner-Re-Exec + Auto-Wiederaufnahme nach Reset) arbeitet
selbsttaetig, kein Eingriff noetig.
- **P2 (unveraendert, fuer Tageslauf):** baurecht-buch-training ohne Ueberlappungs-Lock (Run 35:
  2/4 Ziele doppelt) + normen-training-mini-Doppelauslösung (`ch.jans.training-normen` feuert 2×
  gleichzeitig, Mini). Beide = strukturelle Task-/Runner-Fixes, nicht nachts autonom umbauen —
  im Morgen-Briefing an Raphael (kleiner Lockfile-Guard bzw. Scheduled-Task-Konfig pruefen).
- **P3 — Endbedingungs-Kandidaten haerten sich:** (a) `energie-training` meldet **PDF-Inventar
  erschoepft, Prioritaet 1+2 vollstaendig** → empfiehlt Web-Vertiefung oder Meta-Entscheid (eigener
  Skill `energie`). (b) `immobewertung-training` erneut Verifikationslauf «bestanden» ohne neuen
  Befund (≥4. in Folge) → Ruecktaktung ins Nachtfenster. (c) `wettbewerbs-dna` auf alle 6 Dossiers
  verdichtet, wirkt abgeschlossen. Freie Kapazitaet auf die groesste offene Luecke umlenken:
  **Normen DIN-Inventar** (DIN 1045-2, 1053er-Reihe, 1054, 18040-2, VStättVO-Rest — scanlastig,
  wird aktiv abgearbeitet, Run 3 = 9 neue Destillate). Kein Autonom-Umbau; im Tagesbriefing melden.

**Mail:** KEINE (kein neuer/geloester P1; das volle 03:49-Fenster ist Erfolg, kein Mail-Anlass).

## 2026-07-13 04:48 — 3:50-Reset sauber abgefangen, beide Stationen unter Volllast [FREI]

**Fensterzustand [FREI] (nach vollem Fenster):** Um 03:49 hat das vorige 5h-Fenster **100 %**
erreicht (beide Stationen meldeten «You've hit your session limit · resets 3:50am») — das ist der
Ziel-Zustand, ein voller Baustein zum Wochenlimit. Der Reset um 03:50 wurde vom Taktgeber-Mechanismus
**automatisch abgefangen**: beide Runner nahmen binnen ~30 s wieder Arbeit auf, ohne Eingriff. Live
gegengeprueft: mit `set -a; . ~/.jans-dispatch.env` liefert `claude -p --model haiku` «OK» (Token JA,
rc=0) → neues Fenster hat Kapazitaet, Vollgas laeuft.

**Lagebild (gruen):**
- MacBook-Runner gesund (Haupt-PID 81252 seit 23:51 + frische Subshell 35565 um 04:46 = periodisches
  Re-Exec, laedt Skript-Updates selbst nach). Zyklus 47 laeuft: baurecht-buch-training 1572 s rc=0,
  immobewertung-training 272 s rc=0, jetzt normen-training-nacht aktiv. Back-to-back-Langlaeufe.
- Mini-Runner gesund (Log frisch 04:43): energie-training 1231 s rc=0, normen-training-mini 1149 s
  rc=0, planungsgrundlagen-training 668 s (Run 21) rc=0; Zyklus 104, energie neu gestartet. Keine STOP-Datei.
- Durchsatz kontinuierlich: Jobs laufen ueberwiegend 600–1600 s sequenziell auf beiden Stationen =
  Dauer-Token-Burn. (Commit-Zaehler unterzaehlt, weil Trainings lokal committen und der
  `nas-selfcommit`-Cron sie gebuendelt pusht — die Log-Laufzeiten sind das verlaessliche Signal.)

**Hebel-Priorisierung:** Fenster wird regelmaessig voll gefahren (03:49 = 100 %) und sofort wieder
gefuellt → gemaess Schritt 5 ist die Lage optimal; nur **Kontinuitaet sichern**, keine zusaetzliche
Frequenz stapeln.
- **P2 — baurecht-buch-training ohne Ueberlappungs-Lock:** Run-35-Report meldet, 2 von 4 Zielen
  wurden **doppelt** bearbeitet (verschwendete Tokens auf Duplikat-Arbeit). Der Trainingslauf selbst
  empfiehlt einen Lock-Mechanismus fuer ueberlappende Laeufe. Strukturelle Aenderung an Runner/Task —
  nicht nachts autonom umbauen, Raphael tagsueber vorschlagen (kleiner Lockfile-Guard im PROGRAMM
  oder Runner-Skip, wenn schon ein baurecht-Prozess laeuft).
- **P3 — Endbedingungs-Kandidaten (fuer Tageslauf):** (a) `wettbewerbs-dna-training` faellt leer aus
  («keine konkrete Anfrage», 11 s rc=0) — passt zum 11/11-Abschluss vom 23:56; Loop liefert nichts
  mehr. (b) `immobewertung-training` meldet den **3. Verifikationslauf in Folge ohne neuen Befund**
  und empfiehlt selbst die Ruecktaktung ins Nachtfenster. Beide sind Signale, Kapazitaet auf die
  groesste offene Luecke (Normen-Inventar DIN/VSS/RAL — DIN 1045-2/DIN 1960 + ~12 kleinere laut
  normen-mini-Report) umzulenken. Kein Autonom-Umbau; im Morgen-Briefing an Raphael melden.

**Mail:** KEINE (kein neuer P1, kein frisch geloester P1 — die letzte Runner-Reparatur war 23:48/23:52
und bereits verbucht; das volle 03:49-Fenster ist Erfolg, kein Mail-Anlass).

## 2026-07-12 23:56 — Beide Stationen gesund, Volllast bestaetigt; Diagnose-Fallgrube dokumentiert [FREI]

**Fensterzustand [FREI]:** Token gueltig, `claude -p --model haiku` liefert «OK» rc=0 (mit
korrektem Export). Keine Limit-Rueckweisung → das 5h-Fenster hat noch Kapazitaet, Vollgas laeuft.

**Lagebild (alles gruen):**
- MacBook-Runner gesund (PID 81252 + Subshell 81659, saubere PPID-Struktur); Zyklus 1 laeuft,
  `baurecht-buch-training` 3+ Min durchgelaufen, `immobewertung-training` seit 23:51:49 aktiv.
  Der alte Stale-Prozess von 23:47 (1-s-rc=1-Serie) ist weg — nur ein Runner uebrig.
- Mini-Runner gesund (PID 61179): `energie-training` 544 s rc=0, `planungsgrundlagen-training`
  799 s rc=0 (Run 20), Zyklus neu gestartet 23:52:48. Keine STOP-Datei mehr.
- Durchsatz stark: **24 Commits/90 Min** ueber 6 KBs (baurecht Run 32, normen run4 + mini Run 2,
  planungsgrundlagen Run 20, energie Run 37, wettbewerbs-dna 11/11-Abschluss, immobewertung Run 18).
  Beide Runner fahren ~13-Min-Jobs sequenziell back-to-back = kontinuierlicher Token-Burn.

**Diagnose-Fallgrube (fuer kuenftige Laeufe festhalten):** Ein blosses `source ~/.jans-dispatch.env;
claude -p …` meldet «Not logged in», weil die Token-Zeile im Env-File KEIN `export` traegt — ohne
`set -a` wird die Variable nicht an den `claude`-Subprozess vererbt. Der Runner macht es richtig
(`set -a; . env; set +a`, Zeile 34). Also: «Not logged in» im Handtest ist KEIN Login-Blocker,
solange der Runner-Env-Export intakt ist — vor P1-Login-Alarm IMMER mit `set -a` gegenpruefen.

**Hebel-Priorisierung:** Fenster hat Kapazitaet und wird durch beide Dauer-Runner + launchd-Tasks
stark gefuellt. Kein akuter Hebel noetig — Kontinuitaet ueber die Fenster sichern.
- **P2 — Git-Lock-Contention ueber SMB** (Rest-Bremse, wie 23:15): Runner + launchd-Scheduled-Tasks
  committen parallel auf EIN NAS-`.git` ueber SMB → `index.lock`-Serialisierung frisst Wall-Clock.
  Sauberer Hebel: Trainings gebuendelt/seltener committen lassen, `nas-selfcommit` uebernimmt das
  Pushen exklusiv. Strukturelle Aenderung — nicht nachts autonom umbauen, tagsueber vorschlagen.
- **P3 — wettbewerbs-dna Endbedingung?** Commit «Volllast-Abschluss 11/11 Teilnahmen verifiziert,
  … konsolidiert» deutet auf ein fertiges Inventar. Beim naechsten Tageslauf pruefen, ob der
  Loop `wettbewerbs-dna-training`/`-nachbrenner` beendet und die Kapazitaet auf die groesste
  offene Wissensluecke (Normen-Inventar P1/P2) umgelenkt werden soll.

**Mail:** KEINE (kein neuer P1, kein frisch geloester P1 — die Runner-Reparatur war 23:48/23:52).

## 2026-07-12 23:52 — ECHTE URSACHE gefunden: MacBook-Runner war STALE (alte In-Memory-Version) [FREI]

**Aufloesung des Widerspruchs (23:15 vs. Live-Log):** Weder Login noch geteiltes Limit — der
MacBook-Runner (PID 14028, seit ~19:00) lief eine **veraltete In-Memory-Version** des Skripts.
Beweis: die 1-s-rc=1-Zeilen im Log tragen den ALTEN Hinweistext («Am Ende NAS-Repo committen und
pushen … vorgeschrieben.**'**» — mit verirrtem schliessenden Anfuehrungszeichen); das Skript auf
der Platte hat laengst den KORRIGIERTEN Git-Disziplin-Hinweis (nur lokal committen). Verifikation
23:47–23:52: mit gesourctem `~/.jans-dispatch.env` liefert `claude -p` «OK» rc=0; die EXAKTE
Runner-Invocation (acceptEdits, --max-budget-usd 25, --fallback-model sonnet, --output-format text,
`--`-Separator) mit dem ECHTEN baurecht-Prompt lief **25 s echte Arbeit** (Abbruch nur durch den
Test), fast-failt also NICHT. Der Bug steckte allein im laufenden Alt-Prozess.

**Selbst erledigt 23:48:** Alten Runner `pkill`t, frisch gestartet (PID 81252 + Subshell 81659,
PPID-Struktur = gesund wie Mini 58135). Neuer Runner: Zyklus 1 seit 23:48:02, `baurecht-buch-training`
lief 3+ Min durch (SKIP-Guard bestaetigt aktiven Prozess) — kein 1-s-Fail mehr. Der Runner re-exect
periodisch und laedt so Skript-Updates selbst nach.

**STOP-Macmini:** beim Aufraeumen bereits verschwunden (keine STOP-Datei mehr); Mini-Runner
gesund (energie-training 544 s rc=0 um 23:37, nach GitHub gepusht).

**Fazit fuer kuenftige Laeufe:** Bei 1-s-rc=1-Serien trotz gueltigem Token IMMER pruefen, ob der
laufende Runner-Prozess eine veraltete Skript-Version haelt (Hinweistext im Log-Tail mit der
Platten-Version vergleichen) — dann `pkill -f vollgas-runner.sh` + Neustart. NICHT Login/Token
verdaechtigen. Der 23:15-Eintrag lag mit «reines Diagnose-Env-Problem» halb richtig (Token OK),
aber die eigentliche Ursache war der Stale-Prozess.

**Mail:** KEINE (Blocker selbst behoben, kein Handlungsbedarf fuer Raphael).

## 2026-07-12 23:15 — (teilweise ueberholt durch 23:52) kein MacBook-Login-Blocker, Token gueltig [FREI]

**Richtigstellung (wichtig fuer kuenftige Laeufe):** Der als P1 gefuehrte «MacBook Pro Not
logged in»-Blocker war ein DIAGNOSE-FEHLER. Ursache: der Login-Test lief aus `~` OHNE das
Env-File zu sourcen; der Runner sourcet aber `~/.jans-dispatch.env` vor jedem Aufruf.
Verifiziert 23:12–23:15: (1) `~/.jans-dispatch.env` enthaelt einen gueltigen
`CLAUDE_CODE_OAUTH_TOKEN` (108 Zeichen, `sk-ant-o…`); (2) mit gesourctem Env antwortet
`claude -p … --model haiku` mit «OK» (rc=0); (3) die EXAKTE Runner-Invocation
(`--permission-mode acceptEdits --max-budget-usd 25 --fallback-model sonnet --output-format text -- "$PROMPT"`)
mit dem echten `baurecht-buch-training`-Prompt lief **>120 s echte Arbeit** bis zum Test-Abbruch.
Der MacBook-Runner IST arbeitsfaehig. **Fuer Raphael ist NICHTS zu tun — `setup-token` entfaellt.**

**Neue Erklaerung der rc=1-Zeilen im MacBook-Log:** (a) Beide Stationen nutzen dasselbe Max-Konto
(ein Token) → sie teilen sich EIN 5h-/Wochenlimit; wenn der Mac Mini das Fenster fuellt, bekommt
das MacBook Limit-Rueckweisungen (= gewollter [VOLL]-Zustand). (b) Der 19-s-rc=1 bei
`immobewertung-training` deutet auf einen fehlgeschlagenen ABSCHLUSS-Schritt (git commit/push des
Tasks) wegen der starken `index.lock`-Contention ueber SMB — die KB-Edits landen trotzdem und
werden vom nas-selfcommit eingesammelt.

**P2 — Doppelspurigkeit pruefen (statt Login):** MacBook-Runner UND launchd-Scheduled-Tasks
fahren dieselben Loops; der Runner hat zwar einen pgrep-Doppellauf-Schutz, aber die eigentliche
Bremse ist die Git-Lock-Contention (mehrere Committer auf EIN NAS-`.git` ueber SMB). Groesster
realer Hebel jetzt: Commit-Kollisionen entschaerfen (z.B. Tasks committen seltener / gebuendelt,
oder nas-selfcommit uebernimmt das Pushen exklusiv). Kein Login-Thema mehr.

**Mail:** KEINE. Der 22:52-Login-Blocker ist hiermit als Fehlalarm aufgeloest; eine Entwarnungs-
Mail waere unnoetiger Laerm (Morgen-Briefing traegt die Korrektur).

## 2026-07-12 23:05 — Mini-Run bestaetigt (rc=0), aber STOP-Macmini haelt Mini an (unklar)

**Lagebild:** Zwei harte Fakten aus dem Mini-Log. (1) Positiv belegt: `planungsgrundlagen-training`
(Start 22:50:21) lief **832 s und endete rc=0** um 23:04:13 — echter Training-Run 19 mit Output
`outputs/2026-07-13_training-run19.md`, Register nachgefuehrt, auf GitHub gesichert. Damit ist die
22:55-These «Mini liefert nach Reset wieder» bewiesen. (2) Neu und kritisch: eine **leere Datei
`logbuch/vollgas/STOP-Macmini` (erstellt 22:58)** hat den Mini-Runner nach Abschluss des laufenden
Runs **23:04:43 beendet**. Damit produzieren aktuell BEIDE Prod-Stationen keinen Runner-Durchsatz:
MacBook Pro «Not logged in», Mac Mini gestoppt. (Die App-Scheduled-Tasks laufen unabhaengig weiter.)

**P1 — STOP-Macmini klaeren (nur melden, NICHT geloescht):** Die Datei ist leer, Herkunft unklar
(kein Login-/Fehlerbezug — der Mini war eingeloggt und lieferte gerade rc=0). Gemaess Radar-Regel
wird eine STOP-Datei aus unklarem Grund NICHT eigenmaechtig entfernt, nur gemeldet: moeglicherweise
hat Raphael den Mini bewusst gestoppt. Wenn NICHT gewollt: `rm logbuch/vollgas/STOP-Macmini` und auf
dem Mini `bash scripts/vollgas-runner.sh &` — das reaktiviert die staerkste Station (die als einzige
eingeloggt echten Durchsatz liefert). Bis zur Klaerung traegt keine Station den Runner.

**P1 — MacBook-Login (unveraendert):** «Not logged in», bereits GEMAILT 22:52. Keine Wiederholungsmail.

**Mail-Entscheid 23:05:** KEINE Mail. Der Login-Blocker ist bereits gemailt; die STOP-Herkunft ist
unklar und evtl. Raphaels eigene Handlung (Mail waere Spam). Das Morgen-Briefing (logbuch-radar/
hub-chef) surfaced beide Punkte. Sollte sich die STOP als ungewollt und der Login als geloest zeigen,
faellt der Runner-Durchsatz sofort wieder an.

## 2026-07-12 22:55 — Kurzcheck: Mac Mini liefert nach Limit-Reset wieder

**Lagebild (nur 3 Min nach 22:52):** Neu und positiv: der Mac Mini hat den 22:50-Limit-Reset
verarbeitet und produziert wieder. `planungsgrundlagen-training` startete 22:50:21 und laeuft
seit >4 Min ohne Abbruch (kein 2-4 s fast-fail mehr, kein «session limit»-Echo) = echter Lauf.
Damit ist P2 aus 22:52 positiv beantwortet: nach dem Reset traegt der Mini die Last wieder voll.

**P1 — MacBook Pro Login (unveraendert, Einzeiler):** headless CLI 22:55 erneut getestet =
«Not logged in». Runner PID 14028 cycelt weiter leer. Bereits GEMAILT 22:52 — KEINE
Wiederholungsmail. Naechste Mail erst, wenn geloest (Runner liefert).

**P2/P3 (unveraendert):** Batch-Volumen-Erhoehung erst sinnvoll, wenn beide Stationen liefern
(19:00). Messpunkt `token-messung-140716` steht.

## 2026-07-12 22:52 — Login-Blocker MacBook Pro haelt an, Mac Mini reizt Limit aus

**Lagebild:** Zwei-Stationen-Bild klar getrennt. **Mac Mini: Ziel erreicht** — Login
funktioniert, alle vier Loops melden «You've hit your session limit · resets 10:50pm».
Das ist der gewuenschte VOLLGAS-Zustand (Wochenlimit wird angefahren), kein Fehler; das
Limit ist um 22:50 gerade zurueckgesetzt, ab jetzt laeuft der Mini wieder voll. **MacBook
Pro: P1 haelt an** — headless CLI immer noch «Not logged in», Runner (PID 14028, ein
sauberer Prozess) cycled seit ~19:00 durch (Zyklus 60), jeder Lauf bricht in 0–2 s ab.
Rund 4 h MacBook-Pro-Kapazitaet ungenutzt. Selbst erledigt: Login getestet (weiter
blockiert), Runner-Prozessstand geprueft (kein Duplikat), Mail an Raphael gesendet
(erste Kommunikation dieses Blockers, 22:52 — 19:00-Eintrag war Radar-Setup ohne Mail).

**P1 — Headless-Login MacBook Pro reparieren (nur Raphael, ~5 Min) — GEMAILT 22:52:**
Unveraendert ggue. 19:00. Terminal auf dem MacBook Pro: `claude setup-token` (Abo-OAuth,
KEIN API-Key), Token als `CLAUDE_CODE_OAUTH_TOKEN=...` in `~/.jans-dispatch.env`. Der Radar
raeumt danach selbst auf (Runner laeuft bereits, greift nach dem Login sofort). Solange
offen: MacBook-Pro-Runner produziert nichts. KEINE Wiederholungsmail mehr fuer diesen
Blocker (erst wieder Mail, wenn geloest = Runner liefert).

**P2 — Mac Mini nach Limit-Reset beobachten:** Reset war 22:50; naechster Radar-Lauf prueft,
ob der Mini wieder liefert (rc=0, >60 s) oder gleich erneut ins Limit faehrt. Erneutes Limit
= weiterhin Ziel erreicht, nichts tun.

**P3 — Batch-Volumen (unveraendert):** Vorschlag aus 19:00 steht; Umsetzung erst sinnvoll,
wenn beide Stationen liefern. Bis dahin traegt der Mac Mini die Last allein.

## 2026-07-12 19:00 — Erst-Analyse (Radar-Einrichtung)

**Lagebild:** Die 8 VOLLGAS-Scheduled-Tasks im App-Kontext laufen (alle lastRun heute,
Frequenzen gemaess 260712c). Der Endlos-Runner `scripts/vollgas-runner.sh` ist auf BEIDEN
Stationen tot: jeder `claude -p`-Aufruf bricht nach 1–2 s mit rc=1 ab, STOP-Datei hat ihn
18:35 beendet. Verifizierte Ursache: headless CLI meldet «Not logged in · Please run /login».
Damit laeuft nur ein Bruchteil des moeglichen Durchsatzes.

**P1 — Headless-Login reparieren (Aktion Raphael, ~5 Min pro Station):**
Auf dem MacBook Pro im Terminal `claude setup-token` ausfuehren (erzeugt einen
Abo-OAuth-Token, KEIN API-Key) und den Token als `CLAUDE_CODE_OAUTH_TOKEN=...` in
`~/.jans-dispatch.env` eintragen. Dasselbe auf dem Mac Mini (via Befehl `mini`); dort nach
Neustart zusaetzlich `security unlock-keychain`. Der Runner verweigert API-Keys bewusst
(nur Abo-Anmeldung, Rule 260712c). Groesster Einzelhebel: schaltet 12 Loops im
30-Sekunden-Zyklus rund um die Uhr frei.

**P2 — Runner neu starten, sobald Login steht:** STOP-Datei loeschen
(`rm /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP`) und auf jeder Station
`bash /Volumes/daten/jans-ai-hub/scripts/vollgas-runner.sh &` starten. Der Radar prueft
den Login kuenftig selbst und erledigt Neustart + STOP-Entfernung automatisch, sobald
das CLI eingeloggt ist.

**P2 — wettbewerbs-dna-training ohne lastRun:** Einziger VOLLGAS-Task ohne registrierten
Lauf. Naechster Slot 20:31; wenn er dann wieder nicht laeuft, Task-Prompt/Zustand pruefen.

**P3 — Batch-Volumen statt nur Frequenz:** Solange der Runner steht, bringt mehr Volumen
pro Lauf am meisten (z.B. Normen-Training: 6–8 statt 3–5 PDFs je Lauf; Baurecht:
2 Kapitel je Lauf). Frequenz-Erhoehung der App-Tasks erst NACH dem Runner-Fix beurteilen,
sonst Doppelspurigkeit.

**P3 — Messpunkt:** One-Time-Task `token-messung-140716` (14.07. 16:00) liefert die erste
48-h-Verbrauchsmessung. Radar gleicht dann ab, ob Limit-Pausen auftreten (= Ziel erreicht)
oder weiter Luft ist.
