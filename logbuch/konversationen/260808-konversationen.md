# Konversations-Destillat 08.08.2026

Abdeckung: MacBook Pro 42 Sessions · Mac Mini 17 Sessions · Cloud/Dispatch 6 Läufe — Fenster 26 h
(07.08.2026 04:14 bis 08.08.2026 06:14 CEST).

Echte Gespräche mit Raphael im Fenster: Mac Mini 8 Sessions (Vormittag und früher Nachmittag
07.08.), MacBook Pro 12 Sessions (ein einziger Abendblock 07.08. 20:00 bis 22:30). Die übrigen
Sessions sind Routine- und Nachtläufe.

**Methodischer Hinweis zu diesem Lauf:** Der Extrakt `konversations-extract.sh` wählt Sessions
nach Datei-Änderungszeit aus, gibt danach aber die ganze Session aus. Langlebige Sessions, die
im Fenster nur kurz fortgesetzt wurden, schleppen darum Gesprächsinhalte von Ende Juli mit
(Geschirrspüler Saumstrasse 21, Rollen-Taxonomie, Speicher-Analyse, Brandschutz 2408,
Immobilienbewertung Niederhasli, Thalwil Bohlweg 3, KISPI-Fachplaner). Diese Themen sind an
ihrem eigenen Tag bereits destilliert und registriert und stehen hier **nicht** noch einmal.
Die Zuordnung wurde je Session an den Nachrichten-Zeitstempeln der Transkripte geprüft, nicht
am Digest-Kopf.

---

## 1. KISPI 2619 — Auftrag Therapieküche als Haushaltsküche blieb am Sitzungslimit liegen (Mac Mini, 07.08. 15:21)

**Kern & Entscheide:** Raphael beauftragte, die Truninger-Plattform des KISPI nach einem Konzept
der Therapieküchen zu durchsuchen. Ziel wörtlich: die Therapieküche der Wohngruppe der
Therapiestation für Psychosomatische Betreuung von Jugendlichen soll **nicht als
Produktionsküche, sondern als Haushaltsküche** definiert werden. Die Session brach unmittelbar
mit «You've hit your session limit · resets 7pm (Europe/Zurich)» ab, bevor die Recherche
begonnen hatte.

**Offene Punkte & Folgeaktionen:** Der Auftrag ist vollständig unerledigt und muss neu gestartet
werden. Sachlich hängt er am bereits geführten Los 273.35 Küchenbau (Röthlisberger AG,
Rahmenbudget CHF 70'000 exkl. MwSt), denn die Einstufung Haushaltsküche statt Produktionsküche
entscheidet über Geräteumfang, Gastro-Anforderungen und damit über die Kosten.

**Radar-relevant: ja** — offener fachlicher Auftrag mit Projektbezug und Kostenwirkung, im
Register noch nicht geführt.

---

## 2. Normensammlung abgeglichen und 39 Normen ins Archiv übernommen (Mac Mini, 07.08. 10:41 bis 11:51)

**Kern & Entscheide:** Raphael liess seinen Downloads-Ordner «01 Normen» (544 Dateien) gegen die
Normenbibliothek PL - 02_Recht_Norm (658 Dateien) abgleichen. Befund: 40 Dateinamen trugen ein
unsichtbares Sonderzeichen als Ersatz für den Schrägstrich (alter Mac-Export) — genau dahinter
versteckten sich fast alle Neuzugänge. Nach Raphaels Umbenennung auf Unterstrich lief ein
`/tiefenrecherche`-Lauf mit parallelen Agenten und fand 13 zusätzliche Kandidaten sowie zwei
Fehlmeldungen des Vortages (SIA 416/1:2007 ist doch im Haus; die upi-Hefte sind nur die
italienischen Fassungen der vorhandenen bfu-Dokumente).

Ergebnis nach Freigabe: **39 am Titelblatt verifizierte Dateien übernommen** — 30 aktuelle
Ausgaben nach `SIA_Norm/SIA_Normen/alle/`, 9 abgelöste nach `alle/xalt/`. Neuzugänge unter
anderem SIA 118-C1:2026 (Korrigenda), SIA 118/266-1:2017 und 118/266-2:2017 (ersetzen SIA
226:1976), SIA 112/1:2017, SIA 387/4:2017 (ersetzt Teile von SIA 380/4:2006), SIA 281/3:2018,
SIA 118/244, 118/246 und 118/248 (je 2006) sowie 17 deutsche Fassungen bisher nur französisch
vorhandener Normen. Nach `xalt/` verschoben: 118/198:2004, 118/266:2004, 263/1 und 265/1:2003,
281/2:1999, 281/3:2002, 380/4:2006, 385/1:2000, 385/3:1991. Die Datei 162.051_A1 wurde auf das
korrekte Jahr 2004 umbenannt. Alle 39 auf Existenz geprüft, Stichproben byte-identisch.

Register der Normen-KB nachgeführt: 24 Bestand-Spalten gefüllt, drei neue Zeilen, drei
QUESTIONS-Bring-Schulden geschlossen. Der Vertragsordner-Gegenabgleich ergab, dass SharePoint
klar besser bestückt ist (SIA 1001.1/.2/.3:2020, BIM-Zusatz 1001.11:2018, Werkvertrag 1023:2013,
Praktikantenvertrag 2100) und aus Downloads nichts zu übernehmen war.

Auf Raphaels Wunsch nach sofortiger Integration statt Warten auf den Nacht-Loop wurde der
Vorrang-Auftrag zuoberst in `wissen/normen/training/norm-inventar.md` gesetzt. Die Nachtläufe
haben ihn abgearbeitet: Run 47 schloss 9 von 10 P1-Positionen refuter-verifiziert ab (Commits
`6d32b02e`, `ca487f39`, `2745f497`), Run 48 lieferte den kompletten P2-Block mit 17
Erstdestillaten und korrigierte SIA 380/3 auf 1991 (`6639aefa`).

**Offene Punkte & Folgeaktionen:** Für SIA 263/1 und 265/1 fehlen weiterhin die gültigen
deutschen Ausgaben (2013 respektive 2009).

**Radar-relevant:** nein — Auftrag im selben Lauf ausgeführt, keine Frist.

---

## 3. Neuer Command /tiefenrecherche und die ungeklärte Position Suljanovic (Mac Mini, 07.08. 10:28 bis 11:13)

**Kern & Entscheide:** Ausgangsfrage war die Funktion von Igor Suljanovic
(`Igor.Suljanovic@kispi.uzh.ch`), der wiederholt in Kopie steht, zuletzt zu Sanitär-Armaturen
PPTS und Sanitärplänen. Zwei Recherchestufen, davon eine mit drei parallelen Agenten über rund
25 Suchläufe, fanden **keine einzige Fundstelle**, die ihn namentlich mit einer Position
verbindet. Belegt ist nur, dass der Technische Dienst unter COO Claudia Allerkamp geführt wird
und die Bereiche Elektro/Telematik, Gebäudetechnik HLKKS, Gebäudeunterhalt und Medizintechnik
umfasst; das Kispi führt sein technisches Personal öffentlich generell nicht namentlich, was
auch am verifizierten Michael Spörri gegenprobiert wurde.

Aus derselben Session entstand nach Raphaels Frage nach einem zusätzlichen MCP-Connector der
neue Slash-Command **`/tiefenrecherche`** (Commit `26a057cf`): Frage fixieren, drei bis fünf
Suchwinkel bestimmen, je Winkel ein paralleler `recherche`-Agent, Gegenprüfung
entscheidungsrelevanter Befunde, konsolidierter Bericht mit Quellen. Die geprüften Alternativen
wurden begründet verworfen: Perplexity ist durch WebSearch/WebFetch abgedeckt, Firecrawl lohnt
erst bei Massen-Crawling, Playwright ist durch den Browser-Pane redundant, Context7 passt nicht
zum Hub. Der Command war noch am selben Vormittag auf beiden Stationen verfügbar und wurde
zweimal produktiv eingesetzt (Suljanovic, Normensammlung).

**Offene Punkte & Folgeaktionen:** Funktion Suljanovic bleibt ungeklärt; empfohlen ist die
direkte interne Nachfrage bei Michael Spörri, Riccardo Guerini oder Albin Spahic.

**Radar-relevant:** nein — Informationslücke ohne Termin und ohne Geldbezug.

---

## 4. IAZI-Landwertbericht Baar gegen UBS RE Local Fact Sheets geprüft (Mac Mini, 07.08. 10:54)

**Kern & Entscheide:** Der geprüfte Bericht ist der generische IAZI/CIFI Location Report für
6340 Baar (Version 1Q26, 8 Seiten); Landwerte sind darin nur eine von acht Seiten. Der
entscheidende Fund betrifft die Vergleichsbasis: **das UBS RE Local Fact Sheet ist selbst
Wüest-Partner-Datenmaterial.** Im eigenen Quellenverzeichnis auf Seite 13 steht, dass
Immobilienpreise, Standort-Ratings, Baulandpreise und Angebotsmengen von Wüest Partner stammen;
UBS ergänzt BFS-, ESTV- und SECO-Statistik und das CIO-Layout. Ein Vergleich «IAZI gegen UBS»
ist damit faktisch «IAZI gegen WP». Methodischer Unterschied: IAZI modelliert hedonisch auf
effektiven Handänderungen, UBS/WP arbeiten mit Nettoangebotspreisen respektive
Inserate-Spektren. Ergebnis als Report in der KB `immobilienbewertung` abgelegt, CHANGELOG
nachgeführt.

**Offene Punkte & Folgeaktionen:** keine.

**Radar-relevant:** nein.

---

## 5. BKP-Nummer für den Gastroplaner (Mac Mini, 07.08. 10:03)

**Kern & Entscheide:** Das BKP 2017 kennt keinen eigenen benannten Code für den Gastroplaner.
Das Honorar läuft unter **BKP 298 Spezialisten 2** (Honorare Gebäude), bei
Betriebseinrichtungs-Logik analog unter BKP 398. Die Anlage selbst ist BKP 258
Kücheneinrichtungen respektive BKP 358. Empfehlung für Devis und Kostenvoranschlag: «BKP 298 —
Spezialisten 2, Gastroplaner» ausweisen; ein Untercode wie 298.6 nur projektintern definiert und
ausdrücklich als solcher gekennzeichnet, da im BKP 2017 nicht vorgesehen.

**Offene Punkte & Folgeaktionen:** keine.

**Radar-relevant:** nein.

---

## 6. SharePoint-Bibliothek IMMO umbenannt, OneDrive-Update-Popup bleibt (Mac Mini, 07.08. 11:20 bis 12:18)

**Kern & Entscheide:** Die Dokumentenbibliothek «IMMO - 02 UBSFS» wurde über die M365-CLI
nativ in **«IMMO - 02 Standort INFO»** umbenannt (List-Id
`4ca10ea9-d45c-4670-adb3-d42a309754a8`); Anzeigetitel und Top-Navigation sind nachgezogen, die
URL bleibt technisch bei `/sites/IMMO/02 UBS FS`, was dem üblichen SharePoint-Verhalten
entspricht. Die lokale Neuverknüpfung des OneDrive-Ordners scheiterte in mehreren Anläufen.
Parallel meldete Raphael ein wiederkehrendes OneDrive-Popup «Aktualisierung verfügbar» trotz
zahlreicher Installationen; vier verwaiste launchd-Dienste einer alten Standalone-Installation
wurden entfernt, das Popup kam laut Raphael dennoch wieder («es kommt wieder»). Die tiefere
Diagnose (App-Store- gegen Standalone-Fassung) brach am Sitzungslimit ab.

**Offene Punkte & Folgeaktionen:** OneDrive-Update-Popup ungelöst. Der lokale Ordner heisst
weiterhin «IMMO - 02 UBSFS», funktional gleichwertig, da SharePoint-seitig korrekt. Eine tote
Altlast unter `~/Library/CloudStorage` («JANS - IMMO - 02 UBS FS») ist identifiziert, aber nicht
bereinigt.

**Radar-relevant:** nein — reines IT-Thema ohne Frist oder Geldbezug.

---

## 7. Cockpit-Server auf dem Mac Mini freigegeben, tote Session-Gruppen gelöscht (Mac Mini, 07.08. 11:53 bis 12:04)

**Kern & Entscheide:** Session-Gruppen mit der Meldung «Sitzung nicht auf dem Datenträger
gefunden» wurden nach Prüfung gelöscht: die Projektordner existieren auf der Maschine nicht
mehr, das darin enthaltene Wissen (SSH-Wege, NAS-IP, Dispatch-Ordner) ist kanonisch im Hub
gesichert (`connectors/hub-setup.mjs`, Rules, Memory). Über `/station-sync` wurde zusätzlich der
seit **31.07.2026** vom Guard zurückgehaltene Sync-Task «Cockpit-Server interaktiv installieren»
sichtbar (Freigabe-Muster Persistenz). Nach Gegenprüfung (Bindung nur an 127.0.0.1, Script
kanonisch auf dem NAS vorhanden, kein bestehender plist) hat **Raphael die Einzelfreigabe
erteilt**; der launchd-Agent `com.jans.cockpit-server` läuft seither auch auf dem Mini
(`http://127.0.0.1:8737/gesund` antwortet «ok»), der Task ist nach `sync-tasks/done/` archiviert.

**Offene Punkte & Folgeaktionen:** keine. Der Registerpunkt «Sync-Task hängt in der
Freigabe-Schwelle» aus dem Radar-Briefing vom 31.07.2026 ist damit erledigt.

**Radar-relevant:** nein, aber **betrifft den Register-Punkt vom 31.07.2026 (Befund 5, Betrieb)**
— dieser kann geschlossen werden.

---

## 8. Doppellauf des Normen-Trainings auf beiden Stationen (Mac Mini, 07.08. 12:16)

**Kern & Entscheide:** Raphael fragte nach dem Aufbau der Claude-Code-Oberfläche und danach, wie
er Doppelläufe vermeidet. Anlass war ein echter Doppellauf: Der Mac Mini startete um 11:52 den
Normen-Destillat-Lauf für die P1-Positionen im kanonischen Repo (bereits committet als «Run 47
Zwischenstand»), das MacBook Pro um 11:54 einen gleichartigen Lauf in einem Git-Worktree
`normen-destillat-p1-a19385`. Beide arbeiteten dieselbe P1-Liste ab und schrieben in dieselben
NAS-Dateien (Inventar-Checkboxen, Destillate, CHANGELOG). Empfehlung: den MacBook-Lauf stoppen,
den Mini-Lauf weiterlaufen lassen, weil er im kanonischen Repo arbeitet.

**Offene Punkte & Folgeaktionen:** Ob der MacBook-Lauf tatsächlich gestoppt wurde, ist aus den
Transkripten nicht belegt; die Commit-Folge des Abends (`ca487f39`, `2745f497`) stammt aus dem
Mini-Strang.

**Radar-relevant:** nein.

---

## 9. Modell-Politik: die Frage des Abends, und das Frontmatter-Feld `model:` ist widerlegt (MacBook Pro, 07.08. 20:37 bis 21:36)

**Kern & Entscheide:** Raphael stellte über den ganzen Abend dieselbe Frage in acht laufenden
Routine-Sessions, wörtlich: «würde auch das haiku modell für routinen sessions reichen? es
scheint mir hier etwas zu arg die tokens zu verbrennen, ich habe 25x fach max usage und bin
immer schnell durch» und später «es ist wahnsinn wie hoch mein verbrauch ist». Auf «in eine
regel schreiben» entstand die neue Rule `rules/modellwahl-routine.md`, im README registriert und
per @-Import eingebunden.

Der harte Befund kam bei der Nachmessung: **über 110 Läufe aus sieben Tagen fuhr jeder
Hauptlauf `claude-opus-5`, auch die Tasks, die das Frontmatter-Feld `model:` bereits trugen.**
Das Feld wirkt nicht — dieselbe Familie wie `enabled:` und `cron_target:`. Die Rule wurde
daraufhin auf das wirksame Muster umgestellt (mechanische Arbeit an einen Subagenten mit
`model: haiku` delegieren, Urteil bleibt im Hauptkontext), auf 2.5 kB gekürzt und in 14
Routine-Tasks als Politik-Block ergänzt (Commit `6ab1333a`). Gemessener Grundkontext: rund
89 kB respektive 25'000 Token je Session, die in jede der rund 40 Tasks fallen — kein
Modellwechsel heilt das.

Weitere Umsetzungen desselben Abends:
- `vollgas-chef-radar` auf 12-Stunden-Takt zurückgenommen, als grösster getaggter
  Einzelverbraucher, auf Freigabe Raphaels (`74a12e25`).
- Deterministischer Vorfilter `scripts/bexio-vorfilter.mjs` gebaut (`a0f7830a`): ein Aufruf
  statt drei, Delta gegen den Vortages-Snapshot, Vorbehalts-Liste mit Alarm; gemessen 1.3 kB am
  ruhigen Tag statt rund 32 kB.
- Modell-Politik in den Zyklus-Prompt von `nachtschicht-run.sh` aufgenommen (`be8d66a7`),
  begründet mit der Messung des Tages: **42 von 53 Fehlläufen sind Kontingent, nur 6 der
  5-USD-Deckel.**
- Für `baurecht-buch-training` wurde die Delegation begründet **verneint** und stattdessen ein
  dreistufiger Block gesetzt (Haiku nur für wiederholbare Mechanik, Fassungsstand, Verdikte,
  Artikeltext und Null-Ergebnisse bleiben im Hauptkontext). Merksatz aus derselben Session: «im
  Zweifel Sonnet».
- Ausnahme bestätigt: `twin-fidelity-review` wird nicht delegiert.

**Offene Punkte & Folgeaktionen:** Der Sync-Task für den Rollout auf die Mini-Tasks ist am
07.08. um 21:21 auf dem Mini gelaufen. Die tatsächliche **Wirkung** der Politik auf den Verbrauch
ist noch nicht gemessen — genau das verlangt die Rule aber selbst (Auto-Verbesserung 260807:
Konfigurationsfelder erst messen, dann glauben). Die erste belastbare Messung ist frühestens
nach einer vollen Nacht möglich.

**Radar-relevant:** nein — internes Kosten- und Effizienzthema.

---

## 10. Wissenscheck-Reparaturrunde und ihr Preis: 477 Zeilen überschrieben (MacBook Pro, 07.08. 20:37 bis 21:03, Nachspiel 23:20 bis 23:45)

**Kern & Entscheide:** Ausgehend von «was sagt mir diese tabelle?» und «alles reparieren»
arbeitete der monatliche Health-Check über 18 KBs seine strukturelle Schuld ab. Umgesetzt:
`baurecht` acht Artikel mit `title:` nachgerüstet (`585b8bb8`) und anschliessend das ganze
Quellenschema auf `sources:`-Arrays standardisiert (`0baa9685`); `koordination` und
`immobilienbewertung` erhielten dokumentierte Schema-Abweichungen in ihrer CLAUDE.md
(`57f6d1d2`); `normen` erhielt ein Frontmatter für REGISTER.md und sechs Stub-Artikel für tote
Backlinks (`f147dac4`, 20:54).

**Genau dieser letzte Commit war der Fehler.** Der Wissens-Chef Run 28 deckte um 23:20 auf, dass
`f147dac4` **drei bestehende established-Destillate überschrieben** hat: `sia-180-2014.md`
(137 Zeilen), `din-1961-2010.md` (299 Zeilen, refuter-verifiziert), `sia-mb-2024-2006.md`
(55 Zeilen), zusammen **477 Zeilen**, dreieinhalb Stunden unbemerkt. Zwei Stub-Titel waren
zusätzlich aus der blossen Normnummer geraten und sachlich falsch: DIN 1961 ist VOB Teil B und
nicht «Elektrische Leitungen», SIA MB 2024 sind die Standard-Nutzungsbedingungen und nicht
«Beton mit Recycling-Gesteinskörnungen». Der Verlust ist zurückgenommen (`86ce9710`,
wiederhergestellt aus `f147dac4^`, drei Falsch-Zeilen im INDEX entfernt).

**Offene Punkte & Folgeaktionen:** **Die Ursache ist nicht behoben** — der Reparaturlauf kann
in der nächsten Nacht dasselbe wieder tun. Zu entscheiden ist, ob er abgesichert wird (kein
Überschreiben vorhandener Dateien, Titel nie aus der Nummer raten, Feldnamen von Feldwerten
unterscheiden) oder stillgelegt, bis das gebaut ist.

**Radar-relevant: ja, aber bereits registriert** — der Punkt steht seit 07.08. 23:20 als eigener
Eintrag zuoberst in `logbuch/fristen.md` («Wissens-Chef Run 28, operativer Befund mit
Wiederholungsrisiko», Status offen, Entscheid Raphael). Keine zweite Zeile nötig.

---

## 11. Baurecht Run 72: eine falsche Umdatierung vollständig zurückgebaut (MacBook Pro, 07.08. 21:26 bis 21:47)

**Kern & Entscheide:** Im Lauf `baurecht-buch-training` wurde um 21:26 ein Nachtrag committet
(`222a1241`), der einen Datumssprung in einer fortgesetzten Sitzung als **defekte Stationsuhr**
deutete und daraufhin einen korrekt datierten Lauf um vier Tage vorverschob: zwei Dateinamen,
neun Dateien mit Datumsangaben, drei Drill-Stempel, dazu Register und Referenzen. Innerhalb von
21 Minuten wurde der Fehler erkannt und vollständig zurückgebaut (`0eb76ef4`).

Beleg für den echten Sachverhalt ist der **native Synology-Log** `selfcommit-202608.log`: er
läuft lückenlos mit dem eigenen `date` der Synology und hängt an keiner Stationsuhr. Run 72 lief
wirklich am 03./04.08.2026, beide Stationsuhren sind NTP-sauber; die Sitzung hatte am 03.08. um
23:44 begonnen und wurde am 07.08. fortgesetzt. Die Commit-Botschaft von `222a1241` bleibt
bewusst falsch stehen, die Historie wird nicht umgeschrieben.

Zwei Lehren wurden in Rule 260730b (1b) verankert: **ein Datumssprung im Verlauf einer Sitzung
ist zuerst verstrichene Zeit, nicht eine defekte Uhr**, und **eine bestehende Datierung wird nie
ohne Beleg umdatiert**. Dazu eine Werkzeugfalle: der Synology-Log ist nicht UTF-8, `grep`
behandelt ihn als binär und **schweigt still**, selbst mit `-c`; zu verwenden ist
`awk 'substr($0,1,10)=="JJJJ-MM-TT"'`.

**Offene Punkte & Folgeaktionen:** keine, der Rückbau ist abgeschlossen und in der
Betriebs-Chronik als 260807c dokumentiert.

**Radar-relevant:** nein.

---

## 12. Ein Korrektur-Lauf löschte den frisch ausgerollten Modell-Politik-Block (MacBook Pro, 07.08. 21:28 bis 21:40)

**Kern & Entscheide:** Commit `69ddb5ff` rollte um 21:28 die Modell-Politik auf die Mini-Tasks
aus. **Vier Minuten später löschte Commit `12ae0d52` sie ersatzlos wieder** — sechs Minuszeilen,
keine Pluszeile, trotz einer Commit-Botschaft, die nur von Umlaut- und Formatkorrekturen
sprach. Vermutete Ursache: ein Korrektur-Lauf hat über einen veralteten SMB-Lesestand gelesen
und zurückgeschrieben. Der Block wurde wiederhergestellt (`d9ab3f56`) und die Mini-Fassung
diesmal direkt aus dem git-Blob geschrieben statt über SMB. Befund, Ursache und Regel stehen in
der Betriebs-Chronik als 260807b.

Aus demselben Strang stammt der zweite Betriebsbefund des Abends (`8c82354b`): **Treiber-Scripts
nie vom NAS-Pfad starten.** Bash liest ein Script inkrementell nach; blippt der Mount, stirbt
der Interpreter genau an der Lesestelle, ohne Fehlermeldung und ohne rc-Zeile. Belegt an zwei
toten `wissens-destillat`-Läufen vom 28.07., die aus dem SSD-Klon mit rc=0 durchliefen. Reichweite
gemessen: 15 Scheduled Tasks; umgestellt ist bisher nur `wissens-destillat`.

**Offene Punkte & Folgeaktionen:** Die Umstellung der übrigen 14 Tasks auf den SSD-Klon ist
**Entscheid Raphael** und offen.

**Radar-relevant:** nein — Betriebsthema ohne Aussenwirkung, gehört in die Chronik, nicht ins
Postfach.

---

## 13. Die vermutete Mount-Härtungslücke auf dem MacBook war ein Fehlalarm (MacBook Pro, 07.08. 21:26 bis 22:26)

**Kern & Entscheide:** Im Lauf wurde zunächst gemeldet, auf dem MacBook Pro fehle
`/etc/nsmb.conf` und damit «die halbe Mount-Härtung»; Raphael stimmte der empfohlenen Korrektur
zu. Die Empfehlung war falsch und wurde ausdrücklich als solche zurückgenommen: der Hub nutzt
bewusst den User-Pfad **`~/Library/Preferences/nsmb.conf`**, der ohne sudo auskommt, und dort
liegt die Härtung seit dem 25.07. vollständig vor (`notify_off=yes`, `mc_on=no`,
`signing_required=no`), beide LaunchAgents geladen. Die Wirkung ist messbar: 36 Stalls am
25.07., 17 am 28.07. als Ausreisser, danach vom 29.07. bis 07.08. nur noch 1 bis 3 pro Tag. Es
gab nichts zu tun, und Raphaels Passwort wurde nie gebraucht.

Auf «hey ich habe eine verbindung zum mac mini hergestellt mach das von hier aus» wurde der
Befund auf dem Mini geprüft und **bewusst nicht übertragen**: `wissens-destillat` läuft dort gar
nicht, die vergleichbare Exposition liegt bei fünf launchd-Agenten, und der einzige mit
relevanter Laufzeit ist `nachtschicht-run.sh`, seit dem 29.07. der einzige Lern-Taktgeber des
Hub. Dessen Log zeigt null NAS- oder Mount-Vorfälle und jeder Zyklus schreibt seine Schlusszeile
«Zyklus beendet» — genau die Zeile, die bei einem im Nachlesen gestorbenen Interpreter fehlt.
Eine vorbeugende Pfadänderung am einzigen Taktgeber gegen null gemessene Vorfälle wäre um 21:45
ein schlechter Tausch gewesen.

**Offene Punkte & Folgeaktionen:** Im Nachtschicht-Log stehen 34 Zyklen mit Exit-Status 1; alle
Guard-Ausstiege des Scripts sind `exit 0`, der Fehler kommt also aus dem Dispatch-Aufruf selbst.
Nicht weiterverfolgt.

**Radar-relevant:** nein.

---

## 14. Cloud und Dispatch

Sechs Dispatch-Läufe im Fenster (07.08. 05:30, 13:30, 21:21, 23:30 sowie 08.08. 02:30 und
05:30). Alle sind automatisierte Nachtschicht-Zyklen respektive der Sync-Task-Rollout der
Modell-Politik auf dem Mac Mini; **kein einziger enthält einen live formulierten Auftrag von
Raphael.** Der Lauf von 13:30 scheiterte mit exit_code 1. Inhaltlich decken sie sich mit den
Routine-Läufen unten (ERCO-Lichtplanungsratgeber für `bauprodukte`, grobkosten Run 13/14,
firmengruendung-ch Handelsregistergebühr).

---

## 15. Routine- und Trainingsläufe ohne Gesprächscharakter

Rund 39 Routine-Läufe im Fenster, im Wesentlichen ohne Besonderheiten: energie-training Run 125
(Minergie-Restbestand PL-02, 15 PDF, 9 Destillate, FAQ F218 bis F221, dazu ein korrigierter
Rechtsstand zur ZH/SZ-Substitutionspflicht), normen Run 47 und 48, twin-mail-training Batch 90,
twin-fidelity-review (Fidelity 40, Wahlfreiheit-Regel korrigiert), grobkosten Run 6-Kandidat
2304 Wädenswil (OneDrive-Dateisperre dokumentiert), firmengruendung-ch (Handelsregistergebühr
AG/GmbH primärquellen-verifiziert: CHF 420 pauschal statt gestaffelt, GebV-HReg),
logbuch-radar, hub-chef, zahlungsabgleich, Debitoren-Verzugscheck, ag-gruendung-monitor,
vollgas-Radar und Frühwarnung, heartbeat, nas-selfcommit.

Zwei Besonderheiten, beide oben ausgeführt: der Datenverlust in der KB `normen` (Thema 10) und
der Doppellauf des Normen-Trainings (Thema 8). Der vollgas-Radar meldete um 00:58 erstmals
**Ampel WARNUNG** (72.5 % bei 64.9 % Wochenfortschritt, Vorsprung +7.7) und behob dabei einen
eigenen Defekt (Selbstkontroll-Toleranz stand mit 11 h gegen den neuen 12-h-Takt, auf 15 h
gesetzt).

---

## Register-Ergänzungen

Eine neue Zeile in `logbuch/fristen.md`: der unerledigte Auftrag Therapieküche Truninger
(Thema 1). Der Befund zum Reparaturlauf der KB `normen` (Thema 10) steht dort bereits und wurde
nicht gedoppelt; der Sync-Task-Punkt vom 31.07. (Thema 7) ist erledigt und als solcher vermerkt.
