# Vollgas-Frühwarnung — Log

Still-by-default: pro Lauf ein datierter Einzeiler. Mail nur bei echtem Handlungsbedarf.
Werte in Mio Tokens, «teuer» = input + cache_creation + output (die relevante Grösse;
«total» ist von billigem cache_read dominiert).

## 2026-07-28 — ENTSCHEID Raphaels: der Runner bekommt eine eigene Lern-Aufgabe

Beantwortet die Grundsatzfrage vom 27.07. («neue Aufgaben oder Runner ausbauen?»): **neue
Aufgabe.** Raphael will «eine schlagkraeftige AI auskristallisieren» aus dem Wissen, das auf
dem Server liegt — ueber MD-Dateien in ein Wiki, nach der Karpathy-Spec-Methode, mit dem
idealen Modell je Phase. Umgesetzt als Skill `wissens-destillat`.

**Warum das die richtige Fuellung ist.** Die 15 bestehenden KBs (1'662 MD) melden reihum
Delta Null — ihr Rohmaterial ist aufgebraucht, darum lief der Runner leer. Das unerschlossene
Wissen liegt NEBEN dem Hub, auf demselben NAS: `03 Bauprodukte_BKP` (37 Gewerke nach BKP),
`04_Buero/02_Projekte` (22 abgewickelte Projekte), `04_Buero/10_Referenzenbibliothek`,
`02_Architektur_Archiv` (23 Themensektionen). Der Runner bekommt also nicht irgendeine
Beschaeftigung, sondern die einzige, die noch echtes Delta erzeugt.

**Modell je Phase** (Rule 260719, «Minimum Viable Model»): Phase 0 Inventar = bash, null
Tokens · Phase 1 Triage = Haiku 4.5 · Phase 2 Destillat = Sonnet 5 · Phase 3 Verifikation,
Promotion, Kuratierung = Opus 5 in der Runner-Session selbst. Die teure Stufe macht
ausschliesslich das, wofuer sie da ist: Belege pruefen, Widersprueche aufloesen, Status heben.

**Kein zweiter Taktgeber** (Rule 260727): der Task `wissens-destillat` ist AD-HOC angelegt
(kein Cron). Einziger Feuermechanismus ist der Endlos-Runner; `destillat` steht neu in dessen
`INCLUDE_RE`. Der Runner faehrt damit genau EINEN Loop — verifiziert durch Nachbau der
Auswahllogik.

**Gebaut:** `skills/wissens-destillat/` (SKILL.md, KORPUS-QUEUE.md, tools/korpus.conf,
tools/inventar.sh, tools/destillat-lauf.sh), KB-Skelett `wissen/bauprodukte/`, Phase 0
getestet (37 Sektionen erfasst, 134 Dateien inventarisiert, idempotent).

**Diese Fruehwarnung ist neu die Ertragskontrolle** (Schritt 5b): sie misst Front-Fortschritt,
Artikelertrag, Delta-Null-Serie und Stueckkosten je Artikel. Neue Meldegruende (f) Tokens ohne
Wissenszuwachs in 48h und (g) Queue komplett. Damit kann der Loop nicht mehr still Geld
verbrennen, ohne dass es am naechsten Morgen sichtbar ist.

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
