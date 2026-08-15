# Vollgas-Frühwarnung — Log

Still-by-default: pro Lauf ein datierter Einzeiler. Mail nur bei echtem Handlungsbedarf.
Werte in Mio Tokens, «teuer» = input + cache_creation + output (die relevante Grösse;
«total» ist von billigem cache_read dominiert).


## 2026-08-15 07:15 — Rohmessung (Bewertung folgt weiter unten im selben Block)

Messzeitpunkt 15.08.2026 07:15 CEST, NAS gemountet. Rekursives Glob inklusive
Subagenten-Transcripts, Zeilenfilter je `timestamp[:10]` gegen ein Achttagefenster,
neun Tage mtime-Vorfilter, Duplikate über (message.id, requestId) ausgeschlossen.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 08.08. | 9.19 | 175.05 | 9.17 | 109.51 | 18.36 |
| 09.08. | 0.62 | 37.17 | 0.00 | 0.00 | 0.62 |
| 10.08. | 0.00 | 0.00 | 1.32 | 19.41 | 1.32 |
| 11.08. | 0.00 | 0.00 | 2.79 | 78.22 | 2.79 |
| 12.08. | 23.17 | 436.21 | 5.22 | 151.88 | 28.39 |
| 13.08. | 12.73 | 276.76 | 4.56 | 112.30 | 17.29 |
| 14.08. | 8.55 | 163.91 | 3.07 | 75.38 | 11.62 |
| 15.08. | 2.09 | 33.99 | 0.48 | 16.90 | 2.57 (Tag läuft erst) |

Auf dem MacBook Pro entfielen am 12.08. 15.52 der 23.17 Mio teuren Tokens auf
Subagenten (67 %), am 13.08. 6.66 von 12.73 (52 %) — der rekursive Glob bleibt der
entscheidende Teil der Messung.

**Blockade-Status: KEINE.** Strukturelle Prüfung über `isApiErrorMessage`,
`type=="error"`, `message.type=="error"` und `apiErrorStatus==429` mit Limit-Text:
kein einziges echtes Usage-/Rate-Limit-Fehlerereignis in den letzten 48 h, auf keiner
der beiden Stationen. Kein Wochenlimit-Vorfall.

**Radar-Herzschlag: LEBT.** `vollgas-chef-radar`-Sessions am 15.08. 00:59, 14.08. 15:17,
14.08. 09:11, 14.08. 00:07 — jüngster Lauf rund 6 h alt, deutlich unter der
Zwölfstundenschwelle.

**Operative Briefings:** `logbuch-radar` heute 07:06 gelaufen (518 kB Session),
`hub-chef-taeglich` 14.08. 09:11 (569 kB), `mahnwesen-verzugscheck` 14.08. 10:08
(243 kB), `zahlungsabgleich-check` 14.08. 09:11 (193 kB). Deliverable-Prüfung siehe
Bewertung unten.

**Lücke im eigenen Log:** zwischen dem 08.08. und dem 13.08. fehlen die Einträge für
den 09.–12.08. Die Verbrauchsmessung zeigt für diese Tage Betrieb (12.08. kombiniert
28.39 Mio), also lief gearbeitet, aber diese Frühwarnung hat vier Tage nichts
protokolliert. Vermerkt als Befund, nicht rekonstruierbar.

### Bewertung

**Meldeschwelle: NICHT erreicht — keine Mail.**

- (a) interaktive Session mit Limit-Ereignis: nein, keine Ereignisse überhaupt.
- (b) Verbrauch: höchster kombinierter Tageswert 28.39 Mio (12.08.), unter der
  35-Mio-Schwelle. Zwei Folgetage über je 18 Mio: 12.08. 28.39 / 13.08. 17.29 — knapp
  nicht erfüllt. Der Trend zeigt seit dem 12.08. konsequent nach unten
  (28.39 → 17.29 → 11.62), also Entspannung, nicht Zuspitzung.
- (c) Wochenkontingent erschöpft: nein.
- (d) Briefing ohne Deliverable: nein, siehe Destillat-/Briefing-Abschnitt.
- (e) Radar-Herzschlag: vorhanden.
- (f) Destillat-Aufwand ohne Wissenszuwachs: siehe unten.
- (g) Korpus-Queue komplett: siehe unten.

### Destillat-Aufsicht

**Fortschritt (Front):** aktueller Korpus `bauprodukte` (Queue-Position 1 von 4,
Quelle `/Volumes/daten/03 Bauprodukte_BKP`). Inventar meldet **37 von 37 Sektionen
erfasst**, 214 Dateien inventarisiert, **1 Datei offen**. Die Erfassungsfront ist also
praktisch geschlossen; die Arbeit liegt jetzt in der Artikelproduktion.

**Ertrag:** KB `wissen/bauprodukte` zählt **15 Artikel**, jüngstes mtime heute
15.08. 02:34 — der Nachtlauf hat geliefert. Spec liegt vor
(`specs/bauprodukte-spec.md`), das Spec-Gate hängt nicht.

**Artikel je Tag** (ermittelt über `git log --name-only`, nicht über mtime):

| Tag | Artikel gesamt | ohne die sechs Twin-Facetten | teuer kombiniert | Stückkosten je Artikel (ohne Twin) |
|---|---|---|---|---|
| 12.08. | 10 | 10 | 28.39 | 2.84 Mio |
| 13.08. | 31 | 25 | 17.29 | 0.69 Mio |
| 14.08. | 14 | 8 | 11.62 | 1.45 Mio |
| 15.08. | 13 | 7 | 2.57 | 0.37 Mio (Tag läuft erst) |

Die Reihe ist gesund: der teuerste Tag (12.08.) war zugleich der ertragsärmste, seither
sinken Verbrauch und Stückkosten gemeinsam. Kein Aufwand ohne Wissenszuwachs.

**Delta-Null-Serie:** der jüngste Lauf-Report in `wissen/bauprodukte/outputs/` mit
einem Delta-Null-Vermerk datiert vom 03.08. («Nichts Neues. Delta an Fachwissen:
Null»). Seither keine Serie — die Artikelzahlen oben belegen das Gegenteil. Keine
Rücktaktung fällig.

**Korpus-Queue:** der Marker «KORPUS-QUEUE KOMPLETT» steht **nicht** in der Datei;
`bauprodukte` ist als «in Arbeit» geführt, die drei Folgekorpora (`buero-projekte`,
`buero-referenzen`, `archiv-fachwissen`) warten. Kriterium (g) nicht erfüllt.
**Nebenbefund:** die Stand-Spalte der Queue ist seit dem 28.07. nicht nachgeführt (sie
nennt 6 Artikel, real sind es 15). Kein Meldegrund, aber die Queue taugt so nicht als
Fortschrittsanzeige — wer den Stand wissen will, muss das Inventar fahren.

**Mittags-Slot Mac Mini (13:30, befristeter Versuch seit 29.07.):** im Gate-Log
`logbuch/speicher/gate-Macmini.log` findet sich zwischen dem 08.08. und heute genau
**ein** 13:30-Eintrag, und der ist eine Abweisung: 09.08. 13:30:18, weiche-nachtschicht
abgewiesen bei 85.5 % Wochenkontingent. Seither kein einziger 13:30-Eintrag mehr —
weder Lauf noch Abweisung. Der Slot ist damit faktisch stumm; ob er technisch noch
getaktet ist, gehört bei Gelegenheit geprüft, ist aber kein Meldegrund.

### Briefing-Deliverables

Alle vier operativen Briefings haben ihr Deliverable erreicht, keines brach ab:

- `logbuch-radar` heute 07:06 gelaufen. **Bewusst ohne eigene Mail** — Samstag, kein
  Punkt verlangte Handeln vor 08:39, der Hub-Chef hatte am 14.08. um 08:51:44 gesendet.
  Das Briefing steht als Abschnitt «Radar-Briefing 15.08.2026» im heutigen Datumsblock
  des Logbuchs. Das ist das Ein-Mail-Prinzip (Rule `auto-verbesserungen` 260803) in
  korrekter Anwendung, kein Ausfall.
- `hub-chef-taeglich` 14.08. 09:11, Mail nachweislich versendet (08:51:44 in
  «Gesendete Elemente», vom Radar unabhängig bestätigt).
- `mahnwesen-verzugscheck` 14.08. 10:08 und `zahlungsabgleich-check` 14.08. 09:11,
  beide durchgelaufen.

**Methodenhinweis für den nächsten Lauf:** ein Subagent hatte für alle vier Sessions
«Mailversand nachweisbar» gemeldet, weil er auf die Zeichenkette `com.apple.mail` und
`send` im Transcript prüfte. Beim `logbuch-radar` waren das durchweg **lesende**
osascript-Aufrufe auf Mailboxen. Die Wortsuche taugt nicht als Versandbeleg; massgeblich
ist, ob die Session ihr Deliverable erreicht hat — die Mail ist nur eine von zwei
zulässigen Formen davon. Gegengeprüft und korrigiert (Rule `auto-verbesserungen`
260729b: Agenten-Befunde nie ungeprüft übernehmen).

### Ergebnis

**STILL — keine Mail.** Kein Kriterium der Meldeschwelle erfüllt: keine Blockade, kein
erschöpftes Wochenkontingent, Verbrauch unter den Schwellen und fallend, Radar lebt,
alle Briefings geliefert, Destillat-Loop liefert Ertrag, Queue nicht komplett.

**Zuletzt gemeldet:** 08.08.2026 07:29. Seither still.

**Schreibkontrolle dieses Eintrags:** `git diff --numstat` nativ auf der Synology
gemessen — erster Versuch 58 Einfügungen / **1 Löschung**. Die Löschung war die
Überschrift des 14.08.-Eintrags: der Anker war im Ersatztext nicht wiederholt worden.
Zeilenexakt repariert, der 14.08.-Block ist vollständig. Genau der Fehlertyp, für den
Rule `auto-verbesserungen` 260811 die Messpflicht eingeführt hat — ohne die Messung wäre
der Verlust unbemerkt geblieben.

## 2026-08-14 07:15 — Rohmessung (Bewertung folgt weiter unten im selben Block)

Messzeitpunkt 14.08.2026 07:15 CEST, NAS gemountet. Rekursives Glob inklusive
Subagenten-Transcripts, Zeilenfilter je `timestamp[:10]` gegen ein Achttagefenster,
neun Tage mtime-Vorfilter, Duplikate über (message.id, requestId) ausgeschlossen.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 07.08. | 43.25 | 354.36 | 9.86 | 134.71 | **53.11** |
| 08.08. | 9.13 | 174.34 | 9.17 | 109.51 | **18.30** |
| 09.08. | 0.62 | 37.17 | 0.00 | 0.00 | **0.62** |
| 10.08. | 0.00 | 0.00 | 1.32 | 19.41 | **1.32** |
| 11.08. | 0.00 | 0.00 | 2.79 | 78.22 | **2.79** |
| 12.08. | 23.17 | 436.21 | 5.22 | 151.88 | **28.39** |
| 13.08. (voll) | 12.73 | 276.76 | 4.56 | 112.30 | **17.29** |
| 14.08. (bis 07:15) | 1.80 | 31.28 | 0.61 | 17.57 | **2.41** |

Alle sechs Überlappungstage reproduzieren die Messung vom 13.08. auf zwei Nachkommastellen
(07.08. 53.11, 08.08. 18.30, 09.08. 0.62, 10.08. 1.32, 11.08. 2.79, 12.08. 28.39) — die
rekursive Methodik ist zum achten Mal stabil. Der 13.08. schloss mit 17.29 kombiniert
(um 07:15 waren erst 5.55 gemessen), also ein ruhiger Tag im Vergleich zum 12.08.

**Blockade-Status: FREI.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429 zusammen mit Limit-Textmuster) findet in den
letzten 24 h auf **beiden** Stationen **null** echte Ereignisse. Die einzigen Treffer im
Achttagefenster stammen vom 08.08. 21:22/21:30 (Wochenlimit, Reset 10.08. 12:00) und sind
mit dem Eintrag vom 08.08. bereits gemeldet und abgeschlossen.

### Bewertung — STILL, keine Mail; alle sieben Kriterien geprüft

| Kriterium | Befund | erfüllt |
|---|---|---|
| (a) interaktive Session mit echtem Limit-Ereignis | 0 Ereignisse in 24 h, beide Stationen | nein |
| (b) kombiniert >35 Mio an einem Tag / >18 Mio an zwei Folgetagen | 13.08. 17.29, 14.08. bis 07:15 erst 2.41; Vorpaar 12./13.08. = 28.39/17.29, der zweite Tag bleibt unter 18 | nein |
| (c) Wochenkontingent in 24 h erschöpft | kein Ereignis | nein |
| (d) operatives Briefing ohne Deliverable | alle vier erreicht (siehe unten) | nein |
| (e) Radar-Herzschlag >12 h alt | Session 00:57, RADAR.md-Einträge 00:57 und 05:30 — 1.8 h alt | nein |
| (f) Destillat verbraucht ohne Fortschritt/Ertrag | neuer Artikel mit 895 Zeilen um 02:42 | nein |
| (g) KORPUS-QUEUE KOMPLETT | 22 Dateien offen | nein |

**Schritt 3 — operative Briefings, alle vier mit Deliverable.** `logbuch-radar` 14.08. 06:55
(191 Zeilen): Fristen-Register und Logbuch nachgeführt, Commit 07:02 («Briefing 14.08.2026,
Stevanovic-Mail versandt, Notariat geantwortet, Trennwand gepaart» plus drei
Register-Abschlüsse), kein eigener Mail-Versand — korrekt nach dem Ein-Mail-Prinzip.
`hub-chef-taeglich` 13.08. 08:53 (182 Zeilen): Mail um 08:53:03 an rj@ nachweislich gesendet
(4'431 Zeichen Body). `mahnwesen-verzugscheck` 13.08. 08:05 (132 Zeilen) und
`zahlungsabgleich-check` 13.08. 08:23 (76 Zeilen): beide mit Registerpflege abgeschlossen,
beide inhaltlich durch den bexio-401-Blocker begrenzt, der als aktive Zeile im Register steht.
Der reguläre Hub-Chef-Slot 08:39 des 14.08. steht zum Messzeitpunkt noch aus.

**Schritt 4 — Radar-Herzschlag vorhanden.** Beide unabhängigen Signale erfüllt: eine
`vollgas-chef-radar`-Session um 00:57 und der zugehörige RADAR.md-Eintrag desselben
Zeitpunkts («Budget 28.8/50.6, 4 KBs mit Delta»), dazu ein Nachtschicht-Eintrag um 05:30.

**Schritt 5 — Liefer-Delta kräftig positiv.** Seit dem letzten Lauf 21 Sach-Commits ohne den
Selfcommit-Takt: normen Run 51, energie Run 129 und 130, twin-mail Batch 93,
twin-fidelity-review (Fidelity 36, erster Blindwert), wissens-chef Run 31, konversations-log,
Synergie-Lauf 06, tenant-hygiene, bauprodukte zweimal. Kein Loop mit Verbrauch ohne Delta —
mit einer Ausnahme.

**Der Defekt bleibt derselbe: `ag-gruendung-monitor`.** Läufe 12.08. 23:35 und 13.08. 05:47,
je 13 Zeilen, beide gestorben an «There's an issue with the selected model (haiku-4-5). It may
not exist or you may not have access to it.» (model_not_found, HTTP 404). Der Hub-Chef hat den
Ausfall am 13.08. selbst vermerkt («AG-Monitor seit 07.08. stumm»), die Frühwarnung am 13.08.
ebenfalls. Damit ist es der **achte Tag ohne Monitor-Lauf** — der Loop, der bei
Kapitalbescheinigung, Beurkundungstermin und 24-Stunden-Fristen eigenständig mailen dürfte.
Kein Meldegrund nach dem Wortlaut (er zählt nicht zu den vier Briefings des Schritts 3) und
bereits von zwei Kanälen gemeldet, deshalb keine Wiederholungsmail. Der Radar hat den Fall auf
dem Tisch; die Reparatur ist ein Einzeiler in der Task-Konfiguration (Modell haiku-4-5 gibt es
auf dieser Station nicht).

**Schritt 5b — Destillat.** (a) Fortschritt: `bauprodukte` 37/37 Sektionen, 214
inventarisiert, **22 offen** — die Front steht seit dem 13.08. still. (b) Ertrag: **11 Artikel**
plus INDEX; in der Nacht kamen `erco-lichtplanung-simulation-berechnung.md` (+152 Zeilen,
23:34) und der neue `erco-lichtplanung-glossar.md` (+895 Zeilen, 02:42) dazu, womit der
ERCO-Ratgeber vollständig destilliert ist. Die stillstehende Front ist hier also kein
Leerlauf, sondern die Folge eines Dokuments, das über drei Läufe geht und erst am Schluss aus
der Offen-Liste fällt. **Alle 11 Artikel tragen `status: emerging`, keiner `established`** —
für die Zitierfähigkeit nach Rule `normen-referenz` Punkt 1b relevant. (c) Delta-Null-Serie:
weiterhin **nicht messbar**, der jüngste Destillat-Lauf-Report unter
`wissen/bauprodukte/outputs/` datiert vom 03.08.; die beiden Reports vom 13.08. stammen aus
dem interaktiven Duschwannen-Rücklauf, nicht aus dem Loop. Der Radar führt diesen Punkt seit
dem 13.08. als P1. (d) Stückkosten: 13.08. voll **0.56 Mio je Artikel** (17.29 Mio auf 31
Artikel laut git, ohne INDEX/QUESTIONS), ohne die sechs Twin-Facetten 25 Artikel = **0.69 Mio**;
14.08. bis 07:15 2.41 Mio auf 9 Artikel = 0.27 (ohne Twin 3 Artikel = 0.80), Tag noch jung.
Spec für den laufenden Korpus vorhanden (`specs/bauprodukte-spec.md`), Spec-Gate hängt nicht.

**Neuer Nebenbefund für den Radar — das Lauf-Gate des Mac Mini protokolliert nicht mehr.**
`logbuch/speicher/gate-Macmini.log` endet am **10.08. 05:30** («ABGEWIESEN weiche-nachtschicht,
Wochenkontingent zu 85.5 % aufgebraucht»). Seither kein einziger Eintrag, obwohl die
Nachtschicht in der Nacht auf den 14.08. zweimal geliefert hat (23:34 und 02:42). Entweder
schreibt das Gate seit vier Tagen nicht mehr, oder die Nachtschicht läuft an ihm vorbei. Beides
ist harmlos für den heutigen Betrieb und deshalb kein Sendegrund, entzieht aber der im Auftrag
verlangten Wochen-Auswertung des **Mittags-Slots 13:30** die Datenbasis: der letzte belegte
13:30-Versuch ist der **09.08.**, und er wurde abgewiesen. Solange das Gate stumm bleibt, lässt
sich Raphaels Entscheid über diesen Slot nicht auf Zahlen stützen.

**Meldeentscheid: STILL.** Kein Kriterium erfüllt, kein Eingriff. Letzte Mail dieser Aufsicht:
08.08.2026 07:29.

## 2026-08-13 07:15 — Rohmessung (Bewertung folgt weiter unten im selben Block)

Messzeitpunkt 13.08.2026 07:15 CEST, NAS gemountet. Zweiter Lauf desselben Tages (der
erste um 02:10, STILL). Rekursives Glob inklusive Subagenten-Transcripts, Zeilenfilter je
`timestamp[:10]`, neun Tage mtime-Vorfilter, Duplikate über (message.id, requestId)
ausgeschlossen.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 05.08. | 12.13 | 252.53 | 5.13 | 67.30 | **17.26** |
| 06.08. | 9.19 | 181.56 | 1.93 | 49.81 | **11.12** |
| 07.08. | 43.25 | 354.36 | 9.86 | 134.71 | **53.11** |
| 08.08. | 9.13 | 174.34 | 9.17 | 109.51 | **18.30** |
| 09.08. | 0.62 | 37.17 | 0.00 | 0.00 | **0.62** |
| 10.08. | 0.00 | 0.00 | 1.32 | 19.41 | **1.32** |
| 11.08. | 0.00 | 0.00 | 2.79 | 78.22 | **2.79** |
| 12.08. | 23.17 | 436.21 | 5.22 | 151.88 | **28.39** |
| 13.08. (bis 07:15) | 4.96 | 124.79 | 0.59 | 11.05 | **5.55** |

Alle sieben Überlappungstage reproduzieren die Messung vom 02:10 auf zwei Nachkommastellen
(06.08. 11.12, 07.08. 53.11, 08.08. 18.30, 12.08. 28.39) — die rekursive Methodik ist zum
siebten Mal stabil. Subagenten-Anteil am teuren Verbrauch heute: MacBook Pro 2.97 von 4.96
(60 %), Mac Mini 0.24 von 0.59.

**Blockade-Status: FREI.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429 zusammen mit Limit-Textmuster) findet in den
letzten 24 h auf **beiden** Stationen **null** echte Ereignisse. Weder 5-Stunden- noch
Wochenlimit.

### Bewertung — STILL, keine Mail; alle sieben Kriterien geprüft

| Kriterium | Befund | erfüllt |
|---|---|---|
| (a) interaktive Session mit echtem Limit-Ereignis | 0 Ereignisse, beide Stationen | nein |
| (b) kombiniert >35 Mio an einem Tag / >18 Mio an zwei Folgetagen | letzte 24 h: 12.08. 28.39, 13.08. 5.55; Vorpaar 11./12.08. = 2.79/28.39 | nein |
| (c) Wochenkontingent in 24 h erschöpft | kein Ereignis | nein |
| (d) operatives Briefing ohne Deliverable | alle erreicht (siehe unten) | nein |
| (e) Radar-Herzschlag >12 h alt | Sessions 01:34 und 01:55, RADAR.md-Eintrag 01:54 — 5.4 h alt | nein |
| (f) Destillat verbraucht ohne Fortschritt/Ertrag | Artikel um 02:38 gewachsen | nein |
| (g) KORPUS-QUEUE KOMPLETT | 22 Dateien offen | nein |

**Schritt 3 — operative Briefings.** Der neue Lauf seit 02:10 ist `logbuch-radar` 07:01
(123 Zeilen): Deliverable erreicht, Register und Journal nachgeführt, vom nativen
Committer um 07:00 gesichert (LOGBUCH.md +104/-0, fristen.md +43/-0, append-only sauber).
Kein eigener Mail-Versand, korrekt nach dem Ein-Mail-Prinzip — der Hub-Chef hatte um
01:41 gemailt. `hub-chef-taeglich` (01:24/01:46), `mahnwesen-verzugscheck` (01:18/01:29)
und `zahlungsabgleich-check` (01:35) waren bereits im 02:10-Lauf mit Deliverable
verifiziert; der reguläre Hub-Chef-Slot 08:39 steht zum Messzeitpunkt noch aus.

**Schritt 4 — Radar-Herzschlag vorhanden.** Beide unabhängigen Signale erfüllt: zwei
`vollgas-chef-radar`-Sessions (01:34, 01:55) und der RADAR.md-Eintrag von 01:51/01:54.

**Schritt 5 — Liefer-Delta.** Kräftig positiv: 41 getaktete Task-Sessions in den letzten
26 h, davon 12 mit eigenem Sach-Commit (normen run50, wissens-chef Run 30, twin-mail
Batch 92, wettbewerbs-dna Etappe 4, methoden-radar, grobkosten-Rücktaktung u.a.). Kein
Loop mit Tokenverbrauch ohne Delta. Ein Defekt bleibt der bereits um 02:10 gemeldete
`ag-gruendung-monitor`-Lauf 01:35 (12 Zeilen, an nicht verfügbarem Modell haiku-4-5
gestorben) — seither kein weiterer Lauf, also kein zweiter Fall.

**Schritt 5b — Destillat.** (a) Fortschritt: `bauprodukte` 37/37 Sektionen, 214
inventarisiert, **22 offen** — unverändert gegenüber 02:10, was bei fünf Stunden Abstand
erwartbar ist. (b) Ertrag: 10 Artikel plus INDEX; `erco-lichtplanung-grundlagen.md` ist um
02:38 auf 154 kB gewachsen, also nach dem letzten Frühwarnungs-Lauf. (c) Delta-Null-Serie:
**nicht messbar** — der jüngste Lauf-Report unter `wissen/bauprodukte/outputs/` datiert vom
03.08., obwohl der Loop seither mehrfach geliefert hat. Der Loop schreibt sein Ergebnis in
den Artikel, aber keinen Report mehr. Für den Radar vermerkt: die Delta-Null-Erkennung
nach Kennzahl (c) hat damit seit zehn Tagen keine Datenbasis und müsste auf das
Artikel-mtime oder den Commit umgestellt werden. (d) Stückkosten 13.08.: 5.55 Mio teuer
auf 27 im Tag geschriebene Wiki-Artikel (git, ohne INDEX/QUESTIONS) = **0.21 Mio je
Artikel**; ohne die sechs Twin-Facetten 21 Artikel = **0.26 Mio**. Bester Wert der Reihe
(02:10-Lauf: 1.04 im Dreitagesmittel), weil der Nachhol-Sturm viel Ertrag in kurzer Zeit
erzeugt hat.

**Abweichung von der Modell-Politik, bewusst:** der Lauf wurde nicht an einen
Haiku-Subagenten delegiert. Das Arbeitsvolumen sind ein Messkript und sechs parallele
Shell-Blöcke — unter der in Rule `modellwahl-routine` bezifferten Schwelle von rund zehn
Werkzeugaufrufen, ab der sich der Kontextaufbau eines Subagenten lohnt.

**Letzte Mail:** 27.07.2026 (Wochenlimit-Ausfall). Seither still.

## 2026-08-13 02:10 — STILL (keine Mail)

Messzeitpunkt 13.08.2026 02:07 CEST, NAS gemountet. **Erster Lauf seit dem 08.08.** — die
Lücke von fünf Tagen ist kein Messfehler, sondern der Aufsichtsausfall, den der Radar um
01:51 belegt hat (gesamte Task-Flotte stand 08.08. bis 12.08. spätabends, Typ: nicht
gefeuert). Rekursives Glob inklusive Subagenten-Transcripts, Zeilenfilter je
`timestamp[:10]` über acht Kalendertage bei neun Tagen mtime-Vorfilter, Duplikate über
(message.id, requestId) ausgeschlossen.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 06.08. | 9.19 | 181.56 | 1.93 | 49.81 | **11.12** |
| 07.08. | 43.25 | 354.36 | 9.86 | 134.71 | **53.11** |
| 08.08. | 9.13 | 174.34 | 9.17 | 109.51 | **18.30** |
| 09.08. | 0.62 | 37.17 | 0.00 | 0.00 | **0.62** |
| 10.08. | 0.00 | 0.00 | 1.32 | 19.41 | **1.32** |
| 11.08. | 0.00 | 0.00 | 2.79 | 78.22 | **2.79** |
| 12.08. | 23.17 | 436.21 | 5.22 | 151.88 | **28.39** |
| 13.08. (bis 02:07) | 3.08 | 68.09 | 0.00 | 0.00 | **3.08** |

Die drei Überlappungstage 06.08. und 07.08. stimmen auf zwei Nachkommastellen mit der
Messung vom 08.08. überein (11.12 und 53.11) — die rekursive Methodik reproduziert sich
zum sechsten Mal. Der 08.08. steht jetzt als voller Tag mit 18.30 statt der damaligen
Teilmessung bis 07:16 (4.32).

**Blockade-Status: FREI.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429 zusammen mit Limit-Textmuster) findet in den
letzten 24 h auf **beiden** Stationen **null** echte Ereignisse. Weder 5-Stunden- noch
Wochenlimit.


### Bewertung — kein Meldegrund, alle sieben Kriterien geprüft

| Kriterium | Befund | erfüllt |
|---|---|---|
| (a) interaktive Session mit echtem Limit-Ereignis | 0 Ereignisse, beide Stationen | nein |
| (b) kombiniert >35 Mio an einem Tag / >18 Mio an zwei Folgetagen | Höchstwert 12.08. mit 28.39 | nein |
| (c) Wochenkontingent in 24 h erschöpft | kein Ereignis | nein |
| (d) operatives Briefing ohne Deliverable | alle vier erreicht (siehe unten) | nein |
| (e) Radar-Herzschlag >12 h alt | RADAR.md-Eintrag 01:51, 20 Min alt | nein |
| (f) Destillat verbraucht ohne Fortschritt/Ertrag | beides bewegt sich | nein |
| (g) KORPUS-QUEUE KOMPLETT | 22 Dateien offen | nein |

**Der Aufsichtsausfall 08.–12.08. ist real, aber bereits gemeldet.** Die Lücke von fünf
Tagen in diesem Log ist derselbe Vorgang, den der Radar um 01:51 als 109-Stunden-Stillstand
der gesamten Task-Flotte belegt hat (Typ: nicht gefeuert). Die Flotte läuft seit 00:51
wieder, als Nachhol-Sturm: sämtliche Registry-Stempel liegen zwischen 22:51 und 00:07 UTC.
Eine zweite Mail zum selben Sachverhalt verstiesse gegen das Ein-Mail-Prinzip; das
Operative daraus trägt der Hub-Chef.

**Schritt 3 — die vier operativen Briefings, alle mit Deliverable:**

- `hub-chef-taeglich` — **Tagesbriefing versendet, unabhängig verifiziert.** Exchange /
  Gesendete Elemente, 13.08.2026 01:41:36, Betreff «Hub-Chef 13.08.26: Drei Entwuerfe
  liegen bereit, einer muss heute raus, und der bexio-Zugang ist tot». Der eine reguläre
  Meldekanal an Raphael funktioniert.
- `logbuch-radar` — Briefing steht im LOGBUCH.md («Radar-Briefing 13.08.2026», 01:32),
  keine eigene Mail, wie vorgesehen.
- `zahlungsabgleich-check` — bewusst abgebrochen mit Befund statt blind weiterzulaufen:
  bexio antwortet HTTP 401, Token gültig bis 13.12.2026, Session serverseitig beendet.
  Das ist ein erreichtes Deliverable, kein Ausfall.
- `mahnwesen-verzugscheck` — gelaufen, konnte aber wegen desselben toten bexio-Zugangs
  nicht prüfen. **Die Debitoren-Aufsicht ist seit dem 08.08. blind**; die Frist RE-00098/99
  (12.08.) ist in der Blindzeit abgelaufen. Bereits im Fristen-Register und im heutigen
  Tagesbriefing — hier nur als Querverweis, nicht als neuer Befund.

**Defekt-Befund (kein Meldegrund, gehört dem Radar): ein Task-Lauf starb an der
Modellwahl.** Der `ag-gruendung-monitor`-Lauf um 01:35 endet nach zwölf Zeilen mit
«There's an issue with the selected model (haiku-4-5). It may not exist or you may not
have access to it.» Die Tagesarbeit war nicht verloren, weil derselbe Task um 01:00 bereits
vollständig durchlief (210 Zeilen, Register auf «Neueinreichung läuft» gesetzt). Die Breite
ist gemessen: **genau ein echter Fall in 48 h**, kein Flächenproblem der Modell-Politik.
Trotzdem ist die Bauform gefährlich — ein Loop, der die mechanische Arbeit an ein nicht
verfügbares Modell delegiert, stirbt bei Schritt null, und das sieht in der Registry aus
wie ein gelaufener Task.

**Schritt 5b — Destillat, Fortschritt und Ertrag bewegen sich beide:**

- FORTSCHRITT: 37/37 Sektionen, 214 Dateien inventarisiert, **22 offen**. Der
  LOGBUCH-Eintrag 12.08. 05:30 belegt die Nachtschicht am ERCO-Ratgeber (S. 250 → 317).
- ERTRAG: 9 Artikel in `wissen/bauprodukte/wiki/`, jüngster
  `erco-lichtplanung-grundlagen.md` vom **12.08. 22:39** — also frisch.
- DELTA-NULL-SERIE: keine. Der Loop liefert, die Reports wandern zuletzt ins LOGBUCH statt
  nach `outputs/` (letzter Report dort 03.08.).
- SPEC: `specs/bauprodukte-spec.md` (28.07.) liegt vor, das Spec-Gate hängt nicht.
- MITTAGS-SLOT 13:30: **diesen Lauf nicht gemessen** — der Pfad des Nachtschicht-Logs auf
  dem Mac Mini stimmt nicht mehr (`~/Library/Logs/nachtschicht*.log` existiert nicht).
  Offen für den nächsten Lauf, nicht geschätzt.

**STÜCKKOSTEN.** Artikel je Tag über `git log --name-only` (nicht mtime), INDEX und
QUESTIONS herausgefiltert: 11.08. **1** · 12.08. **10** · 13.08. **22** (ohne die sechs
Twin-Facetten: 16). Die Tagesquotienten sind derzeit **nicht aussagekräftig**, weil der
Nachhol-Sturm die Arbeit des 12.08. am 13.08. committet hat. Aussagekräftig ist das
Dreitagesmittel: 34.26 Mio teuer auf 33 Artikel = **1.04 Mio je Artikel** (ohne
Twin-Facetten 1.27). Das liegt im Band der bisherigen Reihe.

**Zwei Werkzeug-Fallen, die diesen Lauf beinahe zu Fehlbefunden geführt hätten** — beide
gehören zur Familie «ein leeres Ergebnis ist zuerst eine Aussage über das Werkzeug»:

1. **Gesendete Mails nur in «Sent Messages» zu suchen, findet das Exchange-Konto nicht.**
   Der erste Durchgang meldete für 30 Stunden genau eine gesendete Mail und hätte das
   Tagesbriefing als nicht versendet ausgewiesen — es liegt in «Gesendete Elemente». Ein
   Fehlalarm auf Kriterium (d) wäre die Folge gewesen. Immer beide Ordnernamen abfragen.
2. **`grep` auf die rohen JSONL findet den Task-Opener nicht**, weil die Anführungszeichen
   dort als `\"` escaped sind; ausserdem steht der Opener hinter dem grossen
   CLAUDE.md-Vorspann, ein `head -c 4000` greift zu kurz. Beide Varianten meldeten
   «keine Session» für Tasks, die nachweislich gelaufen sind und committet haben.
   Zusätzlich: die eigene Session muss aus jeder solchen Suche **ausgeschlossen** werden —
   sonst findet man die Suchbegriffe, die man selbst gerade ausgegeben hat (in diesem Lauf
   zweimal passiert, einmal beim Modellfehler, einmal beim Hub-Chef).

**Nächste Mail:** nicht für diesen Befund. Zuletzt gemailt am 08.08. (Verbrauchsspitze
07.08.). Erst wieder bei Erschöpfung, blockierter interaktiver Sitzung, ausgefallenem
Briefing oder totem Radar.

## 2026-08-08 07:16 — GEMELDET (Mail an rj@ gesendet 07:29)

Messzeitpunkt 08.08.2026 07:16 CEST, NAS gemountet. Fünfter Lauf mit rekursivem Glob
(inklusive Subagenten-Transcripts), Zeilenfilter je `timestamp[:10]` über ein Fenster von
acht Kalendertagen bei neun Tagen mtime-Vorfilter, Duplikate über (message.id, requestId)
ausgeschlossen.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 01.08. | 5.70 | 144.47 | 0.82 | 21.38 | **6.52** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. | 22.52 | 514.43 | 9.51 | 179.80 | **32.03** |
| 04.08. | 7.63 | 180.70 | 2.69 | 45.96 | **10.32** |
| 05.08. | 12.13 | 252.53 | 5.13 | 67.30 | **17.26** |
| 06.08. | 9.19 | 181.56 | 1.93 | 49.81 | **11.12** |
| 07.08. | 43.25 | 354.36 | 9.86 | 134.71 | **53.11** |
| 08.08. (bis 07:16) | 3.96 | 109.38 | 0.36 | 11.97 | **4.32** |

Die sechs Überlappungstage (01.08. bis 06.08.) stimmen auf zwei Nachkommastellen mit der
Messung vom 07.08. überein — die rekursive Methodik reproduziert sich zum fünften Mal.

**Der 07.08. ist mit 53.11 Mio kombiniert der teuerste Tag des Fensters** und liegt um
Faktor 4.8 über dem Vortag (11.12) sowie um zwei Drittel über dem bisherigen Wochenhoch
vom 03.08. (32.03). Er überschreitet die Meldeschwelle (b) von ~35 Mio deutlich. Auffällig
ist das Verhältnis teuer/total: 43.25 von 354.36 auf dem MacBook Pro sind 12.2 % teurer
Anteil gegenüber 5.1 % am 06.08. — es wurde nicht nur mehr gearbeitet, sondern teurer
gearbeitet (viel cache_creation statt cache_read, also viele frisch aufgebaute Kontexte).

**Blockade-Status: HART, aber 5-Stunden-Limit, nicht Wochenlimit.** Strukturelle Prüfung
(isApiErrorMessage / type=error / message.type=error / apiErrorStatus 429 zusammen mit
Limit-Textmuster) findet in den letzten 24 h **sieben** echte Ereignisse, alle am 07.08.
auf dem MacBook Pro, alle mit dem Wortlaut «You've hit your session limit» — also das
5-Stunden-Kontingent, **kein** «weekly limit». Zwei aufeinanderfolgende 5-h-Fenster waren
erschöpft:

- **12:19:50 · 12:19:53 · 12:20:46 CEST** — Reset angekündigt auf 13:50 (Europe/Zurich)
- **14:34:34 · 14:34:35 · 15:12:19 · 16:58:27 CEST** — Reset angekündigt auf 19:00 (Europe/Zurich)

(Die Zeitstempel in den JSONL-Transkripten sind UTC; hier durchgehend auf CEST umgerechnet,
wie in allen früheren Einträgen dieses Logs. Die angekündigten Reset-Zeiten sind bereits
Europe/Zurich und bleiben unverändert.)

Betroffene Sitzungen: **`2b6b56ca`** (vier Ereignisse) mit der ersten Eingabe «Manueller
Normen-Destillat-Lauf (Vorrang, Freigabe Raphael) …» — ein von Raphael getippter Prompt,
nach der Typisierung dieses Auftrags also **INTERAKTIV**; dazu zwei seiner Subagenten
(`agent-add2243a…`, `agent-a94f9470…`, beide Destillat-Autor SIA 112/1:2017); und
**`94c458ae`** um 16:58, die Session des `vollgas-chef-radar` — die Aufsicht selbst wurde
vom Limit getroffen. Kriterium (a) ist damit erfüllt, Kriterium (c) nicht.

**Ursache des 07.08.: EIN einzelner Subagent, nicht die Grundlast.** Aufschlüsselung des
teuren Verbrauchs nach Session (global dedupliziert über message.id/requestId, also ohne
die Wiederholungszeilen der Fehlversuche):

| Session | teuer | Anteil MacBook Pro |
|---|---|---|
| `agent-a94f9470` Destillat-Autor SIA 112/1:2017 (14:10–14:34) | **17.49 Mio** | 40 % |
| `agent-add2243a` Destillat-Autor SIA 112/1:2017 (12:10–12:19) | **6.24 Mio** | 14 % |
| übrige Normen-Rollen (Refuter, Segmentleser, Elternsession, SIA 118/26) | ~5.5 Mio | 13 % |
| `wissens-chef` Run 28 samt Ausführenden | ~4.1 Mio | 9 % |
| alle Scheduled Tasks zusammen (baurecht-buch, wissenscheck, wissens-destillat, Radar, normen-nacht, zahlungsabgleich …) | ~3.7 Mio | 9 % |

Der **manuell freigegebene Normen-Destillat-Lauf für SIA 112/1:2017 macht damit rund
29 Mio von 43.25 Mio aus — 68 % des Stationstages** und 55 % des kombinierten Tages. Die
getakteten Loops sind an diesem Ausreisser praktisch unbeteiligt; ihre Summe liegt mit
~3.7 Mio im Rahmen eines normalen Tages.

**Der Mechanismus ist benennbar und wiederholbar.** Der teuerste Subagent
(`agent-a94f9470`, 17.49 Mio in 24 Minuten) hat **199 `Read`-Aufrufe in EINEM
Agenten-Kontext** abgesetzt: die Norm wurde per `pdftotext` in Textstücke im Scratchpad
zerlegt und diese Stücke anschliessend seriell nacheinander in denselben Kontext gelesen.
Jeder weitere Read vergrössert den Kontext, und jeder folgende Zug baut den Cache neu auf —
der Verbrauch wächst dabei nicht linear mit der Seitenzahl, sondern quadratisch. Der
zweite Agent (`agent-add2243a`, 6.24 Mio in 9 Minuten) zeigt dasselbe Muster in kleinerem
Massstab. Beide endeten im 429. Das erklärt zugleich den auffälligen teuer/total-Anteil
von 12.2 % statt 5.1 %: es war viel `cache_creation`, wenig `cache_read`.

Zehn `Destillat-Autor`-Subagenten liefen an diesem Tag; **acht davon blieben mit 0.39 bis
0.61 Mio unauffällig**. Der Ausreisser ist nicht die Rolle, sondern die unbegrenzte
Segmentgrösse bei einer grossen Norm.

**Operative Briefings (Schritt 3): alle haben ihr Deliverable erreicht.** `logbuch-radar`
lief heute 06:55–07:14 CEST (191 Zeilen) und hat abgeliefert — Abschnitt «Radar-Briefing
08.08.2026» im LOGBUCH, Commit `69a7146f`, sechs Registereinträge, still ohne Mail nach
Rule 260803. `hub-chef-taeglich` lief am 07.08. 08:39–09:01 und meldet im eigenen Schlusstext
ausdrücklich «Briefing versendet», mit Gegenprobe, dass alle vier entmailten Loop-Abschnitte
im Datumsblock standen. `mahnwesen-verzugscheck` (08:05–08:09) und `ag-gruendung-monitor`
(07:46–07:55) sind über den Hub-Chef-Lauf belegt; `zahlungsabgleich-check` (08:23–08:28) hat
seinen Report `260807_bexio-Hygiene.md` mit 16'051 Bytes abgelegt.
**Methodischer Vermerk:** drei dieser Sessions weisen eine Lücke von rund 12,7 Stunden auf
(z.B. mahnwesen 08:09 → 20:51). Das ist **kein** Abbruch: Raphael hat die Sessions am Abend
selbst interaktiv fortgesetzt (Schlusstexte zu Modellwahl und `bexio-vorfilter.mjs`). Wer nur
Start- und Endzeit misst, liest hier fälschlich einen Hänger.

**Radar-Herzschlag (Schritt 4): grün.** Jüngster RADAR.md-Eintrag **08.08. 00:58**, Abstand
zum Messzeitpunkt 6 h 18 min, dazu eine belegte Session. Der Radar hat seinen Takt am 07.08.
21:21 von 8 auf **12 Stunden** umgestellt (`50 */12 * * *`) und dabei einen eigenen Defekt
behoben: die Selbstkontrolle stand mit 11 h Toleranz gegen einen 12-h-Takt und hätte ab sofort
bei jedem Regellauf einen Ausfall gemeldet. Der Radar-Lauf vom 07.08. 16:58 war vom Limit
getroffen, hat sich aber um 20:01 und 00:58 wieder gefangen — **kein Aufsichtsausfall**.

**Liefer-Delta der Lern-Loops (Schritt 5): kein Muster (a), kein Muster (b).** Der teure
Normen-Lauf hat trotz seines Preises geliefert (Destillat SIA 112/1:2017, dazu REGISTER-Pflege
und die Vergütungs-/Ausmassgrenzen-Reihe). Das Lauf-Journal weist für den 07.08. fünf
Mini-Nachtschicht-Läufe aus, vier mit rc=0 (02:38 · 05:36 · 21:29 · 23:37, zusammen 14.71 USD)
und **einen mit rc=1**: der **Mittags-Slot 13:30 wurde nach 8 Sekunden mit «Session limit hit»
abgewiesen** — der erste belegte Ausfall dieses Slots seit seiner Einführung, und zwar als
Folgeschaden genau des Normen-Laufs, der zur selben Zeit die beiden 5-h-Fenster leerte. Für den
08.08. bisher zwei Läufe, beide rc=0 (02:35 · 05:36, 6.15 USD).

**Destillat-Aufsicht (zwölfte Erhebung):**
- (a) **Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, 22 offene Dateien** — den
  fünften Tag unverändert, und wieder kein Leerlauf: der Nachtlauf 07.08. 05:36 hat den
  ERCO-Ratgeber von Seite 145 auf **175** fortgeschrieben. Bei grossen Einzelquellen bleibt die
  Seitenmarke das richtige Mass, der Datei-Zähler das falsche.
- (b) **Ertrag: 9 inhaltliche Artikel, alle `emerging`, 0 `established`.** `erco-lichtplanung-
  grundlagen.md` steht bei **67'756 Bytes** (Vortag 66'203). Der Zuwachs ist mit +1'553 Bytes
  deutlich kleiner als am Vortag (+21'164) — die Nacht ging in die Gegenprüfung statt in die
  Breite: drei Seitenzuschreibungen im ERCO-Artikel wurden am Original richtiggestellt (S. 136
  → 137, S. 138 → 139) und ein Norm-Verweis bei der Aufzugs-Elektroschnittstelle nachgetragen.
- (c) **Delta-Null-Serie: 0.** Weder Rücktaktung noch Stilllegung fällig. Gemessen am CHANGELOG,
  nicht am seit dem 03.08. ungenutzten `outputs/`-Verzeichnis.
- (d) **Stückkosten 07.08.: 1.71 Mio teuer je bewegtem Wiki-Artikel** (53.11 Mio kombiniert /
  **31** Artikel, git-Methodik, ohne INDEX und QUESTIONS); ohne die fünf an diesem Tag bewegten
  Twin-Facetten: **2.04 Mio** (26 Artikel). Reihe bisher: 04.08. 0.69 / 1.15 · 05.08. 0.78 / 1.08 ·
  06.08. 0.79 / 1.39 · **07.08. 1.71 / 2.04**. Der Sprung ist der teuerste der bisherigen Reihe
  und **vollständig dem einen Normen-Lauf zuzurechnen**: rechnet man dessen ~29 Mio heraus, liegen
  die Stückkosten bei 0.78 Mio und damit exakt im Band der drei Vortage. Der Loop-Betrieb ist
  nicht ineffizienter geworden.
- **Spec-Gate:** `specs/bauprodukte-spec.md` liegt vor, das Gate hängt nicht. Korpus 1 weiter
  «in Arbeit» (22 Dateien offen), Korpora 2 bis 4 «wartet» — **keine** Komplettmeldung,
  Kriterium (g) nicht erfüllt.
- Kriterium (f) **nicht erfüllt**: Front steht, aber der Ertrag bewegt sich belegt.

**Mittags-Slot 13:30 — vierte Wochenmeldung, erstmals mit einem Ausfall.** An acht von neun
Tagen seit dem 30.07. gefeuert und geliefert; am **07.08. abgewiesen (rc=1, «Session limit
hit», 8 Sekunden, 0.00 USD)**. Der Ausfall liegt nicht am Slot, sondern am Kontingent, das zur
selben Stunde von einem einzelnen manuellen Lauf geleert wurde. Empfehlung an Raphael
unverändert: **der Slot bleibt** — er ist genau die Reserve, die als erste ausfällt, wenn
tagsüber etwas Grosses läuft, und das ist die richtige Reihenfolge.

**Speicher** zum Messzeitpunkt 3'154 MB verfügbar bei Druck **2** (moderat), kein hängender
`claude -p`-Prozess.

**Meldeentscheid: MAIL.** Zwei Kriterien erfüllt — (a) eine von Raphael getippte Sitzung hatte
in den letzten 24 h echte Limit-Fehlerereignisse, und (b) der kombinierte teure Tagesverbrauch
lag am 07.08. mit **53.11 Mio** um mehr als die Hälfte über der 35-Mio-Schwelle. Nicht erfüllt:
(c) Wochenlimit, (d) Briefings, (e) Radar-Herzschlag, (f) Destillat-Stillstand, (g) Queue
komplett. Der Befund ist neu und nicht mit der letzten Mail vom 03.08. identisch: damals ein
Wochenlimit, heute zwei 5-h-Fenster und eine benennbare Einzelursache.
Letzte Mail dieses Loops vor heute: **03.08.2026 22:15**.

**Mail versandt 08.08.2026 07:29:21** an rj@raphaeljans.ch, Apple Mail, Absender rj@, Aptos 12 pt,
Betreff «Vollgas-Frühwarnung: 5-Stunden-Limit zweimal erschöpft, Ursache ist ein einzelner
Subagent». Skill `korrektur` vorher durchlaufen (Rechtschreibung gelb: 15 Umlaute korrigiert;
Layout grün, dazu Jahreszahl bei der ersten Datumsnennung und Einheit hinter 32.03 ergänzt).
**Empfehlung in der Mail ausdrücklich OHNE Drosselung** — kein Task auf `enabled=false`, weil
die getakteten Loops an diesem Tag unbeteiligt sind. Empfohlen ist stattdessen, im
Normen-Harness die Segmentgrösse je `Destillat-Autor` zu deckeln und eine grosse Norm auf
mehrere Agenten mit je begrenztem Seitenbereich zu verteilen, statt sie in einem Kontext
seriell durchzulesen. Die Umsetzung entscheidet Raphael.

**Methodischer Vermerk zur eigenen Arbeit:** die Versandzeit stand hier zunächst mit «07:44»
geschätzt statt gemessen. Der native Synology-Commit um 07:30:01 enthielt den Eintrag bereits,
was die Zahl widerlegte; beide Uhren wurden gegengeprüft (Station 07:31:50, NAS 07:31:48, also
kein Uhrenversatz) und die echte Versandzeit aus «Gesendete Elemente» geholt: **07:29:21**.
Rule 260730b gilt auch für Uhrzeiten im eigenen Bericht, nicht nur für Dateidatierungen.

**Keine Wiederholungsmail** für diesen Befund an Folgetagen. Erneut gemailt wird erst bei einer
neuen Erschöpfung, bei einem weiteren interaktiven Limit-Ereignis, bei erschöpftem
Wochenkontingent oder wenn das 199-Reads-Muster trotz Deckelung ein zweites Mal auftritt.

## 2026-08-07 07:15 — ROHMESSUNG (Bewertung folgt weiter unten im selben Block)

Messzeitpunkt 07.08.2026 07:15 CEST, NAS gemountet. Vierter Lauf mit rekursivem Glob
(inklusive Subagenten-Transcripts), Zeilenfilter je `timestamp[:10]` über ein Fenster von
acht Kalendertagen bei neun Tagen mtime-Vorfilter, Duplikate über (message.id, requestId)
ausgeschlossen. Erfasst: **688 Dateien MacBook Pro** / **163 Dateien Mac Mini** im
mtime-Fenster.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 31.07. | 13.20 | 247.91 | 2.44 | 64.83 | **15.64** |
| 01.08. | 5.68 | 143.98 | 0.82 | 21.38 | **6.50** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. | 22.52 | 514.43 | 9.51 | 179.80 | **32.03** |
| 04.08. | 7.63 | 180.70 | 2.69 | 45.96 | **10.32** |
| 05.08. | 12.13 | 252.53 | 5.13 | 67.30 | **17.26** |
| 06.08. | 9.19 | 181.56 | 1.93 | 49.81 | **11.12** |
| 07.08. (bis 07:15) | 1.76 | 38.11 | 0.46 | 16.26 | **2.22** |

Alle sechs Überlappungstage (31.07. bis 05.08.) stimmen auf zwei Nachkommastellen mit der
Messung vom 06.08. überein — die rekursive Methodik reproduziert sich zum vierten Mal in
Folge. Der 06.08. schliesst mit **11.12 Mio kombiniert**, ein Drittel unter dem 05.08.
(17.26) und deutlich unter dem Wochenhoch vom 03.08. (32.03). Der Anteil der Subagenten am
teuren Verbrauch bleibt auf dem MacBook Pro dominant (5.40 von 9.19 Mio, 59 %), fällt auf
dem Mac Mini aber auf 0.14 von 1.93 Mio (7 %) — dort hat in der Nacht auf den 06.08. kein
fan-out-lastiger Loop gearbeitet.

**Blockade-Status: KEINE.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils zusammen mit einem Limit-Textmuster) über
24 h: **null** echte Limit-Fehlerereignisse auf beiden Stationen. Das jüngste bekannte
Ereignis bleibt der 03.08. 09:41 CEST vor dem Reset um 12:00 — seit **rund 94 Stunden** ist
keines mehr aufgetreten. Das Wochenkontingent trägt.

**Operative Briefings (Schritt 3): alle vier haben ihr Deliverable erreicht.** `logbuch-radar`
lief heute 06:55–07:09 und hat abgeliefert (Commit `e166e5e4`, Abschnitt «Radar-Briefing
07.08.2026» im LOGBUCH, vier neue Registerpunkte), still und ohne Mail nach Rule 260803. Der
letzte `hub-chef-taeglich` lief am 06.08. 08:39–08:58 und hat **versandt** — 08:57:46 an rj@,
am Beleg in «Gesendete Elemente» mit 7'678 Zeichen gegengeprüft, also kein Leer-Body.
`mahnwesen-verzugscheck` (06.08. 08:05) steht mit eigenem Abschnitt im LOGBUCH.
`zahlungsabgleich-check` schreibt sein Deliverable nicht ins LOGBUCH, sondern als Report:
`…/30 JANS AI HUB OUTPUT/zahlungsabgleich/2026/260806_bexio-Hygiene.md`, 14'434 Bytes,
geschrieben 06.08. 08:28:51. `ag-gruendung-monitor` (07:46), `mahnwesen` (08:05),
`zahlungsabgleich` (08:23) und `hub-chef` (08:39) sind zum Messzeitpunkt **noch nicht fällig**.

**Radar-Herzschlag (Schritt 4): beide Signale grün.** Jüngster RADAR.md-Eintrag **07.08.
00:57** (Commit `390e3e20` um 01:00), dazu eine belegte Session `vollgas-chef-radar` mit
lastRunAt 00:57. Abstand zum Messzeitpunkt **6 h 18 min**, deutlich unter der 12-h-Schwelle.
Der Radar arbeitet inhaltlich weiter an der Verbrauchsrate: er hat in der Nacht seine eigene
Prognose falsifiziert (Nachtrate 0.59 statt 1.00 Mio/h) und einen Fan-out-Lauf mit rund
4.5 Mio gegen einen Nachtschicht-Slot mit rund 0.2 Mio kalibriert.

**Liefer-Delta der Lern-Loops (Schritt 5): kein Leerläufer, kein Muster (a), kein Muster (b).**
Jeder Loop mit Tokenverbrauch in den letzten 24 h hat einen belegten Commit:
- `normen-training-nacht` Run 46 (01:28, `ee8dc9a6`) — vierte Refuter-Runde GVZ 30.17.3
  **beanstandet**, fehlende Entrauchungsöffnungen Ziff. 4.2.2.4, dazu fünf geschlossene Lücken.
- `wissens-chef` Run 27 (23:11–23:54, `36bcba74`) — ein **erfundener Beleg** im ERCO-Praxisteil
  («Bürolicht UGR ≤ 19») am Original-PDF widerlegt und gestrichen, als neue Fehlerklasse im
  Register geführt und ausdrücklich von der blossen Quellenlücke abgegrenzt. Der Chef prüft
  damit genau das Destillat gegen, das der Destillat-Loop in derselben Nacht schreibt.
- `twin-mail-training` Batch 89 (03:50, `922a1fc3`, rj@ 21.–31.03.2026, 18 Marker),
  `twin-fidelity-review` (06:01, `02241098`), `konversations-log` (06:28, 21'572 Bytes),
  `energie` Nachtschicht Mini 02:37 (`c9d6b082`, Minergie-Produktreglement 2026.1),
  Mini-Nachtschicht 23:31 und 05:35 (ERCO, siehe unten).
- Muster (a) Tokens ohne Liefer-Delta: **keiner**. Muster (b) Delta-Null-Serie: **keiner** —
  `projekt-lessons` bleibt als Nachtschicht-Ziel ausgesetzt (Radar-Entscheid 05.08.).

**Destillat-Aufsicht (elfte Erhebung):**
- (a) **Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, 22 offene Dateien** — Zahl für
  Zahl wie am 04., 05. und 06.08. Der Datei-Zähler steht damit den **vierten** Tag still, und
  wieder ist es kein Leerlauf: beide Nachtläufe arbeiteten im ERCO-Ratgeber (BKP 233) weiter,
  06.08. 23:31 von Seite 120 auf **145** (Leuchtengruppen abgeschlossen), 07.08. 05:35 von 145
  auf **175** (Hauptkapitel «Lichtanwendungen» begonnen, sauberer Stopp vor «Objekt» am
  Original per `pdftotext -f 176` verifiziert). Bei grossen Einzelquellen bleibt die Seitenmarke
  im CHANGELOG das richtige Mass, der Datei-Zähler das falsche.
- (b) **Ertrag: 9 inhaltliche Artikel, alle `emerging`, 0 `established`** — Artikelzahl
  unverändert, aber `erco-lichtplanung-grundlagen.md` ist von 45'039 auf **66'203 Bytes**
  gewachsen (+47 % an einem Tag). Der Ertrag bewegt sich weiter in der Tiefe, nicht in der
  Breite. Die Deckenabstand-0,8-m-Regel steht jetzt an fünf unabhängigen Stellen belegt.
- (c) **Delta-Null-Serie: 0.** Alle vier Nachtschicht-Slots des 06.08. liefen mit rc=0 (02:39 ·
  05:41 · 13:36 · 23:36, zusammen 18.60 USD), die beiden bisherigen des 07.08. ebenfalls (02:38
  und 05:36, 8.06 USD). Weder Rücktaktung noch Stilllegung fällig. **Methodischer Vermerk:** der
  Loop schreibt seit dem 03.08. keine Reports mehr nach `wissen/bauprodukte/outputs/`, sondern
  dokumentiert je Lauf im CHANGELOG und im LOGBUCH. Kriterium (c) ist deshalb am CHANGELOG zu
  messen; wer nur das `outputs/`-Verzeichnis ansieht, liest seit vier Tagen fälschlich «nichts
  geliefert».
- (d) **Stückkosten 06.08.: 0.79 Mio teuer je bewegtem Wiki-Artikel** (11.12 Mio kombiniert /
  14 Artikel ohne INDEX und QUESTIONS); ohne die sechs Twin-Facetten, die der Fidelity-Review
  täglich anfasst: **1.39 Mio**. Reihe bisher: 04.08. 0.69 / 1.15 · 05.08. 0.78 / 1.08 ·
  06.08. 0.79 / 1.39. Die git-Methodik der gestrigen Korrektur reproduziert die beiden
  Vortageswerte **exakt** (04.08. 15 Artikel, 05.08. 22) — sie ist damit bestätigt.
  **Beobachtungspunkt ohne Handlungsbedarf:** der Wert ohne Twin-Facetten springt von 1.08 auf
  1.39, weil die Zahl der bewegten Artikel sich halbiert hat (16 auf 8), während der Verbrauch
  nur um ein Drittel fiel. Eine Nacht mit einer einzigen tiefen Quelle bewegt wenige Dateien —
  ein Effekt der ERCO-Phase, kein Effizienzverlust. Erst wenn die Reihe drei Tage in dieser
  Richtung läuft, ist sie ein Befund.
- **Spec-Gate:** `specs/bauprodukte-spec.md` liegt vor, das Gate hängt nicht. Korpus 1 weiter
  «in Arbeit» (22 Dateien offen), Korpora 2 bis 4 «wartet» — **keine** Komplettmeldung,
  Kriterium (g) nicht erfüllt.
- Kriterium (f) **nicht erfüllt**: die Front steht, aber der Ertrag bewegt sich belegt
  (ERCO 120→175, Artikel +21'164 Bytes). Nicht beides still.

**Mittags-Slot 13:30 — dritte Wochenmeldung, mit geänderter Beweisführung.** Der Slot ist am
06.08. um **13:36** gefeuert, rc=0, 4.71 USD. Damit an acht von acht Tagen seit dem 30.07.
gefeuert und geliefert, wo das Kontingent es zuliess. **Der bisherige Nachweis «der
`gate-Macmini.log` weist keine Abweisung aus» ist nicht mehr gültig**, und zwar nicht, weil es
Abweisungen gäbe, sondern weil der Log tot ist: er endet unverändert am **03.08. 13:30**
(mtime nachgemessen), inzwischen also seit vier Tagen. Dieselbe Protokolllücke war am 05.08.
für den Mini und am 06.08. für das MacBook festgestellt worden — sie ist auf beiden Stationen
stabil. Der Nachweis stützt sich ab sofort auf das Lauf-Journal (`rc=0`, `cost_usd`), also auf
die Wirkung statt auf das Protokoll. Empfehlung an Raphael unverändert: **der Slot bleibt.**

**Zum operativen Tag, ausserhalb meines Auftrags, nur zur Einordnung.** Der Radar hat heute früh
den verstrichenen Eingabetermin Bohlweg 3 (06.08., nicht eingereicht) festgestellt und ihn
regelkonform ins Fristen-Register geschrieben — er steht dort zuoberst. Der Punkt ist damit im
richtigen Kanal und beim Hub-Chef um 08:39; für diese Frühwarnung ist er kein Meldegrund,
sondern der Beleg, dass Rule 260805 an genau dieser Sache jetzt greift.

**Meldeentscheid: KEINE Mail.** Von den sieben Kriterien ist **keines** erfüllt: kein
interaktives Limit-Ereignis (a — null Fehlerereignisse in 24 h auf beiden Stationen), kein Tag
über 35 Mio kombiniert und keine zwei Folgetage über je 18 Mio (b — der letzte volle Tag 06.08.
liegt mit 11.12 klar darunter, der höchste Wert im Fenster bleibt der 03.08. mit 32.03), kein
erschöpftes Wochenkontingent in 24 h (c), kein verfehltes Briefing-Deliverable (d — alle vier
belegt), Radar-Herzschlag 6 h 18 min alt (e), Destillat-Ertrag bewegt sich belegt (f), keine
Komplettmeldung der Queue (g). Speicher zum Messzeitpunkt 3'937 MB verfügbar bei Druck 1, kein
hängender `claude -p`-Prozess. Die einzige neue Feststellung — der Gate-Log ist auf beiden
Stationen seit vier Tagen tot und taugt nicht mehr als Nachweis — ist ein Hub-Internum ohne
Aussenwirkung: kein Geld, keine Frist, kein Kunde, kein ausgefallener Lauf. Nach Rule 260803
gehört sie hierhin und nicht ins Postfach. Letzte Mail dieses Loops: **03.08.2026 22:15**.

## 2026-08-06 07:15 — ROHMESSUNG (Bewertung folgt weiter unten im selben Block)

Messzeitpunkt 06.08.2026 07:15 CEST, NAS gemountet. Dritter Lauf mit rekursivem Glob
(inklusive Subagenten-Transcripts), Zeilenfilter je `timestamp[:10]` über ein Fenster von
sieben Kalendertagen bei neun Tagen mtime-Vorfilter, Duplikate über (message.id, requestId)
ausgeschlossen. Erfasst: **685 Dateien MacBook Pro** (davon 454 Subagenten-Transcripts) /
**165 Dateien Mac Mini** (davon 85 Subagenten) im mtime-Fenster.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 31.07. | 13.20 | 247.91 | 2.44 | 64.83 | **15.64** |
| 01.08. | 5.68 | 143.98 | 0.82 | 21.38 | **6.50** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. | 22.52 | 514.43 | 9.51 | 179.80 | **32.03** |
| 04.08. | 7.63 | 180.70 | 2.69 | 45.96 | **10.32** |
| 05.08. | 12.13 | 252.53 | 5.13 | 67.30 | **17.26** |
| 06.08. (bis 07:15) | 2.01 | 56.55 | 0.51 | 20.99 | **2.52** |

Alle fünf Überlappungstage (31.07. bis 04.08.) stimmen auf zwei Nachkommastellen mit der
Messung vom 05.08. überein — die rekursive Methodik reproduziert sich zum dritten Mal in
Folge. Der 05.08. schliesst mit **17.26 Mio kombiniert**, knapp unter der Zweitages-Schwelle
von 18 Mio und deutlich unter dem 03.08. (32.03). Der Anteil der Subagenten am teuren
Verbrauch bleibt dominant: am 05.08. 8.12 von 12.13 Mio auf dem MacBook Pro (67 %) und
3.23 von 5.13 Mio auf dem Mac Mini (63 %) — genau der Block, den die Messung vor dem
03.08.2026 nicht gesehen hat.

**Blockade-Status: KEINE.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils zusammen mit einem Limit-Textmuster) über
36 h: **null** echte Limit-Fehlerereignisse auf beiden Stationen. Das jüngste bekannte
Ereignis bleibt der 03.08. 09:41 CEST vor dem Reset um 12:00 — seit **rund 70 Stunden** ist
keines mehr aufgetreten. Das Wochenkontingent trägt.

**Der Gate-Blocker vom 05.08. ist erledigt.** Die beiden verwaisten Fensterproben (PID 54048
und 87945), die das Lauf-Gate des MacBook Pro dauerhaft dicht hielten, existieren nicht mehr:
`ps -eo pid,ppid,etime,stat,command | grep -E "claude (-p|--print)"` liefert zum Messzeitpunkt
**keinen einzigen** Treffer. Der Beweis der Wirkung steht im Ergebnis, nicht nur im
Prozesstisch: `normen-training-nacht` hat um 01:28 das Gate mit **rc=0** passiert (belegt im
eigenen Report `wissen/normen/outputs/2026-08-06_normen-nacht-run45.md`, Zeile 25) und Run 45
stark geliefert — alle neun offenen `[~]`-Positionen widerlegungsgeprüft, ein neues Destillat
(VKF-Merkblatt 2001-15 in der Vollrevision 2022), vier geschlossene QUESTIONS-Rückstände,
Verdikte 8 x beanstandet / 1 x bestanden. Der Rücktritt von Run 44 bleibt damit ein
Einzelereignis; die befürchtete Monotonie ist nicht eingetreten. Speicher zum Messzeitpunkt
4'625 MB verfügbar bei Druck 1.

**Nachtrag zum Gate-Log — dieselbe Protokolllücke jetzt auch auf dem MacBook Pro.** Der Lauf
um 01:28 hat das Gate nachweislich konsultiert und rc=0 erhalten, `gate-Macbookpro.log` trägt
dazu aber **keine Zeile**; die Datei endet unverändert am 05.08. 09:41 (mtime nachgemessen).
Am 05.08. war genau das für den Mac Mini festgestellt worden. Damit ist der Gate-Log auf
**beiden** Stationen als Nachweis unbrauchbar geworden: die Läufe finden statt, nur ihre
Freigaben werden nicht mehr geschrieben. Kein Handlungsdruck für den Betrieb, aber wer künftig
über das Gate urteilt, muss die Wirkung am Lauf messen, nicht am Log.

**Operative Briefings (Schritt 3): alle in Ordnung.** `logbuch-radar` lief heute 06:55–07:12
und hat sein Deliverable erreicht (Commit `3e92fbf4`, 07:11 — Radar-Briefing im LOGBUCH,
Estermann-Plangrundlage als erledigt belegt, RE-00100-Versandnachweis, zwei RJ-Zusagen für
heute), still und ohne Mail nach Rule 260803. Der letzte `hub-chef-taeglich` lief am 05.08.
08:39–09:19 und hat **versandt** (LOGBUCH Zeile 177, «Hub-Chef-Tagesbriefing 05.08.2026
(08:39, versendet)»). `ag-gruendung-monitor` (07:46), `mahnwesen-verzugscheck` (08:05),
`zahlungsabgleich-check` (08:22) und `hub-chef` (08:39) sind zum Messzeitpunkt **noch nicht
fällig**.

**Radar-Herzschlag (Schritt 4): beide Signale grün.** Jüngster RADAR.md-Eintrag **06.08.
00:57** samt Nachtrag 05:10 (Commits `a7284489` 05:05 und `8d4a1b53` 05:08), dazu eine
belegte Session `vollgas-chef-radar` um 05:09. Abstand zum Messzeitpunkt **rund 2 Stunden**,
weit unter der 12-h-Schwelle. Der Radar hat in derselben Nacht den strukturell wertvollsten
Befund dieser Woche geliefert: er prüfte vier Wochen lang nur **eine von zwei**
Task-Registries, während der Mac Mini acht eigene Tasks führt und `energie-training` dort
täglich liefert, obwohl seine Datei `enabled: false` trägt.

**Liefer-Delta der Lern-Loops (Schritt 5): kein Leerläufer.**
- Geliefert: `normen-training-nacht` Run 45 (01:28, siehe oben), `twin-mail-training` Batch 88
  (03:50, rj@ 16.–31.01.2026, 12 Marker), `twin-fidelity-review` (06:07, Bitte-Form-Skala,
  Mitleser-Regel Du/Sie), `wissens-chef` Run 26 (23:52), `konversations-log` (06:24),
  `logbuch-radar` (07:11), Mini-Nachtschicht 02:39 (ERCO Seite 95→120, Commit `be03e5e4`) und
  05:41 (Nullbefund `grobkosten` mit zweitem Plausibilitätsargument, dazu ein seit 05:30
  hängender Rebase-Stau im NAS-Selfcommit erkannt und über den nativen SSH-Pfad bereinigt,
  `ef89e4f3`).
- Muster (a) Tokens ohne Liefer-Delta: **keiner**. Der einzige Kandidat des Vortags
  (`normen-training-nacht`) hat heute geliefert — der Verdacht war korrekt als
  fremdverschuldet eingeordnet und hat sich mit dem Wegfall der Ursache erledigt.
- Muster (b) Delta-Null-Serie: `projekt-lessons` hat nach drei Nullbefunden die
  Leerlauf-Schwelle erreicht und ist vom Radar am 05.08. als Nachtschicht-Ziel **ausgesetzt**
  worden. Genau die vorgesehene Arbeitsteilung: die Frühwarnung stellt fest, der Radar handelt.
  Kein weiterer Loop mit ergebnislosen Läufen in Folge.

**Destillat-Aufsicht (zehnte Erhebung):**
- (a) **Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, 22 offene Dateien** — Zahl
  für Zahl wie am 05.08. und 04.08. Der Datei-Zähler steht damit den dritten Tag still, und
  wieder ist es kein Leerlauf: beide Nachtläufe arbeiteten im ERCO-Ratgeber (BKP 233) weiter,
  05.08. bis Seite 95, heute Nacht von 95 auf **120** (Planungspraxis und
  Licht-visualisieren-Kapitel vollständig, Innenraumbeleuchtung begonnen). Der gestern
  vermerkte Grundsatz bestätigt sich: bei grossen Einzelquellen ist die Seitenmarke im
  CHANGELOG das richtige Mass, der Datei-Zähler das falsche.
- (b) **Ertrag: 9 inhaltliche Artikel, alle `emerging`, 0 `established`** — Zahl unverändert,
  aber `erco-lichtplanung-grundlagen.md` ist auf **45'039 Bytes** gewachsen und heute 02:38
  erneut erweitert. Der Ertrag bewegt sich in der Tiefe, nicht in der Breite.
- (c) **Delta-Null-Serie: 0** für den Destillat-Loop selbst. Alle vier Nachtschicht-Slots des
  05.08. liefen mit rc=0 (02:37 · 05:39 · 13:38 · 23:37, zusammen 15.03 USD). Weder
  Rücktaktung noch Stilllegung fällig.
- (d) **Stückkosten 05.08.: 0.78 Mio teuer je bewegtem Wiki-Artikel** (17.26 Mio kombiniert /
  22 Artikel ohne INDEX und QUESTIONS); ohne die sechs Twin-Facetten, die der Fidelity-Review
  täglich anfasst: **1.08 Mio**. Reihe bisher: 04.08. 0.69 / 1.15 · 05.08. 0.78 / 1.08. Beide
  Werte praktisch stabil.
- **Methodische Korrektur zu (d), gilt ab sofort:** die Artikelzahl je Tag darf **nicht** über
  `find -newermt` (mtime) ermittelt werden. mtime kennt nur die *letzte* Berührung — ein
  Artikel, den der 05.08. geschrieben und der 06.08. erneut angefasst hat, verschwindet
  rückwirkend aus der Bilanz des 05.08. Die mtime-Zählung ergab heute **8** Artikel, die
  Zählung über `git log --since/--until --name-only` **22**; der Fehler betrug also Faktor 2.75
  und hätte die Stückkosten des 05.08. auf 2.16 Mio aufgebläht. Gegenprobe am 04.08.: git
  liefert **15**, exakt den gestern von Hand ermittelten Wert — die gestrige Zahl war korrekt,
  weil jene Dateien nicht noch einmal berührt wurden. Ab sofort gilt git als Quelle.
- **Spec-Gate:** `specs/bauprodukte-spec.md` liegt vor, das Gate hängt nicht. Korpus 1 weiter
  «in Arbeit» (22 Dateien offen), Korpora 2 bis 4 «wartet» — **keine** Komplettmeldung,
  Kriterium (g) nicht erfüllt.
- Kriterium (f) **nicht erfüllt**: die Front steht, aber der Ertrag bewegt sich belegt
  (ERCO 95→120). Nicht beides still.

**Mittags-Slot 13:30 — zweite Wochenmeldung.** Der Slot ist am 05.08. um **13:38** gefeuert,
rc=0, 3.37 USD, 497 s. Damit an sieben von sieben Tagen seit dem 30.07. gefeuert und
inhaltlich geliefert, wo das Kontingent es zuliess. Der `gate-Macmini.log` weist über die
ganze Laufzeit weiterhin **keine** Abweisung des Slots aus. Empfehlung an Raphael unverändert:
**der Slot bleibt.**

**Meldeentscheid: KEINE Mail.** Von den sieben Kriterien ist **keines** erfüllt: kein
interaktives Limit-Ereignis (a), kein Tag über 35 Mio kombiniert und keine zwei Folgetage über
je 18 Mio (b — höchster Wert im Fenster 03.08. mit 32.03, der letzte volle Tag 05.08. mit
17.26 knapp unter der Schwelle), kein erschöpftes Wochenkontingent in 24 h (c), kein
verfehltes Briefing-Deliverable (d), Radar-Herzschlag 2 h alt (e), Destillat-Ertrag bewegt
sich (f), keine Komplettmeldung der Queue (g). Der gestrige P1 hat sich aufgelöst, statt sich
zu wiederholen. Die einzige neue Feststellung — die Gate-Log-Lücke jetzt auf beiden Stationen
— ist ein Hub-Internum ohne Aussenwirkung: kein Geld, keine Frist, kein Kunde, kein
ausgefallener Lauf. Nach Rule 260803 gehört sie hierhin und nicht ins Postfach. Letzte Mail
dieses Loops: **03.08.2026 22:15**.

## 2026-08-05 07:15 — ROHMESSUNG (Bewertung folgt weiter unten im selben Block)

Messzeitpunkt 05.08.2026 07:15 CEST, NAS gemountet. Zweiter Lauf mit rekursivem Glob
(inklusive Subagenten-Transcripts), Zeilenfilter je `timestamp[:10]` über ein Fenster von
neun Kalendertagen, Duplikate über (message.id, requestId) ausgeschlossen. Erfasst:
**1'348 Dateien MacBook Pro / 750 Dateien Mac Mini** im mtime-Fenster.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 28.07. | 26.53 | 298.62 | 3.11 | 73.09 | **29.64** |
| 29.07. | 18.23 | 434.51 | 3.11 | 76.94 | **21.34** |
| 30.07. | 27.98 | 666.04 | 4.32 | 80.45 | **32.30** |
| 31.07. | 13.20 | 247.91 | 2.44 | 64.83 | **15.64** |
| 01.08. | 5.68 | 143.98 | 0.82 | 21.38 | **6.50** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. | 22.52 | 514.43 | 9.51 | 179.80 | **32.03** |
| 04.08. | 7.63 | 180.70 | 2.69 | 45.96 | **10.32** |
| 05.08. (bis 07:15) | 1.42 | 47.06 | 0.73 | 12.43 | **2.15** |

Die Überlappungstage 28.07. bis 03.08. stimmen auf zwei Nachkommastellen mit der Messung
vom 04.08. überein — die rekursive Methodik reproduziert sich. Der 04.08. schliesst mit
**10.32 Mio kombiniert**, dem tiefsten Wert eines vollen Arbeitstages seit dem 01.08.
(6.50) und deutlich unter dem 03.08. (32.03).

**Blockade-Status: KEINE.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils zusammen mit einem Limit-Textmuster)
über 36 h: **null** echte Limit-Fehlerereignisse auf beiden Stationen. Das jüngste
bekannte Ereignis bleibt der 03.08. 09:41 CEST vor dem Reset um 12:00; seit nunmehr
**45½ Stunden** ist kein einziges mehr aufgetreten. Das Wochenkontingent trägt wieder.

**Hauptbefund: das Lauf-Gate des MacBook Pro ist zu, und zwar durch zwei Leichen der eigenen
Aufsicht.** Der `vollgas-chef-radar` startet in jedem 8-h-Slot eine Fensterprobe
`claude -p "Antworte nur mit: OK" --model haiku`. Zwei dieser Proben hängen verwaist:
**PID 54048** (Start 04.08. 16:58, zum Messzeitpunkt **14 h 20 min** alt) und **PID 87945**
(Start 05.08. 00:58, **6 h 20 min**), beide PPID 1, beide um Minuten versetzt zu den
Radar-Slots 16:50 und 00:50. Das Lauf-Gate zählt aktive Läufe mit
`pgrep -f "claude (-p|--print)"`, dieses Muster matcht die Probe, und die Grenze der Station
ist 2. **Zwei hängende Proben = Gate dauerhaft dicht, und die Sperre löst sich nicht von
selbst.** Selbst nachgemessen (`ps -o pid,ppid,etime,stat`), nicht aus dem Vorbefund
übernommen; der Speicher wäre mit 3427 MB frei gewesen.

Die Wirkung ist eng zu ziehen, sonst wird ein Defekt zum Fehlalarm: **genau ein Task
konsultiert das Gate** (`normen-training-nacht`, als einziger von 31 registrierten Tasks). Der
Schaden ist damit **ein ausgefallener Lauf** — Run 44 um 01:28, rc=1, kein Destillat, keine
Verifikation. Alle operativen Briefings fragen das Gate nicht und sind unberührt. Der Mac Mini
hat sein eigenes Gate und ist unberührt. Der Punkt ist nicht die Breite, sondern die
**Monotonie**: heute Nacht um 01:28 stirbt Run 45 auf dieselbe Weise, und der Radar-Slot 08:50
kann eine dritte Leiche hinterlassen.

**Die Bereinigung ist mir verwehrt.** `kill -TERM 54048 87945` wurde vom
Berechtigungs-Classifier abgewiesen — genau wie schon beim Normen-Lauf um 01:28. Der Weg wurde
nicht umgangen. Es braucht Raphaels Hand oder eine Bash-Freigabe. Der Befund steht mit dem
konkreten Befehl bereits im Radar-Briefing 05.08. im `LOGBUCH.md`, das der Hub-Chef um 08:39
als Pflichtlektüre liest — der Meldeweg ist intakt und trägt schneller als eine eigene Mail.

**Operative Briefings (Schritt 3): alle in Ordnung.** `logbuch-radar` lief heute 06:55 und hat
sein Deliverable erreicht (Commit `dc7f3a98`, 07:06, Briefing-Abschnitt im LOGBUCH samt
SVA-Mahnung, Gate-Blocker und belegtem Röthlisberger-Versand). Der letzte abgeschlossene
`hub-chef-taeglich` lief am 04.08. 08:39–08:58 und hat das Briefing versandt — der erste volle
Tag unter der Regel «der Chef ist der einzige reguläre Meldekanal» hat funktioniert.
`ag-gruendung-monitor` (07:46), `mahnwesen-verzugscheck` (08:05), `zahlungsabgleich-check`
(08:22) und `hub-chef` (08:39) waren zum Messzeitpunkt **noch nicht fällig**.

**Radar-Herzschlag (Schritt 4): beide Signale grün.** Jüngster RADAR.md-Eintrag **05.08. 00:57**,
Registry `lastRunAt` 04.08. 22:57 UTC — dasselbe Ereignis, also belegt. Abstand zum
Messzeitpunkt **6 h 18 min**, deutlich unter der 12-h-Schwelle. Nächster Slot 08:57. Bittere
Pointe des Tages: die Aufsicht schlägt, aber sie hinterlässt bei jedem Schlag eine Leiche.

**Liefer-Delta der Lern-Loops (Schritt 5): ein Leerläufer, und der ist fremdverschuldet.**
- Geliefert: `twin-mail-training` (03:49, Batch 87 Lücken-Sweep rj@ Dez 25/Jan 26),
  `twin-fidelity-review` (06:08), `wissens-chef` Run 25 (00:05, Cross-KB über 6 Felder und
  23 Agenten: SIA 493 als seit 30.06.2022 archiviert erkannt, BKP-Phantomcodes 271.10/271.13
  in Skills, Destillaten, Rule und Brandschutz-Template bereinigt), `energie` Run 123 (23:08,
  9 Destillate ecoBKP/eco-bau), Nachtschicht 23:30 und 02:31, `energie` ecoBKP 05:39,
  `logbuch-radar` 07:06.
- Muster (a) **erfüllt bei `normen-training-nacht`**: Lauf gestartet, Tokens verbraucht, kein
  Liefer-Delta. Ursache ist aber nicht ein defekter Loop, sondern der Gate-Blocker oben — nach
  Rule 260729b vor jeder Stilllegungsempfehlung gegengeprüft: der Loop **durfte nicht laufen**.
  Kein Abschaltkandidat. Der Loop hat vorbildlich gehandelt: still zurückgetreten und den
  Grund als 140-zeiligen Report belegt.
- Muster (b) Delta-Null-Serie: **kein** Loop mit mehreren ergebnislosen Läufen in Folge.

**Destillat-Aufsicht (neunte Erhebung):**
- (a) **Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, 22 offene Dateien** — exakt
  wie am 04.08. **Die Front steht still, und das ist hier kein Leerlauf:** beide Läufe
  arbeiteten innerhalb *einer* Datei weiter, dem ERCO-Ratgeber (BKP 233), 04.08. 13:42 von
  Seite 40 auf 53, 05.08. 02:31 von Seite 53 auf 73. Ein Zähler, der Dateien zählt, kann
  40 Seiten Arbeit nicht sehen. Vermerk für künftige Läufe: bei grossen Einzelquellen ist der
  Datei-Zähler das falsche Mass, die Seitenmarke im CHANGELOG das richtige.
- (b) **Ertrag: 9 inhaltliche Artikel, alle `emerging`, 0 `established`** — unverändert in der
  Zahl, aber `erco-lichtplanung-grundlagen.md` wurde heute Nacht **erweitert** (mtime 05.08.).
  Ertrag bewegt sich also, nur nicht in der Artikelzahl.
- (c) **Delta-Null-Serie: 0.** Alle vier Nachtschicht-Slots des 04.08. liefen mit rc=0
  (02:35 `grobkosten` Gegenprüfung zweier bekannter Blocker, 05:35 `bauprodukte`
  Altersregel-Ausschluss, 13:42 ERCO, 23:35 `projekt-lessons` erweiterter Nullbefund «Bauen im
  Betrieb»). Zwei davon sind Nullbefunde — dokumentierte Nullbefunde sind Ertrag, nicht Leerlauf.
  Weder Rücktaktung noch Stilllegung fällig.
- (d) **Stückkosten 04.08.: 0.69 Mio teuer je bewegtem Wiki-Artikel** (10.32 Mio kombiniert /
  15 geänderte Artikel ohne INDEX und QUESTIONS). Zweiter Wert der neuen Reihe nach 03.08.
  Ehrlichkeitsvorbehalt: 6 der 15 sind die Twin-Facetten, die der Fidelity-Review täglich
  anfasst; rechnet man sie heraus, sind es **1.15 Mio je Artikel**. Beide Werte künftig führen.
- **Spec-Gate:** `specs/bauprodukte-spec.md` liegt vor, Gate hängt nicht. Korpus 1 weiter
  «in Arbeit», **keine** Komplettmeldung — Kriterium (g) nicht erfüllt.
- Kriterium (f) **nicht erfüllt**: Front steht, Ertrag bewegt sich (ERCO erweitert). Nicht
  beides still.

**Mittags-Slot 13:30 — Wochenbilanz des Versuchs (seit 29.07., heute eine Woche).** Der Slot
ist an **sechs von sechs** Tagen gefeuert: 30.07. 13:36 · 31.07. 13:36 · 01.08. 13:35 ·
02.08. 13:30 · 03.08. 13:41 · 04.08. 13:42. Inhaltlich geliefert, wo das Kontingent es zuliess
(02.08. fiel in die Wochensperre): 03.08. `projekt-lessons` RE-00087 präzisiert, 04.08. ERCO
Seite 40→53 für 4.23 USD. **Das Lauf-Gate hat ihn nie abgewiesen** — `gate-Macmini.log` weist
über die ganze Laufzeit **eine einzige** Abweisung aus, und die betraf den künstlichen Testlauf.
**Empfehlung an Raphael: der Slot bleibt.** Nebenbeobachtung: seit dem 04.08. schreibt der Slot
keine Gate-Zeile mehr (letzter Eintrag 03.08. 13:30), obwohl er nachweislich lief — die
Protokollierung greift dort nicht mehr, der Lauf schon. Kein Handlungsdruck, aber der Gate-Log
ist für den Mini damit als Nachweis unbrauchbar geworden.

**Meldeentscheid: KEINE Mail.** Von den sieben Kriterien ist **keines** erfüllt: kein
interaktives Limit-Ereignis (a), kein Tag über 35 Mio und keine zwei Folgetage über je 18 Mio
(b, höchster Wert 03.08. mit 32.03), kein erschöpftes Wochenkontingent in 24 h (c), kein
verfehltes Briefing-Deliverable (d), Radar-Herzschlag vorhanden (e), Destillat-Ertrag bewegt
sich (f), keine Komplettmeldung der Queue (g). Der Gate-Blocker ist ein P1-tauglicher Defekt,
aber ein **Hub-Internum ohne Aussenwirkung**: kein Geld, keine Frist, kein Kunde, ein einziger
betroffener Loop. Nach Rule 260803 gehört er ins Logbuch, wo er bereits steht — mit dem
fertigen Befehl, den Raphael ausführen muss. Der Hub-Chef trägt ihn um 08:39 ins Tagesbriefing.
Letzte Mail dieses Loops: **03.08.2026 22:15**.

## 2026-08-04 07:15 — ROHMESSUNG (Bewertung folgt weiter unten im selben Block)

**Methodik-Bruch: erster Lauf mit REKURSIVEM Glob.** Bis und mit dem Eintrag vom 03.08. las
diese Frühwarnung nur `~/.claude/projects/*/*.jsonl`, also ausschliesslich die Hauptsessions
(03.08.: 175 Dateien MacBook Pro / 58 Mac Mini). Heute erstmals rekursiv inklusive der
Subagenten-Transcripts unter `<projekt>/<session>/subagents/agent-*.jsonl`: **2'353 Dateien
MacBook Pro, davon 512 Subagenten-Dateien**, und **3'426 Dateien Mac Mini, davon 77
Subagenten-Dateien** (mtime-Fenster 9 Tage, Zeilenfilter je `timestamp[:10]`, Duplikate über
(message.id, requestId) ausgeschlossen). Die Werte springen dadurch um den Faktor 2 bis 3
nach oben, **ohne dass mehr verbraucht worden wäre** — es wird nur erstmals vollständig
gezählt. Alle Zahlen früherer Einträge sind systematisch zu tief und dürfen nicht gegen
diese Reihe gehalten werden. Die alten Referenzbänder («Drosselphase MacBook Pro
3–15 Mio/Tag teuer») sind damit hinfällig und neu zu bestimmen.

Verbrauch teuer/total je Station (Mio Tokens):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 27.07. | 52.38 | 1058.81 | 10.68 | 236.63 | **63.06** |
| 28.07. | 26.53 | 298.62 | 3.11 | 73.09 | **29.64** |
| 29.07. | 18.23 | 434.51 | 3.11 | 76.94 | **21.34** |
| 30.07. | 27.98 | 666.04 | 4.32 | 80.45 | **32.30** |
| 31.07. | 13.20 | 247.91 | 2.44 | 64.83 | **15.64** |
| 01.08. | 5.68 | 143.98 | 0.82 | 21.38 | **6.50** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. | 22.52 | 514.43 | 9.51 | 179.80 | **32.03** |
| 04.08. (bis 07:15) | 1.52 | 59.07 | 0.33 | 9.95 | **1.85** |

Messzeitpunkt 04.08.2026 07:15 CEST, NAS gemountet. Der 02.08. steht auf exakt 0.00 auf
beiden Stationen — das ist der Wochenlimit-Ausfall, nicht Sparsamkeit.

**Was der Bruch inhaltlich bedeutet (der eigentliche Befund dieses Laufs).** Der reale
Verbrauch liegt rund um den Faktor 2 bis 3 über allem, was diese Frühwarnung bisher gemeldet
hat. Am 27.07. wurden kombiniert **63.06 Mio** teure Token verbraucht, am 30.07. **32.30**,
am 03.08. **32.03** — die Meldeschwelle (b) steht bei 35 Mio und wurde in dieser Reihe fast
erreicht, während die alte Messung für dieselben Tage Werte um 16 Mio auswies. Damit ist
erklärbar, was bisher unerklärt war: dass das Wochenkontingent binnen zehn Tagen **zweimal**
vollständig gerissen ist (26./27.07. 35 h, 01.–03.08. 45.5 h), obwohl die Tageswerte angeblich
im Band lagen. Sie lagen nie im Band — es wurden nur zwei Drittel gezählt. **Konsequenz:** die
Schwellen (b) 35 Mio/Tag beziehungsweise 18 Mio an zwei Folgetagen stammen aus der alten
Messung und sind gegen die neue Reihe zu tief kalibriert; sie schlagen jetzt seltener an, obwohl
mehr gemessen wird. Neubestimmung der Bänder ist Sache Raphaels, nicht dieses Laufs.

**Blockade-Status: keine neue Blockade.** Strukturelle Prüfung (isApiErrorMessage /
type=error / message.type=error / apiErrorStatus 429, jeweils zusammen mit einem
Limit-Textmuster) über 72 h: **28 Sessions MacBook Pro, 12 Mac Mini** mit echtem
Limit-Ereignis, alle mit dem Text «You've hit your weekly limit · resets 12pm
(Europe/Zurich)». **Jüngstes Ereignis 03.08. 09:41 CEST**, also vor dem Reset um 12:00 — seither
kein einziges mehr. Alle Ereignisse gehören zum bereits am 03.08. gemeldeten 45.5-h-Vorfall.
- Kriterium (a) **nicht erfüllt**: die zwei interaktiven Sessions mit Limit-Ereignis datieren
  vom **01.08. 14:28 CEST**, also ausserhalb der 24-h-Frist.
- Kriterium (c) **formal erfüllt** (das Kontingent war bis 03.08. 12:00 erschöpft, das liegt
  21½ h zurück), aber es ist **derselbe Befund wie am 03.08. 22:15** — nach Schritt 7 keine
  Wiederholungsmail.
- Kriterium (b) **nicht erfüllt**: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio
  (03.08. 32.03 steht neben 02.08. 0.00).

**Operative Briefings (Schritt 3): alle in Ordnung.** `logbuch-radar` lief heute 04.08.
06:55–07:08 vollständig durch (179 Ereignisse, 52 Werkzeugaufrufe) und hat sein Deliverable
erreicht — Commit `3a80ebaa` «Briefing ins Logbuch (erster stiller Lauf), Register um drei
Verifikationsbefunde ergaenzt». Das ist der erste Lauf unter der neuen Entmailungs-Regel, und
er hat funktioniert. `hub-chef-taeglich` (08:39), `ag-gruendung-monitor` (07:46),
`mahnwesen-verzugscheck` (08:05) und `zahlungsabgleich-check` (08:22) waren zum Messzeitpunkt
**noch nicht fällig** — kein Ausfall, nur ein Lauf, der früher misst als die Slots feuern.

**Radar-Herzschlag (Schritt 4): vorhanden, beide Signale grün.** Jüngster RADAR.md-Eintrag
**04.08. 00:57**, zugehörige Session belegt (03.08. 22:57 UTC). Abstand zum Messzeitpunkt
6 h 18 min, deutlich unter der 12-h-Schwelle. Der Radar läuft seit 03.08. im 8-h-Takt, nächster
Lauf 08:57.

**Liefer-Delta der Lern-Loops (Schritt 5): kein Leerläufer.** 72 Commits im NAS-Repo seit
03.08. 22:00. Belegte Lieferungen: `normen` Run 43 (5 Refuter-Prüfungen, SWKI-Anhänge D/E/F,
PL-02-Kerninventar auf 69/69 geschlossen), `baurecht-buch-training` (03.08. 22:04),
`twin-fidelity-review` (04.08. 06:28), `twin-mail-training` (04.08. 01:52), `logbuch-radar`
(07:08). Kein Loop mit Tokenverbrauch ohne Delta.

**Nebenbefund aus dem Normen-Lauf:** die Korrektur des nicht existenten BKP-Codes «271.10» auf
**271.0** ist in Referenzliste und Rule vollzogen (Commits 01:35 und 01:53). Die Rule vermerkt
selbst, dass der falsche Code noch in weiteren Hub-Dateien steht — das ist eine offene
Nachzieh-Arbeit für den Hub-Chef, kein Kontingent-Thema.

**Destillat-Aufsicht (achte Erhebung) — Front und Ertrag bewegen sich beide wieder:**
- (a) **Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, 22 offene Dateien** (03.08.:
  **31**). Die Front hat sich um **neun Dateien** bewegt — die stärkste Tagesbewegung seit
  Aufnahme dieser Erhebung. Der 52-h-Stillstand vom 03.08. war die Kontingentsperre, nicht ein
  defekter Loop; das bestätigt die Gegenprüfungs-Pflicht aus Rule 260729b.
- (b) **Ertrag: 9 inhaltliche Artikel**, alle `emerging`, **0 `established`**. Jüngster
  `erco-lichtplanung-grundlagen.md`, **03.08. 23:45** (Lauf 23:30). Heute Nacht kam kein neuer
  Artikel dazu, wohl aber Abschlussarbeit: der 05:35-Lauf hat
  `paustian_mirror_mirror_product_sheet.pdf` regelkonform als «kein Artikel» geschlossen
  (Datenblatt über 10 Jahre alt, kein Konstruktionsprinzip) und QUESTIONS.md um Punkt 13
  ergänzt. Eine korrekt verworfene Position ist Fortschritt, nicht Leerlauf.
- (c) **Delta-Null-Serie: 0.** Beide Nachtläufe (02:35 rc=0, 5.22 USD zusammen mit 05:35)
  haben Inventar, CHANGELOG und QUESTIONS bewegt. Weder Rücktaktung noch Stilllegung fällig.
- (d) **Stückkosten:** 03.08. **9.51 Mio teuer je neuem Artikel** (Mac Mini gesamt, ein neuer
  Artikel) — der Wert ist nach oben verzerrt, weil derselbe Mini-Verbrauch auch `energie`
  (1.44 Mio), `planungsgrundlagen` und `projekt-lessons` bediente. 04.08. bis 07:15 nicht
  berechenbar (0.33 Mio, kein neuer Artikel). **Die bisherige Reihe (31.07. 0.66 · 01.08. 0.41)
  ist mit der alten, zu tiefen Messung gebildet und wird hier abgebrochen; die neue Reihe
  beginnt mit dem 03.08.**
- **Spec-Gate:** `specs/bauprodukte-spec.md` liegt vor (28.07.), Gate hängt nicht. Korpus 1
  `bauprodukte` weiter «in Arbeit», **keine** Komplettmeldung — Kriterium (g) nicht erfüllt.
- Kriterium (f) **nicht erfüllt**: Aufwand ja, aber Front (31→22) und Ertrag (+1 Artikel seit
  der letzten Erhebung) haben sich beide bewegt.
- **Mittags-Slot 13:30 (Versuch seit 29.07.):** hat am 03.08. um 13:41 geliefert (rc=0,
  4.43 USD, `projekt-lessons` RE-00087 um einen konkreteren Blocker ergänzt). Das **Lauf-Gate
  hat ihn nie abgewiesen** — `gate-Macmini.log` weist über die ganze Laufzeit **eine einzige**
  Abweisung aus, und die betraf den künstlichen Testlauf `radar-negativ-mini` (Mindestwert
  999'999 MB). Empfehlung an Raphael: der Slot kann bleiben. Nebenbeobachtung: die drei
  Nachtslots 23:30/02:30/05:30 erscheinen im Gate-Log nicht, nur der 13:30-Slot
  («weiche-nachtschicht») — das Gate greift dort offenbar nicht, was für die Nacht kein
  Problem ist, aber erklärt, warum es nie eine Nachtabweisung gab.

**Meldeentscheid: KEINE Mail.** Von den sieben Kriterien ist nur (c) formal erfüllt, und zwar
durch denselben Vorfall, der am 03.08. 22:15 bereits gemeldet wurde. Der Methodik-Bruch ist
gewichtig, aber ein Hub-Internum ohne Handlungsdruck vor 08:39 — er gehört nach Rule 260803
(Ein-Mail-Prinzip) ins Logbuch, wo der Hub-Chef ihn liest und in sein Tagesbriefing trägt.
Entsprechender Abschnitt ist heute ins `LOGBUCH.md` geschrieben. Letzte Mail dieses Loops:
**03.08.2026 22:15**.

## 2026-08-03 22:15 — GEMELDET (Mail an rj@ gesendet)

Der reguläre 07:15-Slot dieses Laufs wurde am 03.08. um 07:15 selbst vom Wochenlimit
abgewiesen (Session `0c43e8d3`, Limit-Ereignis 05:15:56 UTC) und erst um 22:07 fortgesetzt.
Die Messung ist deshalb ein Ganztages-Stand, kein Morgen-Stand.

Verbrauch teuer/total je Station (Mio), Duplikate über (message.id, requestId)
ausgeschlossen, 175 Dateien MacBook Pro / 58 Mac Mini:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total | kombiniert teuer |
|---|---|---|---|---|---|
| 28.07. | 6.50 | 167.55 | 0.80 | 23.36 | **7.30** |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 | **11.42** |
| 30.07. | 12.15 | 430.38 | 3.93 | 73.22 | **16.08** |
| 31.07. | 4.79 | 127.57 | 1.32 | 45.51 | **6.11** |
| 01.08. | 4.70 | 128.90 | 0.59 | 20.20 | **5.29** |
| 02.08. | 0.00 | 0.00 | 0.00 | 0.00 | **0.00** |
| 03.08. (bis 22:07) | 1.56 | 7.90 | 2.53 | 51.19 | **4.09** |

Kriterium (b) **nicht erfüllt**: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio.
Der 02.08. steht auf exakt 0.00 auf beiden Stationen — nicht aus Sparsamkeit, sondern weil
das Kontingent leer war.

**Blockade-Status: HART — Wochenlimit 45.5 Stunden erschöpft.** Strukturelle Prüfung
(isApiErrorMessage / type=error / message.type=error / apiErrorStatus 429, jeweils in
Verbindung mit einem Limit-Textmuster): erster Beleg im Lauf-Journal **01.08. 14:28**, letzter
**03.08. 05:30**, Reset laut Fehlertext **03.08. 12:00 Europe/Zurich**. Meldung durchgehend
«You've hit your weekly limit», also **Wochen-Limit, nicht 5-Stunden-Limit**. Kriterium (c)
**erfüllt** (Erschöpfung innerhalb der letzten 24 h). Der Vorfall ist länger als der
35-h-Ausfall vom 26./27.07.

**Interaktive Sessions:** 0 menschlich getippte Sitzungen mit Limit-Ereignis. Alle 15
betroffenen Sessions auf dem MacBook Pro tragen einen `<scheduled-task`-Opener, die vier auf
dem Mac Mini einen Nachtschicht-Dispatch-Prompt (im Journal als `loop: dispatch-versuch1`,
`cost_usd: 0`). Kriterium (a) **nicht erfüllt** — Raphaels eigene Arbeit war nicht blockiert.

**Operative Briefings: AUSGEFALLEN (Kriterium (d) erfüllt).**
- **02.08.:** `logbuch-radar`, `hub-chef-taeglich` und `zahlungsabgleich-check` brachen je nach
  12 Zeilen und **0 Tool-Calls** ab — kein Briefing, kein Deliverable. `mahnwesen-verzugscheck`
  hatte am Sonntag planmässig keinen Lauf (Cron Mo–Fr), das ist kein Ausfall.
- **03.08.:** alle vier Briefings wurden zu ihrer Startzeit abgewiesen (`logbuch-radar` 06:55,
  `mahnwesen` 08:06, `zahlungsabgleich` 08:23, `hub-chef` 08:40 CEST) und laufen erst seit
  **22:10 CEST** in einem Sammel-Wiederanlauf nach — rund 15 Stunden zu spät. Der Reset um
  12:00 hat sie **nicht** von selbst nachgeholt.
- Letzte belegte Briefing-Lieferung davor: `logbuch-radar` 01.08. 06:55–07:12 (183 Zeilen,
  47 Tool-Calls) und `hub-chef-taeglich` 01.08. 08:39–08:59 (212 Zeilen, 59 Tool-Calls).

**Radar-Herzschlag: AUSGEFALLEN (Kriterium (e) erfüllt).** Beide Signale lagen weit über der
12-h-Schwelle:
- Sessions: bis **31.07. 22:58 UTC** lief `vollgas-chef-radar` lückenlos im 4-h-Takt (27 Läufe
  in vier Tagen), danach nur noch **01.08. 12:12 UTC**, dann nichts bis **03.08. 20:07 UTC**.
  Lücke **55.9 Stunden**, rund 13 ausgefallene Läufe.
- `RADAR.md` trägt den Dateistand **01.08. 14:15** (55.9 h alt).
- Ursache ist diesmal belegt das Wochenlimit (der letzte Radar-Lauf endete 16 Minuten vor der
  ersten Limit-Abweisung), nicht ein toter Takt wie am 25.–27.07. Er lebt seit 22:07 wieder.

**Liefer-Delta der Lern-Loops.** Lauf-Journal: **02.08. 0 von 5** Läufen erfolgreich,
**03.08. 1 von 3** (30.07. noch 7/10, 31.07. 6/8, 01.08. 5/9). Die sechs abgewiesenen
Nachtschicht-Slots (02.08. 02:30/05:30/13:30/22:30/23:30, 03.08. 02:30/05:30) stehen alle mit
`rc: 1`, `cost_usd: 0`, `num_turns: 1` — **kein Tokenverbrauch ohne Ertrag, sondern gar kein
Lauf**. Muster (a) und (b) aus Schritt 5 liegen damit nicht vor. Nach dem Reset lieferte der
13:41-Lauf sauber (rc 0, 55 Turns, $4.43, `projekt-lessons` RE-00087, Commit `301a9fc5`),
dazu `energie` Run 121 (9 Destillate, FAQ F197–F201, Themenartikel) und die
Umlaut-Bereinigung in `planungsgrundlagen`.

**Gegenprüfung eines Fremdbefunds (Rule 260729b).** Der `methoden-radar` hat heute 21:00
vermerkt, `wissens-chef` laufe «taeglich ohne Liefer-Beleg seit Run 22 vom 31.07.». Am
Original nachgemessen: Run 22 liegt als `outputs/2026-07-31_wissens-chef-run22.md` vor
(31.07. 23:48, Commit 31.07. 23:51), die Läufe vom 01.08. und 02.08. erzeugten keinen Report.
**Der Befund stimmt, seine Schlussfolgerung nicht:** beide Läufe fielen ins Wochenlimit
(02.08. 23:12 CEST Limit-Ereignis belegt), der 01.08.-Lauf lag 8¾ h nach dessen Beginn.
`wissens-chef` ist **nicht** defekt und **kein** Abschaltkandidat — der nächste ungestörte Lauf
ist der Prüfstein. Für den Radar: ein Liefer-Delta von Null während einer Kontingentsperre darf
nicht als Leerlauf gewertet werden, sonst schaltet der Leerlauf-Wächter gesunde Loops ab.

**Destillat-Aufsicht (siebte Erhebung) — der Loop stand still, weil er nicht laufen durfte:**
- (a) Fortschritt: Sektionen **37/37**, 214 Dateien inventarisiert, **31 offene Dateien**
  (01.08.: 32) — die Front hat sich seit der letzten Erhebung um **eine** Datei bewegt, und das
  am 01.08.; seit **01.08. 13:34** steht sie still (52 h).
- (b) Ertrag: **9 inhaltliche Artikel** (01.08.: 8), alle `emerging`, **0 `established`**.
  Jüngster Artikel `cheminee-aufbau-hafnerarbeiten.md`, **01.08. 13:33**. Seither kein Zuwachs.
- (c) Delta-Null-Serie: **0**. Die Serie ist nicht gewachsen, weil in den letzten 48 h kein
  Destillat-Lauf stattgefunden hat. Messweg weiterhin über CHANGELOG + `logbuch/laeufe/*.jsonl`;
  unter `outputs/` liegt seit dem 28.07. kein Lauf-Report mehr (bereits am 01.08. vermerkt).
- (d) Stückkosten: **02.08. nicht berechenbar** (0 Verbrauch, 0 Artikel), **03.08. für
  `bauprodukte` nicht berechenbar** (kein Lauf). Der Mini-Verbrauch des 03.08. (2.53 Mio teuer)
  ging an `energie` und `projekt-lessons`. Reihe bisher: 31.07. 0.66 · 01.08. 0.41 · 02.08. — ·
  03.08. —.
- Spec: `specs/bauprodukte-spec.md` liegt vor (28.07.), Spec-Gate hängt nicht. Korpus 1
  `bauprodukte` weiterhin «in Arbeit», keine Komplettmeldung. Kriterien (f) und (g) **nicht
  erfüllt** — (f) ausdrücklich nicht, weil der Aufwand fehlte, nicht nur der Ertrag.
- **Mittags-Slot 13:30 (Versuch seit 29.07., Woche jetzt voll):** hat **geliefert** — 01.08.
  Artikel `cheminee-aufbau-hafnerarbeiten` (CHANGELOG weist den Slot ausdrücklich aus) und
  03.08. `projekt-lessons` RE-00087. Am 02.08. vom Wochenlimit abgewiesen, nicht vom Gate.
  Das **Lauf-Gate hat ihn nie abgewiesen**: `gate-Macmini.log` zeigt seit dem 29.07. **0
  Abweisungen**, am 03.08. 13:30 zwei Freigaben (`weiche-nachtschicht`, `nachtschicht`, 6135 MB
  frei, Druck 2). **Empfehlung an Raphael: Slot behalten.**

**Verbrauchsverteilung der Limit-Woche** (28.07.–03.08., teuer, Mio) — **korrigierte Fassung,
siehe Messfehler-Vermerk unten**: MacBook Pro **44.10** gesamt in 176 Sessions, davon
`vollgas-chef-radar` **8.27** (30 Läufe, 0.28 je Lauf) · `normen-training-nacht` 4.83 ·
`wissens-chef` 2.44 · `hub-chef-taeglich` 2.21 · `twin-fidelity-review` 1.86 ·
`vollgas-fruehwarnung` 1.47 · `logbuch-radar` 1.45 · `konversations-log` 1.42 ·
`twin-mail-training` 1.40 · `zahlungsabgleich-check` 1.05 · `baurecht-buch-training` 1.01 ·
übrige je unter 1.0. Mac Mini **12.70** gesamt in 57 Sessions, davon `energie-training` 2.67 ·
`claude-abo-auslastung` 0.61 · `planungsgrundlagen-training` 0.51. **Zusammen 56.80 Mio.**

**Nicht zuordenbar: 11.58 (MacBook) + 8.61 (Mini) = 20.19 Mio**, also 35.5 % — und die beiden
Hälften sind grundverschieden. Auf dem **Mac Mini** ist der Block fast vollständig
**Loop-Arbeit ohne Task-Header**: die zehn grössten Sessions tragen die Opener «Fuehre EINEN
Intensiv-Lauf des Energie-/Planungsgrundlagen-Trainings aus» und «Nachtschicht-Zyklus Mac
Mini», je 0.25–0.39 Mio. Auf dem **MacBook Pro** ist es überwiegend **Raphaels eigene
interaktive Arbeit** (Brandschutz-Scan 2620, Immobilienbewertungs-Wiki, Unternehmerwahl
Tschopp, Speicher-/Systemfragen), in vielen kleinen Sitzungen. **Konsequenz für die
Loop-Drosselung:** die Lern-Loops sind auf dem MacBook nicht der Hauptverbraucher, und auf dem
Mini verschwindet ein Drittel der Loop-Kosten aus jeder Task-Statistik, weil die
Trainings-Läufe per `claude -p` ohne `<scheduled-task`-Opener starten. Wer nur die getaggten
Zeilen liest, unterschätzt die Mini-Loops systematisch.

**MESSFEHLER GEFUNDEN UND BEHOBEN (03.08. 22:45).** Die zuerst berichteten Wochenwerte
(MacBook 68.75 · Mini 14.97 · zusammen 83.72 · Radar 9.59 · nicht zuordenbar 40.95) waren
**überhöht** und sind durch die Werte oben ersetzt. Ursache: die Task-Aufschlüsselung filterte
die **Dateien** nach `mtime`, summierte dann aber **alle** `usage`-Zeilen darin — auch solche
von vor dem Fenster. Aufgefallen an einer einzelnen Session mit scheinbar 16.55 Mio, die
tatsächlich vom **19.–21.07.** stammt (470 User-Turns über zwei Tage, grösster einzelner
`cache_read` 928'459 Token). Korrektur: Filter **je Zeile** über `timestamp[:10]` gegen ein
explizites Fenster. Die **Tageswerte** der Tabelle oben sind davon **nicht** betroffen, sie
waren von Anfang an nach `timestamp` gruppiert — mit einer Ausnahme: der mtime-Vorfilter von
6 Tagen schneidet den **ältesten** Tag des Fensters an (28.07. mit 6.50 gemessen, real höher),
weil Dateien, die an jenem Tag zuletzt geschrieben wurden, knapp herausfallen. Der Vorfilter
im Task-Prompt ist deshalb am 03.08. auf 9 Tage erweitert worden.

**Die Mail von 22:22 trägt die alten Wochenzahlen.** Raphael wurde im selben Gespräch über die
Korrektur informiert; eine zweite Mail wurde bewusst nicht gesendet (Wiederholungsverbot, und
der Empfänger war anwesend). Die Drossel-Entscheidung bleibt von der Korrektur unberührt und
wird durch sie sogar deutlicher: `vollgas-chef-radar` ist mit 8.27 Mio weiterhin der grösste
getaggte Einzelposten und **fast doppelt so teuer wie der zweitgrösste Loop** (normen 4.83).

**Speicher MacBook Pro** zum Messzeitpunkt: 3531 MB verfügbar (vm_stat free+inactive+purgeable),
`kern.memorystatus_vm_pressure_level: 2` — erhöhter Druck, aber kein Meldegrund dieser Warnung.

**Meldeentscheid: GEMELDET.** Drei Kriterien erfüllt (c Wochenkontingent, d Briefing-Ausfall,
e Radar-Herzschlag). Kein Wiederholungsfall der Mail vom 28.07. 06:58 — das war der Vorfall
26./27.07.; dies ist eine **neue** Erschöpfung, und der damalige Eintrag hat genau dafür die
nächste Mail vorgesehen. Empfohlen wurde **eine** Rücktaktung: `vollgas-chef-radar` von 4 h auf
8 h (`50 */8 * * *`), belegt als grösster getaggter Einzelverbraucher mit **8.27 Mio bei
30 Läufen** (korrigierter Wert). Ausdrücklich **nicht** empfohlen: `wissens-chef` abzuschalten
(siehe Gegenprüfung oben).

**VOLLZUG 03.08. 22:40 — Freigabe Raphaels im Gespräch («kannst du deine empfehlungen umsetzen
sodass wir token sparen?»).** `vollgas-chef-radar` steht neu auf `50 */8 * * *` (drei statt
sechs Läufe pro Tag), Beschreibung mit Begründung und Vorgeschichte nachgeführt. Erwartete
Ersparnis rund **4.1 Mio teuer pro Woche** (3 eingesparte Läufe je Tag × 7 × 0.28 Mio je Lauf,
korrigierte Basis). In die Task-Beschreibung wurde zusätzlich die Lehre dieses Laufs
aufgenommen: **ein Liefer-Delta von Null während einer Kontingentsperre ist kein Leerlauf** —
vor jeder Stilllegungsempfehlung ist am Lauf-Journal (`rc`, `cost_usd`) zu prüfen, ob der Loop
überhaupt laufen durfte.

**Keine weitere Drosselung vollzogen, und zwar begründet.** Gegen den Liefer-Beleg geprüft
haben **alle** grossen Lern-Loops in diesem Fenster geliefert: `normen` Run 40 + 41,
`twin-fidelity` (03.08.), `wettbewerbs-dna` Etappe-4-Vertiefung (03.08.), `baurecht` Buch-Run 71
(03.08.), `energie` Run 121 (03.08.), `koordination` Synergie-Lauf 03 (01.08.). Es gibt derzeit
**keinen zweiten belegten Leerlauf-Kandidaten**; weitere Abschaltungen wären geraten und würden
Wissen kosten statt Tokens sparen. Der nächste echte Hebel ist nicht ein weiterer Loop, sondern
die **Mini-Loops ohne Task-Header** sichtbar zu machen (8.61 Mio unsichtbar in jeder
Task-Statistik) — dafür müssten die `claude -p`-Trainingsprompts einen erkennbaren
Loop-Namen im Opener führen. Vorschlag an Raphael, nicht vollzogen.

**Nächste Mail:** nicht für denselben Befund. Erst wieder bei neuer Erschöpfung, bei blockierter
interaktiver Sitzung, bei erneutem Briefing-Ausfall oder wenn der Radar nach dem Wiederanlauf
erneut stillfällt.

## 2026-08-01 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:12–07:20, Duplikate über
(message.id, requestId) ausgeschlossen:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 |
| 30.07. | 12.15 | 430.38 | 3.93 | 73.22 |
| 31.07. (voll) | 4.79 | 127.57 | 1.32 | 45.51 |
| 01.08. (bis 07:12) | 2.05 | 68.61 | 0.41 | 14.07 |

Kombiniert teuer: 27.07. **26.50** · 28.07. **10.51** · 29.07. **11.41** · 30.07. **16.07** ·
31.07. **6.11** · 01.08. bis 07:12 **2.46 Mio**. Kriterium (b) nicht erfüllt: kein Tag über
35 Mio, keine zwei Folgetage über je 18 Mio. **Der 31.07. ist mit 6.11 Mio der niedrigste
Tageswert der Woche** und liegt am unteren Rand des Drosselphasen-Bands (Referenz MacBook Pro
3–15 Mio teuer/Tag: 4.79). Die Reihe fällt seit dem 30.07. Nachtrag zum letzten Eintrag: die
dort für den 31.07. genannten 1.75/0.43 waren der Teiltag bis 07:15, der volle Tag schliesst
mit 4.79/1.32.

**Blockade-Status: SAUBER.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils in Verbindung mit einem Limit-Textmuster) über
das 26-h-Fenster: **0 Ereignisse auf beiden Stationen**. Kein 5-Stunden-Limit, kein Wochen-Limit.
Kriterien (a) und (c) nicht erfüllt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:55–07:12 (204 Zeilen,
87 Turns) und schliesst mit nachgeführtem Register und Journal (Commit `5e00444d`).
`hub-chef-taeglich` lief zuletzt 31.07. 08:39–09:21; am Sitzungsprotokoll nachgemessen, dass die
Briefing-Mail tatsächlich rausging (osascript-Ergebnis «GESENDET», nach `korrektur` und
twin-Fidelity 89) — der heutige 08:35-Slot war zum Messzeitpunkt noch nicht fällig, ebenso
`mahnwesen-verzugscheck` (08:05) und `zahlungsabgleich-check` (08:23), beide zuletzt am 31.07.
mit Deliverable. Kriterium (d) nicht erfüllt.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: eine Session mit dem Opener
`vollgas-chef-radar` lief **01.08. 00:58–01:00** (also vor 6.2 h, im 4-h-Takt, davor 20:58 und
16:58), und RADAR.md trägt den Dateistand **31.07. 22:59** (vor 10.2 h). Beides innerhalb der
12-h-Schwelle, Kriterium (e) nicht erfüllt. Anmerkung: der 00:58-Lauf hat RADAR.md nicht mehr
geschrieben und schliesst mit einem englischsprachigen Zwischenstand — Herzschlag vorhanden,
Sprachvorgabe dort verletzt.

**Destillat-Aufsicht (sechste Erhebung) — Ertrag bewegt sich, die Front steht seit zwei Tagen
still, und das Inventar wird von den Läufen nicht mehr nachgeführt:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, `--stand` weist **32 offene
  Dateien** aus — unverändert seit dem 30.07. Marker **147 `[-]` · 33 `[ ]` · 22 `[t]` ·
  16 `[x]`**, exakt wie in der letzten Erhebung. Dateistand des Inventars
  `training/bauprodukte-inventar.md` weiterhin **30.07. 13:34**, also inzwischen **42 h
  unberührt**, obwohl in dieser Zeit zwei Artikel fortgeschrieben wurden. Der am 31.07.
  gemeldete Nachführungs-Rückstand hat sich verdoppelt: die Front unterzeichnet den
  tatsächlichen Fortschritt strukturell, nicht nur einmalig.
- (b) Ertrag: **8 inhaltliche Artikel**, alle `emerging`, **0 `established`** — die Zahl ist
  unverändert, aber der Ertrag lief über Tiefe statt Breite:
  `erco-lichtplanung-grundlagen.md` von S. 20 auf S. 40 fortgeschrieben (31.07. 23:33, Commit
  `50ca4ccf`) und `bkp-261-aufzuege.md` erweitert (23:41, Commit `ab20b1d4`). Zusätzlich hat
  der Lauf QUESTIONS Punkt 9 (Holzbau/Bekleidungen BKP 214/225/271) als **Fehlannahme**
  korrigiert und geblockt, nachdem er die Quellordner geprüft und leer vorgefunden hat — ein
  Negativbefund, der künftige Läufe vor derselben leeren Suche bewahrt.
- (c) Delta-Null-Serie: **0.** Alle vier Nachtläufe seit der letzten Erhebung haben geliefert
  (30.07. Terrazzo, 31.07. 02:38 BKP 261, 31.07. 23:33 ERCO, 01.08. 02:36 grobkosten).
  **Messweg-Korrektur:** unter `wissen/bauprodukte/outputs/` liegt seit dem 28.07. kein
  Lauf-Report mehr (nur der heutige Wissenscheck-Health-Check) — der Loop dokumentiert
  ausschliesslich in `CHANGELOG.md` und im Lauf-Journal. Die Delta-Null-Serie ist deshalb über
  `outputs/` nicht mehr messbar und wurde ersatzweise über CHANGELOG plus
  `logbuch/laeufe/*.jsonl` erhoben. Für den Radar: die im Task hinterlegte Drei-/Fünf-Report-
  Regel greift an dieser Stelle ins Leere.
- (d) Stückkosten: **31.07. 0.66 Mio teuer je Artikel-Delta** (Mac Mini 1.32 Mio / 2 erweiterte
  Artikel), **01.08. bis 07:12 0.41 Mio** (0.41 Mio / 1 Delta, `grobkosten/kennwerte.md`).
  Reihe bisher: 31.07. 0.66 · 01.08. 0.41.
- Spec: `specs/bauprodukte-spec.md` liegt vor (28.07.), Spec-Gate hängt nicht. Kriterium (f)
  nicht erfüllt — es wurden Tokens verbraucht, aber der Ertrag hat sich nachweislich bewegt.
  Kriterium (g) nicht erfüllt: Korpus 1 (bauprodukte) ist «in Arbeit», die Queue meldet keine
  Komplettmeldung.

**Mittags-Slot 13:30 (befristeter Versuch seit 29.07.) — er liefert, und das Lauf-Gate hat ihn
nie abgewiesen.** Drei Läufe belegt, alle rc=0 mit Ertrag: 29.07. 13:34, 30.07. 13:36
(zusätzlich ein 12:51-Lauf), 31.07. 13:36 (fünfter Lesson-Artikel in `projekt-lessons`,
Fokus-Bereich «Kosten & Termine» erstmals belegt). `logbuch/speicher/gate-Macmini.log` endet am
**29.07. 22:38** — seither kein einziger Eintrag, weder Freigabe noch Abweisung. Das heisst
nicht, dass das Gate den Slot durchgelassen hat, sondern dass die Nachtschicht das Gate
offenbar gar nicht aufruft. Für Raphaels Entscheid nach der Woche (ab 05.08.) ist damit belegt:
der Slot liefert, aber er läuft ungeschützt.

**Nebenbefund zum Radar (P3 aus dessen Lauf 31.07. 20:58): falsch.** Der Radar meldet, der Glob
`~/.claude/projects/*/*.jsonl` im SKILL.md dieser Frühwarnung treffe null Dateien. Nachgemessen:
er trifft **3'132 Dateien** auf dem MacBook Pro, die gesamte Verbrauchsmessung dieses Laufs steht
darauf. Der P3 sollte fallengelassen und nicht weiter mitgeschleppt werden.

**Speicher (vm_stat frei+inactive+purgeable, Druck via sysctl):** MacBook Pro 5'790 MB / Druck 1,
Mac Mini 9'259 MB / Druck 1. Beide normal.

**Meldeentscheid: keine Mail.** Keines der Kriterien (a) bis (g) erfüllt. Letzte Mail dieser
Frühwarnung: **27.07.2026 21:45** (Wochenlimit-Totalausfall) — seither still.

## 2026-07-31 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:15, Duplikate über (message.id, requestId)
ausgeschlossen:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 |
| 30.07. | 12.15 | 430.38 | 3.93 | 73.22 |
| 31.07. (bis 07:15) | 1.75 | 54.72 | 0.43 | 14.40 |

Kombiniert teuer: 29.07. **11.42 Mio**, 30.07. **16.08 Mio**, 31.07. bis 07:15 **2.18 Mio**.
Kriterium (b) nicht erfüllt: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio.

**Wichtigster Befund dieses Laufs — der Radar misst den Verbrauch um Faktor 2 bis 4 zu hoch,
und die Ursache ist geklärt.** Der Radar-Eintrag von 04:57 nennt für den MacBook Pro 30.07.
**57.92 Mio** teuer und 31.07. bis 04:57 bereits **25.61 Mio**; diese Messung weist für dieselbe
Station **12.15** bzw. **1.75 Mio** aus. Die Differenz ist kein Zeitzonen- und kein
Fenstereffekt, sondern die fehlende Deduplizierung: Claude Code schreibt **dieselbe API-Antwort
mehrfach in die JSONL — je Content-Block eine Zeile, alle mit identischer `usage`**. Am eigenen
Sitzungsprotokoll dieses Laufs nachgemessen: 13 eindeutige Antworten, davon 10 mit
Mehrfachzeilen, Beispiel `msg_011CdZZoFBbSLmv84DbKbXxN` dreimal mit identischen Werten
(2 input / 101'434 cache_creation / 343 output). Wer roh summiert, zählt dieselben Tokens zwei-
bis viermal. Gegenprobe auf die Alternativerklärung: **0** Schlüssel kommen in mehr als einer
Datei vor, es sind also keine Resume-Kopien, sondern Streaming-Zeilen derselben Antwort.
Rohsummen ohne Dedup zum Vergleich: 30.07. UTC 32.22 Mio, lokal 26.58 Mio — auch damit bleibt
der Radar-Wert unerreicht. Für den Radar: die 3x-Regel und die Kapazitätsbeurteilung dürfen
nicht auf der rohen Summe stehen, sonst schlägt sie bei rund der Hälfte des tatsächlichen
Verbrauchs Alarm. Der Befund entwarnt — Raphaels Kapazität ist deutlich weniger beansprucht,
als die Radar-Reihe seit vier Tagen nahelegt.

**Blockade-Status: SAUBER.** Strukturelle Prüfung (isApiErrorMessage / type=error /
message.type=error / apiErrorStatus 429, jeweils in Verbindung mit einem Limit-Textmuster):
**0 Ereignisse im 26-h-Fenster** auf beiden Stationen. Kein 5-Stunden-Limit, kein Wochen-Limit.
Kriterien (a) und (c) nicht erfüllt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:5x bis 07:11 (189 Zeilen)
und schliesst mit «Briefing gesendet»; inhaltlicher Kern war der Thalwiler Begleitbeschrieb, den
Raphael am 30.07. 16:35 in der Fassung 260730 mit totem Recht (StrAV) versandt hatte.
`hub-chef-taeglich` lief zuletzt 31.07. 01:07 (366 Zeilen) und ist sauber abgeschlossen; der
reguläre 08:35-Slot war zum Messzeitpunkt noch nicht fällig. `mahnwesen-verzugscheck` (30.07.
10:16) und `zahlungsabgleich-check` (30.07. 08:37) erreichten ihr Deliverable; letzterer weist
offen aus, dass die Fan-out-Agenten `rechtschreibung` und `layout` mit API-Fehler 529 abbrachen
und die Prüfung inline erfolgte. Kriterium (d) nicht erfüllt.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: jüngster RADAR.md-Eintrag **31.07. 04:57**
(Dateistand 05:02), und eine Session mit dem Opener `vollgas-chef-radar` lief um **05:03**;
davor 00:36 und 01:02, also im 4-h-Takt. Weit innerhalb der 12-h-Schwelle, Kriterium (e) nicht
erfüllt.

**Destillat-Aufsicht (fünfte Erhebung) — Ertrag bewegt sich, die Front kaum, und die
Inventar-Nachführung hinkt den Artikeln hinterher:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, `--stand` weist **32 offene
  Dateien** aus — exakt wie am 30.07. Marker **147 `[-]` · 33 `[ ]` · 22 `[t]` · 16 `[x]`**:
  gegenüber gestern wanderte **eine Position von `[t]` auf `[x]`**. Dateistand des Inventars
  **30.07. 13:34**, also seit 18 h unberührt, obwohl seither zwei Artikel entstanden sind. Die
  beiden Nachtläufe haben geliefert, ohne das Inventar nachzuführen; die Front unterzeichnet
  den tatsächlichen Fortschritt.
- (b) Ertrag: **8 inhaltliche Artikel** (plus INDEX und QUESTIONS, zusammen 10 Dateien in
  `wiki/`), alle `emerging`, **0 `established`**. Neu seit der letzten Erhebung sind
  `terrazzo-kunststein-bodenbelaege.md` (30.07. 23:40) und `bkp-261-aufzuege.md` (31.07. 02:38).
  **Zählweise klargestellt:** der 30.07.-Eintrag nannte «8 Artikel», zählte aber INDEX und
  QUESTIONS mit; vergleichbar sind 6 Artikel am 30.07. gegen 8 heute. Künftig gilt die Zahl der
  Artikel mit `status:`-Frontmatter.
- (c) Delta-Null-Serie: **0.** Beide Läufe seit der letzten Erhebung haben geliefert (Terrazzo
  aus 281 Bodenbeläge, Aufzüge-Artikel plus geschlossener QUESTIONS-Punkt 10 zur
  VKF-BRL-23-15-Teilrevision samt Cross-KB-Rücklauf nach `normen`). **Der am 30.07. gemeldete
  Nebenbefund verschärft sich: seit dem 28.07. ist kein `outputs/`-Report mehr geschrieben
  worden** — jüngster bleibt `2026-07-28_destillat-lauf4-281-bodenbelaege.md`, das sind jetzt
  drei produktive Läufe in Folge, die nur über CHANGELOG und Lauf-Journal dokumentiert sind. Für
  den Radar: eine reine Report-Zählung würde hier drei Delta-Null-Läufe sehen und die
  Rücktaktung auslösen, obwohl der Loop durchgehend geliefert hat.
- (d) Stückkosten je Lauf aus dem Lauf-Journal: **30.07. 23:35 = 3.43 USD** für den
  Terrazzo-Artikel, **31.07. 02:39 = 4.19 USD** für den Aufzüge-Artikel. Reihe seit Beginn der
  Messung: 3.81 → 3.43 → 4.19 USD je Artikel, stabil.
- Spec-Gate: `specs/bauprodukte-spec.md` liegt vor (28.07.). Kein Hänger.
- Korpus-Queue: Korpus 1 `bauprodukte` in Arbeit, Korpora 2 bis 4 warten. Keine Meldung
  «KORPUS-QUEUE KOMPLETT», Kriterium (g) nicht erfüllt.
- Kriterium (f) nicht erfüllt: der Loop hat in den letzten 48 h Tokens verbraucht **und** zwei
  Artikel plus eine Marker-Position geliefert.

**Mittags-Slot 13:30 der Mini-Nachtschicht (befristeter Versuch seit 29.07., Tag 3 von 7):**
am 30.07. hat er geliefert — Lauf-Journal `dispatch-versuch1` 13:36:05, rc=0, 3.70 USD, und der
Inventar-Marker-Wechsel um 13:34 fällt genau in dieses Fenster. Das Lauf-Gate hat ihn **nie
abgewiesen**: `logbuch/speicher/gate-Macmini.log` enthält für den Slot überhaupt keinen Eintrag
(letzte vier Zeilen 28./29.07., zwei Freigaben `energie-training`, eine Abweisung eines
Negativtests). Vollständige Bewertung wie vorgesehen nach einer Woche.

**Speicher (vm_stat free+inactive+purgeable):** MacBook Pro **3.28 GB, Druckstufe 2**, Mac Mini
**9.45 GB, Druckstufe 1**. Der MacBook ist gegenüber der Radar-Messung von 04:57 (3.61 GB,
Stufe 1) eine Stufe hochgegangen. Kein Meldekriterium, aber der Wert, an dem das Lauf-Gate
greifen würde.

**Meldeentscheid: keine Mail.** Kein einziges der sieben Kriterien erfüllt, und der einzige
Befund, der nach Handlungsbedarf aussah — die steigende Verbrauchsreihe des Radars — ist als
Messfehler nachgewiesen und entwarnt. Letzte gesendete Mail bleibt **27.07.2026 21:45**.

## 2026-07-30 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:15:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 23.07. | 2.88 | 48.31 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. | 9.37 | 333.30 | 2.05 | 59.73 |
| 30.07. (bis 07:15) | 1.81 | 72.12 | 0.44 | 14.53 |

Kombiniert teuer: 28.07. **10.51 Mio**, 29.07. **11.42 Mio**, 30.07. bis 07:15 **2.25 Mio**.
Kriterium (b) nicht erfüllt: kein Tag über 35 Mio, keine zwei Folgetage über je 18 Mio.

**Messgrenze offen ausgewiesen:** der 23.07.-Wert des MacBook Pro steht heute bei 2.88 statt
3.87 wie im Eintrag vom 29.07. Ursache ist wie immer die mtime-Vorfilterung über das
7-Tage-Fenster, die den ältesten Tag nur teilweise erfasst. Vergleichbar sind heute die Tage
24.07. bis 30.07.

**Blockade-Status: SAUBER.** Strukturelle Prüfung (isApiErrorMessage / type=error /
apiErrorStatus 429 in Verbindung mit einem Limit-Textmuster): **0 Ereignisse im 36-h-Fenster**
auf beiden Stationen (MacBook Pro 74 Dateien gescannt, Mac Mini 19). Kein 5-Stunden-Limit, kein
Wochen-Limit. Kriterien (a) und (c) nicht erfüllt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:55 bis 07:07 (88
Assistant-Turns, 87 Werkzeugaufrufe) und hat die Briefing-Mail nachweislich versendet: im
Postausgang rj@ liegt «Logbuch-Radar 30.07.26: UBS-Blockade nach 32 Tagen gelöst, drei weitere
Punkte geschlossen», 30.07. 07:07:15, dazu der Commit `9906f997`. `mahnwesen-verzugscheck`
(fällig 08:05), `zahlungsabgleich-check` (08:22) und `hub-chef-taeglich` (08:38) waren zum
Messzeitpunkt noch nicht fällig; ihre letzten Läufe vom 29.07. erreichten ihr Deliverable
vollständig (hub-chef mit Briefing-Mail, die beiden bexio-Checks bestimmungsgemäss ohne Mail,
da read-only und nur bei Befund meldend). Kriterium (d) nicht erfüllt.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: jüngster RADAR.md-Eintrag **30.07. 06:57**
(Dateistand 07:02), und Sessions mit dem Opener `vollgas-chef-radar` liefen heute 04:57 und
05:15; `lastRunAt` 06:57, `nextRunAt` 07:57. Weit innerhalb der 12-h-Schwelle, Kriterium (e)
nicht erfüllt.

**Der Strukturbefund von gestern ist GEHEILT — das ist der wichtigste Befund dieses Laufs.**
Am 29.07. war der Destillat-Loop für jeden Taktgeber unadressierbar: `wissen/bauprodukte/` hatte
keine `training/PROGRAMM.md`, weshalb Priorität 4 der Mac-Mini-Nachtschicht ihn nicht fand und
alle vier Nachtläufe korrekt andere KBs wählten. Der Radar hat die Datei am 29.07. 09:57 angelegt
und um 12:57 den Nebeneffekt selbst erkannt und entschärft (die Struktur-Korrektur hatte die KB
über ihr CHANGELOG-Datum zur jüngsten von neun Kandidatinnen gemacht, also zur letzten in der
Rangfolge; Gegenmittel ist der Warnhinweis im Statuskopf, dass der Dateistand in `wiki/` und der
Inventarstand massgeblich sind, nicht das CHANGELOG-Datum). Wirkung nachgemessen: der
23:30-Slot hat den Loop erreicht und geliefert.

**Destillat-Aufsicht (vierte Erhebung) — Front und Ertrag bewegen sich beide wieder:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, Marker **147 `[-]` · 33 `[ ]` ·
  23 `[t]` · 15 `[x]`**. Gegenüber dem 29.07. wanderte **eine Position von `[t]` auf `[x]`**
  (triagiert zu destilliert); `inventar.sh --stand` weist 32 offene Dateien aus. Das Inventar
  trägt neu den Dateistand **29.07. 23:35** statt wie zwei Läufe lang den vom 28.07. 07:33.
- (b) Ertrag: **8 Artikel** (29.07.: 7), alle `emerging`, **0 `established`**. Neu ist
  `wiki/z-winkel-beschlag-schreinerei.md` aus `273 Schreinerarbeiten/Z_Winkel/110207_Z_Winkel.pdf`.
  Der Lauf hat ihn bewusst nicht in `arbeitsplatten-verbinder-schreinerei.md` integriert, obwohl
  gleiche Quelle und gleicher Tagesausdruck: offener Stahlwinkel gegen verdeckten Stossverbinder,
  andere Funktion, beidseitige Verlinkung gesetzt. Das ist eine saubere Abgrenzungsentscheidung,
  kein Doppeleintrag.
- (c) Delta-Null-Serie: **0.** Der Loop hat gearbeitet und geliefert. **Nebenbefund für den
  Radar:** der Lauf hat **keinen `outputs/`-Report** geschrieben, der jüngste ist weiterhin
  `2026-07-28_destillat-lauf4-281-bodenbelaege.md`. Dokumentiert wurde stattdessen über CHANGELOG
  und Lauf-Journal. Das ist kein Leerlauf, aber eine Lücke genau in dem Pfad, über den die
  Delta-Null-Serie gemessen werden soll: zwei Läufe in Folge ohne `outputs/`-Report würden bei
  reiner Report-Zählung wie Stillstand aussehen. Wer die Serie künftig prüft, muss CHANGELOG und
  Journal mitlesen oder der Loop muss den Report wieder schreiben.
- (d) Stückkosten: **erstmals sauber je Lauf messbar, nicht mehr nur als Hub-Obergrenze.** Seit
  dem 29.07. trägt das Lauf-Journal `cost_usd` je Lauf. Der Destillat-Lauf vom 29.07. 23:30 kostete
  **3.81 USD** und brachte **einen** neuen Artikel, also **3.81 USD je Artikel**. Damit ist die
  seit dem 28.07. vorgemerkte Zuordnungslücke geschlossen; die bisherige Kennzahl «rund 5.3 Mio
  Token je Artikel» war eine Obergrenze über den ganzen Hub und ist als Massstab abgelöst.
  Vergleichswerte derselben Nacht aus dem Journal: `baurecht-buch-training` Run 70 3.45 USD,
  `grobkosten-training` Run 20 4.03 USD, Mittags-Slot `projekt-lessons` 2.28 USD.
- Spec-Gate: `specs/bauprodukte-spec.md` (28.07. 01:33) liegt vor, hängt nicht.
- Korpus-Queue: **nicht komplett** (Korpus 1 von 4 in Arbeit), Kriterium (g) nicht erfüllt. Die
  Stand-Zeile der Queue nennt weiterhin «6 Artikel (Stand 28.07. 06:30)» und liegt damit jetzt
  zwei Artikel zurück.
- Kriterium (f) **nicht erfüllt**: Aufwand und Ertrag bewegen sich beide.

**Liefer-Delta der Lern-Loops (letzte 24 h, gemessen an Dateien und Journal, nie an `lastRunAt`):**
- 29.07. 13:34 Mittags-Slot: `projekt-lessons`, neuer Artikel
  `kispi-behoerden-zustaendigkeitswechsel-1171-26.md`, geliefert (2.28 USD). Der Lauf hat
  `bauprodukte` per Doppelarbeit-Guard bewusst übersprungen.
- 29.07. 21:11 `wissens-chef`, 100 Minuten, Bericht plus zwei Status-Hebungen auf `established`.
- 29.07. 23:28 `normen-training-nacht`, 57 Minuten, 363 Turns, `normen/wiki/REGISTER.md` nachgeführt.
- 29.07. 23:30 `wissens-destillat`, neuer Artikel (siehe oben).
- 30.07. 01:40 `twin-mail-training`, vier Facetten-Wikis geändert (stimme, beziehungsregister,
  arbeitsweise, fachsignatur).
- 30.07. 02:36 `baurecht-buch-training` Run 70, eine Korrektur am Artikel
  `fahrzeugabstellplaetze-und-parkierung.md` (Verdichtungs-Drift § 242 Abs. 2 PBG).
- 30.07. 03:45 `twin-fidelity-review`, Selbsttest und DNA neu kompiliert.
- 30.07. 05:39 `grobkosten-training` Run 20, Bring-Schuld eingelöst, `wiki/kennwerte.md` kalibriert.
- Summe geänderter Wiki-Artikel über alle KBs: **33 am 29.07., 17 am 30.07. bis 07:15.**
- **Kein Loop mit Tokenverbrauch ohne Liefer-Delta, keine Delta-Null-Serie.**

**Mittags-Slot 13:30 (befristeter Versuch seit 29.07.) — erste Lieferung belegt:** er hat am
29.07. um 13:34 gefeuert und einen neuen Artikel in `projekt-lessons` geliefert. Das Lauf-Gate hat
ihn **nie abgewiesen**; `gate-Macmini.log` trägt insgesamt vier Zeilen (drei Freigaben, eine
Abweisung `radar-negativ-mini` aus dem Selbsttest-Abweisungspfad mit künstlicher Schwelle).
Auswertung für Raphaels Entscheid weiterhin ab dem 05.08.

**Nebenbefund, kein Handlungsbedarf:** Speicher MacBook Pro zum Messzeitpunkt **4'436 MB**
verfügbar (frei 3'757 Seiten / inaktiv 277'313 / purgeable 2'826), Druckstufe **1** — deutlich
entspannter als die knappen 3'603 MB von gestern. Mac Mini **11'148 MB** verfügbar, Druckstufe
**1**. Beide über der 3-GB-Schwelle des Lauf-Gates.

**Meldeentscheid: keine Mail.** Keines der Kriterien (a) bis (g) ist erfüllt. Der einzige offene
Punkt ist der fehlende `outputs/`-Report des Destillat-Loops, und der gehört als Messpfad-Lücke
dem Radar, der alle drei Stunden läuft. Zuletzt gemailt wurde am **28.07. 07:02**
(«Morgenbriefing 28.07. ausgefallen — der NAS-Mount, nicht die Tokens»); dieser Befund ist
geheilt und fällt nicht erneut an.

## 2026-07-29 07:15 — STILL (keine Mail)

Verbrauch teuer/total je Station (Mio), Messung 07:15:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 22.07. | 1.02 | 16.66 | 0.48 | 16.67 |
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. | 8.35 | 191.59 | 2.16 | 53.74 |
| 29.07. (bis 07:15) | 4.43 | 194.10 | 0.19 | 6.34 |

Kombiniert teuer: 28.07. **10.51 Mio**, 29.07. bis 07:15 **4.62 Mio**. Beides unauffaellig,
Kriterium (b) nicht erfuellt. Der 25.07.-Wert (kombiniert 53.1 Mio, ueber der 35er-Schwelle)
ist der am 27.07. 21:45 gemeldete Befund und faellt nicht erneut an.

**Messgrenze offen ausgewiesen:** der 22.07.-Wert steht heute tiefer als im Eintrag vom 28.07.
(MacBook Pro 1.02 statt 2.89). Ursache ist die mtime-Vorfilterung ueber 6 Tage: der aelteste Tag
im Fenster ist stets nur teilweise erfasst. Nur die Tage 23.07. bis heute sind vergleichbar.

**Blockade-Status: SAUBER.** Strukturelle Pruefung (isApiErrorMessage / type=error /
apiErrorStatus 429, kombiniert mit Limit-Textmuster) ueber beide Stationen: **0 Ereignisse im
24-h-Fenster** (MacBook Pro 101 Dateien gescannt, Mac Mini 10). Das juengste Ereignis ueberhaupt
liegt vor dem Fenster und gehoert zum bereits gemeldeten Wochenlimit-Ausfall vom 26./27.07.
Kriterien (a) und (c) nicht erfuellt.

**Operative Briefings: ALLE ERREICHT.** `logbuch-radar` lief heute 06:54 bis 07:07, 188 Zeilen,
und hat die Briefing-Mail nachweislich versendet: im Postausgang rj@ liegt «Logbuch-Radar
29.07.26: Rechnung RE-00100 von der Kreditorenstelle retourniert», 29.07. 07:07:26, dazu der
Commit `3ffe933c`. `hub-chef-taeglich` (faellig 08:38), `mahnwesen-verzugscheck` (08:05) und
`zahlungsabgleich-check` (08:22) waren zum Messzeitpunkt noch nicht faellig; ihre letzten Laeufe
vom 28.07. erreichten ihr Deliverable vollstaendig. Kriterium (d) nicht erfuellt. Damit ist der
am 28.07. gemeldete Radar-Ausfall geheilt: das Morgenbriefing steht wieder.

**Radar-Herzschlag: LEBT.** Beide Signale frisch: juengster RADAR.md-Eintrag 29.07. 04:20
(Dateistand 04:15), und eine Session mit dem Opener `vollgas-chef-radar` lief heute 07:05,
`lastRunAt` 06:57, `nextRunAt` 07:57. Weit innerhalb der 12-h-Schwelle, Kriterium (e) nicht erfuellt.

**Liefer-Delta der Lern-Loops (Nachtschicht Mac Mini, vier Slots):**
- 22:30 `energie-training` Run 118 geliefert (sechs Destillate, FAQ-Stand 183, Commit `6e2bf77d`).
- 23:30 `immobilienbewertung` geliefert (T-Eidgenossen-Rendite 0.39 % aus SNB-Quartalsheft 2/2026,
  seit Run 51 offen). Er hat `grobkosten` und `immobilienbewertung`-Trainingslauf bewusst
  uebersprungen, weil beide Register um Pause gebeten hatten. Genau so soll das laufen.
- 02:30 **gescheitert**, Exit 2 nach 47 s, drei Versuche, leeres Ergebnisfeld. Das ist der vom
  Radar um 04:20 gefundene und behobene `claude-run.sh`-Wrapper-Fehler, kein neuer Befund.
- 05:30 geliefert (KB `firmengruendung-ch`, Kapitalband Art. 653s bis 653v OR am Fedlex-Volltext
  verifiziert, neuer Artikel). Der Wrapper-Fix greift also nachweislich im Echtbetrieb.
- Kein Loop mit Tokenverbrauch ohne Liefer-Delta, keine Delta-Null-Serie.

**Destillat-Aufsicht (dritte Erhebung) — die Front steht seit 24 Stunden, aber nicht aus Leerlauf:**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert, Marker **147 `[-]` · 33 `[ ]` ·
  24 `[t]` · 14 `[x]`**. Gegenueber dem 28.07. 07:44 **unveraendert**; das Inventar
  `skills/wissens-destillat/training/bauprodukte-inventar.md` traegt bis heute den Dateistand
  28.07. 07:33.
- (b) Ertrag: **7 Artikel, alle `emerging`, 0 `established`** — ebenfalls unveraendert. Die beiden
  am 28.07. 23:45 committeten Dateien `dachbegruenung-systeme.md` und `bkp-261-aufzuege.md` sind
  **keine neuen Artikel**, sondern Korrekturen des `wissens-chef` Run 19 an bestehenden (BKP-224/288-
  Aufteilung nach SIA 312, Fassungsvorbehalt SN 521500/C4:2019). Ohne diese Unterscheidung haette
  die Erhebung zwei Artikel Fortschritt gemeldet, den es nicht gab.
- (c) Delta-Null-Serie: **0.** Der Loop hat nichts Leeres produziert; er hat gar nicht gearbeitet.
- (d) Stueckkosten: fuer 29.07. **nicht definiert** (0 neue Artikel). Fuer 28.07. 10.51 Mio teuer /
  2 neue Destillat-Artikel = **~5.3 Mio je Artikel**, weiterhin nur eine **Obergrenze ueber den
  ganzen Hub**: der grosse Teil des 28.07.-Verbrauchs ging an energie, normen, twin und
  immobilienbewertung, nicht an das Destillat. Die saubere Zuordnung je Session bleibt offen und
  ist seit dem 28.07. vorgemerkt.
- Spec-Gate: `specs/bauprodukte-spec.md` (28.07. 01:33) liegt vor, haengt nicht.
- Korpus-Queue: **nicht komplett**, Kriterium (g) nicht erfuellt. Die Stand-Zeile nennt weiterhin
  «6 Artikel (Stand 28.07. 06:30)» und liegt damit unveraendert einen Artikel zurueck.
- Kriterium (f) **nicht erfuellt**: es gab keinen Aufwand ohne Ertrag, weil es keinen Aufwand gab.

**Strukturbefund fuer den Radar (Handlungsbedarf, aber kein Mail-Kriterium): der Destillat-Loop
hat seit 24 Stunden keinen Taktgeber mehr, der ihn erreicht.** Er steht in der Registry als
«Manual only» und wurde faktisch von der Mac-Mini-Nachtschicht getaktet. Deren Prioritaetenliste
nennt ihn aber nirgends: Prioritaet 4 lautet «naechste faellige Trainingslektion unter
`wissen/*/training/PROGRAMM.md`», und **`wissen/bauprodukte/` hat weder einen `training/`-Ordner
noch eine `PROGRAMM.md`** (nachgemessen: nur baurecht, energie, grobkosten, immobilienbewertung,
normen, planungsgrundlagen, spec und wettbewerbs-dna haben eine). Sein Inventar liegt stattdessen
unter `skills/wissens-destillat/training/`, wo der Nachtschicht-Prompt nicht sucht. Deshalb haben
alle vier Nachtlaeufe korrekt andere KBs gewaehlt. Der am 28.07. als «einziger produktiver
Lern-Loop» bezeichnete Mechanismus ist damit nicht leergelaufen, sondern **unadressierbar
geworden**. Das ist die stillere Variante desselben Fehlers und im Log genauso wenig sichtbar wie
eine Delta-Null-Serie. Naheliegende Behebungen, Entscheid beim Radar bzw. bei Raphael: entweder
`wissen/bauprodukte/training/PROGRAMM.md` anlegen, damit Prioritaet 4 greift, oder den
Destillat-Loop als eigene Prioritaet in den Nachtschicht-Prompt aufnehmen, oder ihm einen eigenen
Cron geben. Der 13:30-Versuchsslot allein loest es nicht: er wuerde dieselbe Prioritaetenliste
abarbeiten.

**Mittags-Slot 13:30 (befristeter Versuch seit 29.07.):** in `ch.jans.nachtschicht.plist`
bestaetigt (vier Slots: 23:30, 02:30, 05:30, 13:30). Er hat heute noch nicht gefeuert. Das
Lauf-Gate hat ihn nie abgewiesen, weil es ihn noch nie gesehen hat: `gate-Macmini.log` enthaelt
insgesamt drei Zeilen (zwei Freigaben, eine Abweisung `radar-negativ-mini` aus dem
Selbsttest-Abweisungspfad). Auswertung fuer Raphaels Entscheid ab dem 05.08.

**Nebenbefunde, kein Handlungsbedarf:** (1) Die Journalzeile `diagnose-fix-bare` 29.07. 04:14
(rc=1, «OAuth session expired») ist laut Radar-Nachtrag `915df0c0` der eigene Testfehler des
Radars, nicht ein Stationsbefund; die MacBook-Pro-Anmeldung ist intakt. (2) Speicher MacBook Pro
zum Messzeitpunkt **3'603 MB** verfuegbar (frei 64 / inaktiv 3'539 / purgeable 0), Druckstufe **2**.
Ueber der 3-GB-Schwelle des Lauf-Gates, aber knapp; bei weiterem Absinken wuerden Laeufe auf
dieser Station abgewiesen.

**Meldeentscheid: keine Mail.** Kein einziges der Kriterien (a) bis (g) ist erfuellt, und der
einzige echte Handlungsbedarf (Destillat ohne Taktgeber) gehoert dem Radar, der alle drei Stunden
laeuft und dafuer die Zustaendigkeit hat. Zuletzt gemailt wurde am **28.07. 07:02** («Morgenbriefing
28.07. ausgefallen — der NAS-Mount, nicht die Tokens»); dieser Befund ist inzwischen geheilt.

## 2026-07-28 07:44 — STILL (keine Mail)

Zweiter Lauf desselben Tages, 46 Minuten nach dem 06:58-Lauf. Ursache erkennbar in der
Registry: der Task-Runner dieser Station stand zwischen ~01:10 und ~06:50 still und hat
danach den Rückstand in einem Nachhol-Schwung abgearbeitet (`heartbeat-daily`,
`zahlungsabgleich-check`, `konversations-log`, `twin-*` tragen alle `lastRunAt` 06:50–07:44).
Dieser Lauf misst deshalb nur das Delta zum 06:58-Eintrag.

Verbrauch teuer/total je Station (Mio), Messung 07:44:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 22.07. | 2.89 | 45.02 | 2.11 | 62.60 |
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. (bis 07:44) | 3.57 | 59.24 | 1.47 | 31.61 |

Kombiniert teuer 28.07. bis 07:44: **5.03 Mio** — unauffällig. Kriterium (b) nicht erfüllt
(27.07. kombiniert 26.50 Mio, darunter der Schwellwert 35; die Folgetag-Regel scheitert am
Nullwert des 26.07.).

**Blockade-Status: SAUBER.** 926 strukturelle Limit-Ereignisse im 24-h-Fenster (450 MacBook Pro,
476 Mac Mini), **alle** dem bereits gemeldeten Wochenlimit-Ausfall zugehörig, letztes Ereignis
27.07. 11:59 lokal (Reset 12:00). Seither keines. **Interaktive Sessions mit Limit-Ereignis: 0.**
Der eine auf dem Mac Mini als INTERAKTIV typisierte Treffer ist der Nachtschicht-Dispatch-Prompt
(«Nachtschicht-Zyklus Mac Mini, Fenster 18:00-09:00»), also ein Loop — die Heuristik erkennt
diesen Opener noch nicht; für den nächsten Lauf als Loop-Muster vorzumerken. Kriterium (c)
formal weiterhin im Fenster, aber identisch mit dem am 27.07. 21:45 UND 28.07. 06:58 gemeldeten
Befund → keine Wiederholungsmail.

**Operative Briefings:** `logbuch-radar` unverändert der um 06:58 gemeldete Stand — Lauf 06:50
abgebrochen, keine Briefing-Mail, `nextRunAt` steht auf 29.07. 06:54, also **kein automatischer
Nachholversuch; das Morgenbriefing 28.07. bleibt ohne Handeingriff verloren**. Bereits gemeldet →
keine zweite Mail. `hub-chef-taeglich` (fällig 08:38) und `mahnwesen-verzugscheck` (08:05) waren
zum Messzeitpunkt noch nicht fällig; `zahlungsabgleich-check` startete 07:43 im Nachhol-Schwung
und ist noch nicht beurteilbar — beim nächsten Lauf nachziehen.

**Radar-Herzschlag: LEBT.** RADAR.md jüngster Eintrag 28.07. 06:55, `lastRunAt` 06:55,
`nextRunAt` 07:57 — weit innerhalb der 12-h-Schwelle. Kriterium (e) nicht erfüllt.

**Leerlauf-Kontrolle:** kein Runner-Prozess auf beiden Stationen, Logs still seit 27.07. 22:14,
STOP-Macbookpro (27.07. 22:15) und STOP-Macmini (28.07. 01:09) stehen mit Begründung. Gewollte
Stilllegung, kein Leerlauf.

**Destillat-Aufsicht (zweite Erhebung, Delta zu 06:58):**
- (a) Fortschritt: Sektionen 37/37, 214 Dateien inventarisiert. Aufschlüsselung neu erhoben:
  **146 `[-]` Spec-Ausschluss · 32 `[ ]` offen · 23 `[t]` triagiert · 13 `[x]` destilliert.**
  **Messfehler-Korrektur:** `inventar.sh --stand` weist als `dateien_offen` **nur** die `[ ]`
  aus. Der Wert steht seit 06:58 unverändert auf 32 — nicht weil die Front steht, sondern weil
  Lauf 4 zwei bereits triagierte Dateien abgearbeitet hat (`[t]` → `[x]`, die beiden
  Terrazzo-Quellen). Die eigentliche Destillier-Arbeit passiert im Schritt `[t]` → `[x]` und ist
  in `dateien_offen` unsichtbar. **Ab sofort ist `[x]` die Fortschrittsgrösse** (13, aus 11 vor
  Lauf 4 abgeleitet über den Lauf-4-Report), nicht `dateien_offen`.
- (b) Ertrag: **7 Artikel** (+1 seit 06:58): neu `terrazzo-kunststein-bodenbelaege.md`
  (28.07. 07:33). Alle 7 `emerging`, 0 `established`.
- (c) Delta-Null-Serie: **0** — vier Läufe (04:30 Inventar+Artikel, 05:30 Kurator/Verifikation,
  06:30 BKP 273, 07:30 BKP 281), jeder mit messbarem Ergebnis. Keine Rücktaktung fällig.
- (d) Stückkosten: 5.03 Mio teuer / 7 Artikel = **~0.72 Mio je Artikel** (06:58: ~0.52). Der
  Anstieg stammt überwiegend aus dem Nachhol-Schwung der Nicht-Destillat-Tasks um 07:43 und aus
  zwei Frühwarnungsläufen, nicht aus teurerer Destillat-Arbeit. Wie am 06:58 vermerkt bleibt der
  Wert eine **Obergrenze**; ein reiner Destillat-Preis braucht eine Zuordnung je Session — als
  Verbesserung für den nächsten Lauf vorgemerkt.
- Spec-Gate: `specs/bauprodukte-spec.md` (28.07. 01:33) liegt vor — hängt nicht.
- Korpus-Queue: **nicht komplett** (bauprodukte in Arbeit) → Kriterium (g) nicht erfüllt. Die
  Stand-Zeile in `KORPUS-QUEUE.md` nennt noch «6 Artikel (Stand 28.07. 06:30)» und ist damit einen
  Artikel im Rückstand — Nachführung ist Sache des Destillat-Loops, nicht dieser Aufsicht.

**Strukturbefund für den Radar (kein eigenes Kriterium, keine Mail):** Der Destillat-Loop lief
heute Nacht **viermal, obwohl der VOLLGAS-Runner auf beiden Stationen stillsteht**. Treiber ist
`ch.jans.nachtschicht` (launchd, Mac Mini) im Stundentakt — nicht der Runner. Die Angabe in der
Task-Registry, der Loop werde «ausschliesslich vom VOLLGAS-Endlos-Runner» getaktet, trifft damit
nicht zu. Das ist genau die dritte Feuerstelle aus Rule 260727 (Registry · Runner · launchd);
hier **benigne**, weil sie Artikel produziert statt Tokens zu verbrennen — aber die Beschreibung
gehört an die Realität angeglichen, damit eine spätere Stilllegung nicht wieder an einem
übersehenen Taktgeber scheitert. Zur Kenntnis an den Leerlauf-Wächter.

**Meldeentscheid: KEINE Mail.** Kein Kriterium neu erfüllt; (c) und (d) sind wortgleich mit dem
Befund, der heute 06:58 und gestern 21:45 bereits gemailt wurde. Letzte Mail: 28.07. 06:58.
**Nächste Mail** erst bei neuer Kontingent-Erschöpfung, blockierter interaktiver Sitzung,
einem weiteren ausgefallenen Briefing (insbesondere `hub-chef-taeglich` 08:38) oder wenn der
Destillat-Loop Tokens ohne Ertrag verbraucht.

## 2026-07-28 06:58 — GEMELDET (Mail an rj@ gesendet)

Verbrauch teuer/total je Station (Mio), Messung 06:57:

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 18.73 | 556.45 | 7.77 | 178.32 |
| 28.07. (bis 06:57) | 1.80 | 27.93 | 1.31 | 26.86 |

Korrektur zum Eintrag 27.07. 21:45: die dort genannten Tageswerte (MacBook 14.36, Mini 6.04)
waren Zwischenstaende der 21:45-Messung; der volle Tag 27.07. schliesst bei 18.73 / 7.77.

**Blockade-Status: SAUBER.** Strukturelle Pruefung (isApiErrorMessage / type=error /
apiErrorStatus 429 + Limit-Text) ueber 30 h: 1'129 Ereignisse, ALLE dem bereits gemeldeten
Wochenlimit-Ausfall zugehoerig, letztes Ereignis 27.07. 11:59 lokal (Reset 12:00). Seither
kein einziges. **Interaktive Sessions mit Limit-Ereignis: 0** — alle 1'129 waren SCHEDULED.
Kriterium (c) formal erfuellt (Erschoepfung lag im 24-h-Fenster), aber identisch mit dem am
27.07. gemeldeten Befund → keine Wiederholungsmail dafuer.

**MELDEGRUND war Kriterium (d) — operatives Briefing ohne Deliverable:**
`logbuch-radar` startete heute 06:51, fand `/Volumes/daten` nicht (Startup-Hook meldete den
Mount als fehlend), versuchte `ensure-nas-mounted.sh` und brach nach drei Schritten ab
(Session c3346ea5, 20 Zeilen, Ende 06:53). Keine Briefing-Mail. Registry hat `nextRunAt`
bereits auf 29.07. 06:54 weitergestellt → **kein automatischer Nachholversuch**, das
Morgenbriefing 28.07. ist ohne Handeingriff verloren. Der Mount war um 06:56 wieder da
(SMB-Flatter, Rule 260725), ein Lauf von Hand ginge durch. Ursache damit ausdruecklich
NICHT Tokens — anderer Fehlertyp als am 27.07.
`hub-chef-taeglich` (08:35) war zum Messzeitpunkt noch nicht faellig; `mahnwesen-verzugscheck`
und `zahlungsabgleich-check` liefen am 27.07. abends durch.

**Radar-Herzschlag: LEBT WIEDER.** RADAR.md juengster Eintrag 28.07. 06:55, dazu eine laufende
`vollgas-chef-radar`-Session (255e38ad, 06:57). Der am 27.07. gemeldete Aufsichtsausfall
(vier Tage ohne Lauf) ist behoben. Kriterium (e) nicht erfuellt.

**Leerlauf-Kontrolle:** Runner auf BEIDEN Stationen bewusst gestoppt (STOP-Macbookpro 27.07.
22:20, STOP-Macmini 27.07. 22:15, je mit Begruendung und Rueckkehr-Bedingung). Logs stehen
seit 27.07. 22:14 still, kein Prozess laeuft. Das ist gewollte Stilllegung, kein Leerlauf.

**Destillat-Aufsicht (erste Erhebung nach Schritt 5b):**
- (a) Fortschritt: Korpus `bauprodukte`, Sektionen 37/37 inventarisiert, 214 Dateien
  inventarisiert, **32 offen**. Erster Messpunkt — ab morgen gegen diesen Wert vergleichen.
- (b) Ertrag: **6 Artikel** in `wissen/bauprodukte/wiki/` (+ INDEX + QUESTIONS), alle heute
  zwischen 04:38 und 06:32 geschrieben: dachbegruenung-systeme, pu-beschichtung-fassade,
  erco-lichtplanung-grundlagen, bkp-261-aufzuege, chromstahltreppe-oberflaechen,
  arbeitsplatten-verbinder-schreinerei. Status: 6x `emerging`, 0x `established`.
- (c) Delta-Null-Serie: **0** — alle drei Laeufe (04:30 Inventar+Artikel, 05:30 Kurator,
  06:30 BKP 273) haben geliefert. Keine Ruecktaktung faellig.
- (d) Stueckkosten: 3.11 Mio teuer (beide Stationen, bis 06:57) / 6 neue Artikel =
  **~0.52 Mio je Artikel**. VORBEHALT: der Tag enthaelt auch twin-mail, twin-fidelity,
  normen und wissens-chef — der Wert ist eine Obergrenze, nicht der reine Destillat-Preis.
  Ab morgen als Reihe fuehren.
- Spec-Gate: `specs/bauprodukte-spec.md` liegt vor (28.07. 01:33) — Gate haengt nicht.
- Korpus-Queue: NICHT komplett (bauprodukte «naechster», 32 Dateien offen) → Kriterium (g)
  nicht erfuellt.

**Strukturbefund (mitgemeldet, kein eigenes Kriterium):** Der Destillat-Loop ist als
`Manual only` angelegt mit dem Vermerk «getaktet wird der Loop ausschliesslich vom
VOLLGAS-Endlos-Runner»; der Runner steht auf beiden Stationen still. Dass die STOP-Dateien
liegen bleiben, ist laut Eintrag «28.07. — ENTSCHEID Raphaels» eine **bewusste** Entscheidung
(«Der Runner startet erst auf Raphaels Wort»), KEIN vergessener Vollzug. Der beobachtbare
Befund bleibt trotzdem: die drei Laeufe dieser Nacht kamen NICHT vom Runner, sondern von der
Mac-Mini-Nachtschicht, die die Aufgabe ad hoc aufgriff — obwohl der Runner als «einziger
Feuermechanismus» konzipiert ist. Das ist dieselbe Klasse von Drittmechanismus wie die
launchd-Jobs (Rule 260727, Nachtrag 28.07.): der Loop feuert aus einer Quelle, die im Entwurf
nicht vorgesehen ist. Solange der Runner ruht, haengt der Ertrag an dieser Zufallsquelle.

KORREKTUR zur gesendeten Mail: dort ist dieser Punkt als «Rueckkehr-Bedingung erfuellt,
vollzogen wurde sie nicht» formuliert — das liest sich wie ein Versaeumnis und ist insofern
unpraezise, der Halt ist gewollt. Die Empfehlung selbst (Runner auf Raphaels Wort freigeben)
deckt sich exakt mit dem hinterlegten Entscheid und bleibt unveraendert gueltig. Keine
Korrekturmail — der Handlungsvorschlag aendert sich nicht.

**Naechste Mail:** nicht fuer denselben Befund. Erst wieder bei neuer Kontingent-Erschoepfung,
bei blockierter interaktiver Sitzung, bei erneut ausgefallenem Briefing, bei Delta-Null-Serie
im Destillat oder wenn die Korpus-Queue komplett meldet.

## 2026-07-28 — ENTSCHEID Raphaels: der Runner bekommt eine eigene Lern-Aufgabe

Beantwortet die Grundsatzfrage vom 27.07. («neue Aufgaben oder Runner ausbauen?»): **neue
Aufgabe.** Raphael will «eine schlagkräftige AI auskristallisieren» aus dem Wissen, das auf
dem Server liegt — über MD-Dateien in ein Wiki, nach der Karpathy-Spec-Methode, mit dem
idealen Modell je Phase. Umgesetzt als Skill `wissens-destillat`.

**Warum das die richtige Füllung ist.** Die 15 bestehenden KBs (1'662 MD) melden reihum
Delta Null — ihr Rohmaterial ist aufgebraucht, darum lief der Runner leer. Das unerschlossene
Wissen liegt NEBEN dem Hub, auf demselben NAS: `03 Bauprodukte_BKP` (37 Gewerke nach BKP),
`04_Buero/02_Projekte` (22 abgewickelte Projekte), `04_Buero/10_Referenzenbibliothek`,
`02_Architektur_Archiv` (23 Themensektionen). Der Runner bekommt also nicht irgendeine
Beschäftigung, sondern die einzige, die noch echtes Delta erzeugt.

**Modell je Phase** (Rule 260719, «Minimum Viable Model»): Phase 0 Inventar = bash, null
Tokens · Phase 1 Triage = Haiku 4.5 · Phase 2 Destillat = Sonnet 5 · Phase 3 Verifikation,
Promotion, Kuratierung = Opus 5 in der Runner-Session selbst. Die teure Stufe macht
ausschliesslich das, wofür sie da ist: Belege prüfen, Widersprüche auflösen, Status heben.

**Kein zweiter Taktgeber** (Rule 260727): der Task `wissens-destillat` ist AD-HOC angelegt
(kein Cron). Einziger Feuermechanismus ist der Endlos-Runner; `destillat` steht neu in dessen
`INCLUDE_RE`. Der Runner fährt damit genau EINEN Loop — verifiziert durch Nachbau der
Auswahllogik.

**Gebaut:** `skills/wissens-destillat/` (SKILL.md, KORPUS-QUEUE.md, tools/korpus.conf,
tools/inventar.sh, tools/destillat-lauf.sh), KB-Skelett `wissen/bauprodukte/`, Phase 0
getestet (37 Sektionen erfasst, 134 Dateien inventarisiert, idempotent).

**Diese Frühwarnung ist neu die Ertragskontrolle** (Schritt 5b): sie misst Front-Fortschritt,
Artikelertrag, Delta-Null-Serie und Stückkosten je Artikel. Neue Meldegründe (f) Tokens ohne
Wissenszuwachs in 48h und (g) Queue komplett. Damit kann der Loop nicht mehr still Geld
verbrennen, ohne dass es am nächsten Morgen sichtbar ist.

**Noch NICHT vollzogen — bewusst:** die STOP-Dateien beider Stationen bleiben liegen. Der
Runner startet erst auf Raphaels Wort:
`rm /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP-Macbookpro` (analog `-Macmini`).
Der erste Lauf schreibt dann nur die Korpus-Spec und endet — Spec-Gate vor Destillat.

## 2026-07-27 22:25 — UMSETZUNG (Freigabe Raphael: «Empfehlungen umsetzen, Leerlaeufe abschalten»)

Bei der Umsetzung kam die eigentliche Ursache des Totalausfalls ans Licht — sie war in der
Mail von 21:45 noch nicht bekannt und wiegt schwerer als die dort genannten drei Punkte.

**Ursache: DOPPELLAUF.** Der Endlos-Runner fuhr in JEDEM Zyklus (rund stuendlich) genau die
fuenf Loops, die bereits einen eigenen, bewusst gedrosselten Scheduled Task haben:
baurecht-buch-training (Task: woechentlich), normen-training-nacht (2x taeglich),
twin-fidelity-review (1x), twin-mail-training (2x), wettbewerbs-dna-training (2x). Zwei
Mechanismen dahinter:
1. Der laufende Runner-Prozess (PID 66891, gestartet 25.07. 19:22) hielt `EXCLUDE_RE` im
   Speicher — die spaeteren Filter-Erweiterungen erreichten ihn nie.
2. Der Runner liest nur das SKILL.md-Frontmatter, nicht den Registry-Zustand. Registry-seitig
   deaktivierte Loops (immobewertung-training seit 26.07.) liefen im Runner weiter.

**Ausgefuehrt:**
- `vollgas-chef-radar` neu gefasst und frisch armiert (Takt 50 */3): neu LEERLAUF-WAECHTER mit
  3x-/5x-Delta-Null-Schwellen, Wochen- statt nur 5h-Kontingentblick, Selbstkontrolle auf
  verpasste eigene Laeufe. Zwei Defekte im alten Prompt behoben: er wies `git commit/push`
  ueber den SMB-Mount an (Verstoss gegen Rule 260726, jetzt `nas-commit-now.sh`) und wertete
  ein volles Fenster unabhaengig vom Arbeitsinhalt als Erfolg. Der reparierte Radar hat noch
  im selben Lauf selbst gehandelt (immob-Ausschluss im Runner ergaenzt, 22:07).
- `wettbewerbs-dna-training` deaktiviert (wartet auf Richtungsentscheid Raphaels).
- `normen-training-nacht` von 2x auf 1x taeglich zurueckgenommen (Loop meldet Inventar als
  inhaltlich komplett, offen nur zwei Lignum-Dokumente).
- `immobewertung-training` war bereits registry-deaktiviert; zusaetzlich mit `immob` im
  Runner-Filter abgesichert (sonst haette der naechste Neustart ihn wiederbelebt und den
  One-Time-Task `immobewertung-marktpuls-260901` vorzeitig gefeuert).
- `baurecht-buch-training` neu in `EXCLUDE_RE` — der woechentliche Task bleibt, der stuendliche
  Runner-Zusatzlauf faellt weg.
- Runner auf BEIDEN Stationen stillgelegt (STOP-Macbookpro, STOP-Macmini, je mit Begruendung
  und Rueckkehr-Bedingung in der Datei). Mac Mini: alle dortigen Loops tragen `enabled: false`,
  der Runner drehte seit Stunden leer. MacBook Pro: nach der Filter-Bereinigung meldet er
  «Keine Trainings-Tasks gefunden» (verifiziert 22:14:45, PID 77522) — es bleibt nichts, was
  nicht schon getaktet laeuft.
- `vollgas-fruehwarnung` erweitert: prueft neu, ob die operativen Briefings ihr Deliverable
  erreicht haben, ob der Radar ueberhaupt einen Herzschlag hat (Sessions, nicht nur `enabled`)
  und ob ein Runner leer dreht.
- Zwei neue Rules: 260727 «Kein zweiter Taktgeber» und 260727 «Leerlauf-Waechter».

**Wichtig:** Das ist KEINE Drosselung des Hubs. Alle Lern-Loops laufen ueber ihre Scheduled
Tasks weiter (twin-mail 2x, twin-fidelity 1x, normen 1x, baurecht woechentlich, wissens-chef 1x).
Stillgelegt ist nur der zweite, ungetaktete Feuermechanismus.

**Offene Grundsatzfrage an Raphael:** Soll der Endlos-Runner neue, eigene Lern-Aufgaben
bekommen (dann definieren und die STOP-Dateien entfernen), oder bleibt die Lern-Arbeit
dauerhaft bei den getakteten Tasks (dann Runner + Supervisor ganz ausbauen)?

## 2026-07-27 21:45 — GEMELDET (Mail an rj@ gesendet)

Verbrauch teuer/total je Station (Mio):

| Tag | MacBook Pro teuer | MacBook Pro total | Mac Mini teuer | Mac Mini total |
|---|---|---|---|---|
| 22.07. | 2.89 | 45.02 | 2.11 | 62.60 |
| 23.07. | 3.87 | 63.53 | 4.58 | 137.53 |
| 24.07. | 3.90 | 74.20 | 3.92 | 124.16 |
| 25.07. | 29.77 | 624.10 | 23.32 | 689.69 |
| 26.07. | 0.00 | 0.00 | 0.00 | 0.00 |
| 27.07. | 14.36 | 379.50 | 6.04 | 132.25 |

**Blockade-Status: HART.** Wochenlimit («You've hit your weekly limit · resets 12pm
Europe/Zurich») von 26.07. 00:53 bis 27.07. 12:00 lokal (~35 h) vollständig erschöpft,
beide Stationen. Rund 2'000 Fehlversuche MacBook Pro, ~2'700 Mac Mini — Tagessumme
26.07. exakt 0.00 Mio produktive Tokens auf beiden Stationen.

**Interaktive Sessions:** 0 menschlich getippte Sitzungen mit Limit-Ereignis nachweisbar
(strukturelle Prüfung über isApiErrorMessage/apiErrorStatus 429, Session-Typisierung über
erste User-Eingabe). Kriterium (a) im engen Wortlaut also NICHT erfüllt.

**Betroffen war stattdessen der operative Betrieb:** `logbuch-radar` (04:55) und
`hub-chef-taeglich` (06:39) brachen heute früh nach dem ersten Arbeitsschritt ab, ohne
Briefing-Mail — das Morgenbriefing 27.07. fiel aus. `mahnwesen-verzugscheck` und
`zahlungsabgleich-check` liefen durch.

**Zweitbefund (P1):** `vollgas-chef-radar` ist alle 3 h getaktet und enabled, lastRunAt
aber 25.07. 19:47 — seit über zwei Tagen kein Lauf; RADAR.md steht seit 25.07. 21:55
still. Die Aufsicht hat den 35-h-Ausfall deshalb nirgends gemeldet. Kriterium (c) war
darum nicht messbar.

**Kriterium (b):** kombinierter teurer Tagesverbrauch 25.07. = 53.1 Mio (weit über
18 Mio), 26.07. jedoch 0.00 (weil blockiert) — zwei Folgetage formal nicht erfüllt.

**Meldeentscheid:** trotz formal nicht erfüllter Einzelkriterien gemeldet — ein 35 h
leeres Wochenkontingent mit ausgefallenem Morgenbriefing ist der Sachverhalt, den diese
Frühwarnung verhindern soll. Kein Drossel-Vollzug (das entscheidet Raphael); Mail enthält
`touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP` als Option.

**Nächste Mail:** nicht für denselben Befund. Erst wieder bei neuer Erschöpfung, bei
blockierter interaktiver Sitzung oder wenn der Radar weiterhin tot ist.
