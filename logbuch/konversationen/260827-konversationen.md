# Konversations-Destillat 27.08.2026

Abdeckung: MacBook Pro 24 Sessions · Mac Mini 7 Sessions · Cloud/Dispatch 5 Dispatch-Protokolle,
0 remote-tasks/results — Fenster 26 h (26.08.2026 04:13 bis 27.08.2026 06:13 CEST).
Erhoben 27.08.2026 06:13 CEST, MacBook Pro. Beide Stationen erreichbar, ssh zum Mac Mini trug.

## Kernbefund: kein einziges echtes Gespräch im Fenster

Alle 31 Sessions beider Stationen waren automatische Läufe — Scheduled Tasks auf dem MacBook Pro,
Nachtschicht-Dispatch auf dem Mac Mini. **Es gibt in diesem Fenster keine Eingabe von Raphael.**
Die im Rohextrakt als «RAPHAEL:» erscheinenden Zeilen sind durchweg Maschinen-Text: Stop-Hook-
Rückmeldungen, Skill-Argumente aus dem Task-Aufruf, die Heartbeat-Probe «Antworte nur mit: OK»
(zweimal) und Bild-Lesevorgänge innerhalb des Normen-Trainingslaufs. Auf dem Mac Mini ist jede
«RAPHAEL:»-Zeile der wortgleiche Nachtschicht-Prompt des Dispatch-Runners.

Das Fenster ist damit das zweite arbeitsfreie in Folge (siehe Destillat 26.08.).

## Operative Blocker, die im Automatikbetrieb sichtbar wurden

Diese Punkte sind keine Gesprächsthemen, sondern Befunde aus den Routineläufen. Sie stehen hier,
weil sie Geld, Frist oder Erreichbarkeit betreffen — die Ausnahme, die der Auftrag für echte
Blocker vorsieht.

### bexio-Zugang tot — Debitoren-Aufsicht blind, CHF 51'400 unverifiziert (MacBook Pro, 26.08. 08:05)

- Kern: Der Verzugscheck fand denselben Stand wie an den Vortagen. bexio lehnt den Token an allen
  drei Proben mit HTTP 401 ab (Connector, Aussteller auth.bexio.com, Direktprobe api.bexio.com).
  Die Datei `~/.bexio.env` ist unverändert vom 13.06.2026, es wurde kein neuer Token eingetragen.
  Der Token läuft erst am 13.12.2026 ab; die Session dahinter ist serverseitig beendet. Warten hilft
  nicht, nur ein neuer Token. Auf dem Mac Mini nativ per ssh nachgemessen: dort existiert gar keine
  `.bexio.env`, der Ausweichweg trägt also nicht.
- Blind seit 09.08.2026, letzter verifizierter Zahlstatus 08.08. 08:36 — achtzehn Kalendertage.
  Unverifiziert blockiert, alles Stand 08.08.: **CHF 51'400.00 in fünf Positionen**, darunter
  RE-00087 (Kinderspital, CHF 15'000.00, Mahnung 2, Frist 15.07. abgelaufen, in Duplikatsklärung),
  RE-00098 (Kinderspital, CHF 13'600.00, Mahnung 1, Frist 12.08.), RE-00099 (Kinderspital,
  CHF 3'680.00, Mahnung 1, Frist 12.08.) und RE-00101 (Tschopp, CHF 6'000.00, Zahlungserinnerung).
- Offene Punkte: Neuer Personal Access Token durch Raphael — die einzige Aktion, die den Stand löst.
- Radar-relevant: ja, Geldbetrag und abgelaufene Mahnfristen. **Betrifft den bestehenden
  Register-Punkt «bexio-Zugang tot» (fristen.md Z. 3575) sowie die Debitorenzeilen zu RE-00087,
  RE-00098/00099 und RE-00101.** Keine neue Registerzeile — der Stand hat sich nicht bewegt.

### Apple Mail antwortet den vierten Tag nicht auf osascript (MacBook Pro, 26.08. 07:0x bis 08:49)

- Kern: Der `ag-gruendung-monitor` lief um 07:51 erneut in den AppleEvent-Timeout (2 Minuten), exakt
  der Befund vom 25.08. Der Prozess läuft, antwortet aber nicht. Der M365-Connector kann Mail nicht
  ersetzen, er deckt nur SharePoint/Sites ab. Folge: die beiden kritischen Kanäle mail@ (UBS) und
  rj@ (Notariat) waren für den Monitor blind seit 25.08. 06:00.
- Der Hub-Chef hat den Ausfall umgangen und sein Tagesbriefing um **08:49:57 über Graph** an
  rj@raphaeljans.ch versendet, in den Gesendeten nachgemessen (9'263 HTML-Bytes, 5'598 Zeichen
  Fliesstext, kein Leer-Draft). Er hat den Graph-Ersatzweg im selben Lauf fest in
  `skills/hub-chef/SKILL.md`, Phase 6 verankert — der Punkt stand seit 25.08. doppelt belegt offen,
  am 24.08. fiel das Tagesbriefing genau daran ganz aus.
- Offene Punkte: Ursache der Apple-Mail-Blockade lokal auf dem MacBook Pro diagnostizieren
  (TCC-Berechtigungen, Keychain, Mail-Neustart). Der Ersatzweg trägt, die Ursache steht.
- Radar-relevant: ja, Meldekanal. **Betrifft den Register-Nachtrag vom 26.08. 07:0x
  (ag-gruendung-monitor) und den Nachtrag zum Meldekanal.** Bereits erfasst, keine neue Zeile.

### AG-Gründung: der Ball liegt bei Raphael, und zwar als Zahlung (MacBook Pro, 26.08. 07:51)

- Kern: Das UBS-Kapitaleinzahlungskonto ist seit **17.08.2026** eröffnet und verifiziert (IBAN und
  Kontodetails im Register), lag aber acht Tage unbeachtet im Postfach mail@raphaeljans.ch.
  Nächster Schritt ist die Einzahlung von CHF 50'000 — eine externe Handlung, kein Auto-Task —,
  daraus folgt die Kapitalbescheinigung. Der Firmenname «JANS AG» bleibt gegenüber der bestehenden
  «JANS GmbH» blockiert; das Notariat wartet auf eine Namensalternative.
- Offene Punkte: Einzahlung auslösen; Namensalternative gegenüber dem Notariat setzen.
- Radar-relevant: ja, Geld und Verfahrensschritt. **Betrifft die bestehenden Register-Punkte zur
  AG-Gründung (fristen.md Z. 3454 und Z. 3486).** Keine neue Zeile, unverändert offen.

### Tailscale-Wächter auf keiner Station scharf, Wächter-Script hatte einen Defekt (MacBook Pro, 26.08. 09:40)

- Kern: Der Heartbeat-Lauf hat gegen die SKILL.md nachgezählt: das Script deckt nur acht der
  sechzehn definierten Checks ab. Beim Nachfahren der restlichen fand er, dass
  `ch.jans.tailscale-waechter` **weder auf dem MacBook Pro noch auf dem Mac Mini** in `launchctl list`
  erscheint — die Gegenmassnahme aus Rule `auto-verbesserungen` 260824 wurde am 24.08. gebaut und nie
  scharfgestellt. Zusätzlich ein echter Script-Defekt in `update_haengt`: `grep -c` gibt bei null
  Treffern «0» aus **und** beendet sich mit 1, weshalb `|| echo 0` zusätzlich feuerte und `HAENGT`
  zu «0\n0» wurde — jeder Reboot-Warntest starb an einem Fehler statt zu prüfen. Genau diese Warnung
  ist der Sparkle-Fingerabdruck, der als Ursache des Ausfalls vom 20. bis 24.08. gilt. Der Defekt
  wurde im Lauf behoben.
- Ist-Zustand grün: beide Tunnel oben, `ssh mini` und Ping tragen, alle Stempel frisch.
- Offene Punkte: launchd-Job auf beiden Stationen laden; Heartbeat-Check nachrüsten (die gepatchte
  Fassung liegt bereit, der Auto-Mode-Klassifikator blockierte den Schreibzugriff auf
  `scripts/heartbeat.sh`, Rule `wege-und-vollmachten` — Befehl vorlegen statt umgehen).
- Radar-relevant: ja, Erreichbarkeit von aussen ist P1 nach Rule 260824. **Betrifft den bestehenden
  Register-Punkt (fristen.md Z. 3443) und den Nachtrag vom 25.08. 09:4x.** Bereits erfasst.

### KISPI Therapieküche: die Terminkette ist scharf (MacBook Pro Radar, 26.08. 06:5x)

- Kern: Der Werkplan der Therapieküche ist am 25.08. 17:12 von N. Rothe (Röthlisberger/
  Schreinermanufaktur) eingetroffen und stellt eine Kette scharf: Planfreigabe 02.09.,
  Produktionsstart 07.09., Montage 12. bis 16.10.2026. Der Plan lässt ausgerechnet die
  KWC-Armaturen offen — genau den Punkt, den Raphael am 24.08. als besonders zu prüfen bezeichnet
  hatte. Dazu die selbst gesetzte Zusage vom 24.08. 17:10: bereinigtes Terminprogramm bis Ende KW35,
  also **Freitag 28.08.** Solange es fehlt, gilt die einseitig gesetzte Kette des Unternehmers samt
  Freigabefrist.
- Radar-relevant: ja, zwei harte Daten und eine eigene Zusage. **Betrifft die Register-Punkte
  fristen.md Z. 3445 (Zusage 28.08.) und Z. 3447 (Planfreigabe 02.09.).** Vom Radar bereits
  eingetragen, keine neue Zeile.

### Hub-Chef-Lauf 26.08. — ausgeführte Whitelist-Aktionen

- A3: Jegen-Prinzipplan S2 (Bajrami, 07:46) abgelegt. Am Plan nachgelesen statt aus der Mail
  geschlossen: Revision neu 26.08.2026 07:23:42, MD5-Gegenprobe gegen die Fassung vom 14.07.
  verschieden, also echte Neufassung. Kopie in `274.01 08 Korrespondenz/260826 Prinzipplan S2 angepasst/`,
  nichts überschrieben.
- A4: zwei Nachträge im Fristen-Register, `diff` je null Löschungen.
- Radar-relevant: nein, bereits ausgeführt und belegt.

### Homebrew-Wedge der Claude-CLI, sechster Tag (MacBook Pro, 27.08. 00:57)

- Kern: Der Vollgas-Chef-Radar misst die Homebrew-Fassung weiter auf 2.1.231 (wedged), während die
  app-gebündelte CLI auf 2.1.246 steht. Die Probe lief über den Rückfallweg: «OK», rc=0, 5 Sekunden.
  Die PATH-Probe wurde gar nicht erst versucht. Wochenbudget entspannt: 25.08 von 167 Mio teuren
  Token, 15.0 % bei 36.3 % verstrichener Woche, Vorsprung minus 21.3 Punkte, kein Drossel-Anlass.
- Radar-relevant: nein, Hub-internes Werkzeug ohne Frist- oder Zusage-Charakter, ohne Aussenwirkung;
  der Rückfallweg trägt. Der Radar führt den Stand in seinem eigenen Protokoll.

## Routineläufe — Summe

31 automatische Läufe im Fenster, davon auf dem MacBook Pro rund zwanzig Scheduled Tasks
(heartbeat, hub-chef, logbuch-radar, konversations-log, zahlungsabgleich, ag-gruendung-monitor,
tenant-hygiene, twin-fidelity-review, twin-mail-training, wissens-chef, synergie-orchestrator,
normen-training, vollgas-chef-radar zweimal, vollgas-frühwarnung) und auf dem Mac Mini sieben
Nachtschicht-Zyklen. Keine Besonderheiten über die oben genannten Blocker hinaus; alle Läufe
endeten sauber und committet, kein Lauf ist am Kontingent gescheitert.

Vier Läufe mit fachlich gewichtigem Ergebnis, rein wissensintern und darum ohne Radar-Relevanz:

- **normen Run 63** (MacBook Pro): Abdeckungsrunde auf SIA 102:2020, sechs Segmente visuell an
  200-dpi-Renderings, Seitenversatz an S. 5 und S. 30 abgelesen und null. Ergebnis 34 Kern- und
  52 Nebenlücken, ein Fundstellenfehler, **kein einziger falscher Wert**. Dazu die unangenehme
  Antwort auf N62-3: von **310** `established`-Destillaten tragen genau **2** einen Prüfstand, beide
  DIN. Im SIA/VKF-Bestand dieser Station keiner. Kandidatenliste unter
  `wissen/normen/training/n62-3-pruefstand-kandidaten.md`.
- **energie Run 164** (Mac Mini): gewichtigster Fund eine **amtlich abgelöste Fenster-Tabelle** —
  das EnDK-Merkblatt liegt in einer Ausgabe 2021 vor (auf Basis SIA 380/1:2016), welche die bisher
  als geltend geführten Rahmen-Kennwerte von 2002 ablöst; sie floss über 31 Backlinks in
  Bauherren-Antworten. Zehn Fundstellen korrigiert, die Werte waren zudem in andere KBs abgeflossen
  und wurden dort nachgezogen. Weiter: Minergie-Zahlendreher bestätigt (Original P = 46/35, Destillat
  45/36), Fernwärme mit drei statt einem Leistungsband, THGE Wohnen MFH 11,5 statt 11, und der seit
  03.08. offene Widerspruch **E-121-1 entschieden**.
- **energie Run 163** (Mac Mini): KBOB v9.0 nachgezogen (Frontmatter und Fliesstext standen
  auseinander), Freiburger Solarpflicht amtlich mit SGF-Nummern belegt, LSV-Grenzwerte am
  Fedlex-Volltext verifiziert.
- **wissenscheck firmengruendung-ch** (Mac Mini, Phase 1): KB weiterhin sauber, zwei rein
  dokumentarische Punkte — ein veralteter QUESTIONS.md-Vermerk zum GmbH-Artikel und zwei
  Orphan-Artikel (`verwaltungsrat`, `steuern-bei-gruendung`). Report unter
  `wissen/firmengruendung-ch/outputs/2026-08-26_health-check.md`.

## Register-Ergänzungen aus diesem Lauf

**Keine.** Jeder Punkt mit Frist- oder Zusage-Charakter aus diesem Fenster steht bereits in
`logbuch/fristen.md` — bexio (Z. 3575), AG-Gründung (Z. 3454, 3486), Tailscale-Wächter (Z. 3443),
Terminprogramm 28.08. (Z. 3445), Planfreigabe Therapieküche 02.09. (Z. 3447), Apple-Mail-Blockade
(Nachtrag 26.08. 07:0x). Der Radar-Lauf vom 26.08. hat sechs neue Zeilen, vier Statusänderungen und
einen Nachtrag-Block gesetzt; eine Doppelerfassung durch dieses Destillat wäre reines Rauschen.
