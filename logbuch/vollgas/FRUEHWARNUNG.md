# Vollgas-Frühwarnung — Log

Still-by-default: pro Lauf ein datierter Einzeiler. Mail nur bei echtem Handlungsbedarf.
Werte in Mio Tokens, «teuer» = input + cache_creation + output (die relevante Grösse;
«total» ist von billigem cache_read dominiert).

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
