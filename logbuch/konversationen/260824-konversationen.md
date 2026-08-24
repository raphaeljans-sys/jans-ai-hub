# Konversations-Destillat 24.08.2026

**Abdeckung:** MacBook Pro 21 Sessions · Mac Mini 636 Sessions · Cloud/Dispatch 4 Dispatch-Protokolle
(`remote-tasks/results/` und `pending/` leer) — Fenster 26 h (23.08.2026 04:17 bis 24.08.2026 06:17 CEST).

**Lage in einem Satz:** Das Fenster trug **ein einziges, dafür sehr grosses echtes Gespräch** —
Raphaels Auftrag, das Wochenkontingent noch am Sonntag auszureizen. Daraus wurden zwölf parallele
Läufe auf **drei** Stationen, eine bisher unbekannte dritte Maschine, zwei entschärfte Fallen und
ein offengelegter Zugangs-Token. Die 636 Mini-Sessions sind fast vollständig die Folge davon.

---

## 1. Vollschub-Auftrag «heute auf 100 % Kontingent» (MacBook Pro, 23.08. 13:00 bis 23:56)

**Kern und Entscheide**

- Raphaels Frage wörtlich: «es sind 33% von meinem nutzerguthaben bis jetzt verbraucht, kannst du
  schauen das heute 100% verbraucht sein werden?»
- **Gemessene Antwort: nein, und zwar um Faktor zwei bis drei.** Verbraucht waren 53.0 von
  167 Mio Token (31.7 %). Die fehlenden 114 Mio in den rund 22 h bis zum Reset am Montag 12:00
  verlangten **5.2 Mio Token pro Stunde über beide Stationen** — das 16-fache des
  Wochendurchschnitts (0.32 Mio/h) und rund das Doppelte der besten je gemessenen Stunde
  (2.71 Mio/h, 22.08. nachts). Bester ganzer Tag der Woche: 8.68 Mio (20.08., MacBook).
  Realistisches Tagesziel laut RADAR-Nachtrag: rund 50 %.
- **Auf ausdrückliche Anweisung Raphaels** («ich will es auf dem mac book pro verdammt nochmals
  rattern sehen, alles auf vollschub») wurden trotzdem alle Reserven gezogen. Endstand 17:35:
  **zwölf gegatete Läufe auf drei Stationen**, Budgetdeckel je 40 USD, `acceptEdits`.
  - Mac Mini sieben: `sia-sweep`, `energie-fragen`, `projekt-triage2`, `grobkosten-fragen`,
    `wettbewerbs-dna`, `planungsgrundlagen-fragen`, `entwurfs-referenzen`
  - MacBook Pro einer: `baurecht-fragen` (Gate liess bei Druck 2 nur einen Platz zu)
  - Revendo-Station drei: `wettbewerb-tief`, `firmengruendung`, `twin-vertiefung`
- **Ergebnis der Aktion, Stand 24.08. 06:20:** Kontingent bei **86.5 %** von 167 Mio (144.43 Mio),
  bei 96.7 % verstrichener Woche — Rückstand nur noch −10.2 Punkte gegenüber −54.6 am Vortag.
  Der Vollschub hat also gewirkt, die 100 % blieben wie vorhergesagt ausser Reichweite.
- **Zwei Fehlstarts, beide lehrreich und beide protokolliert:**
  1. Der SSH-Alias `mini` ist im SSH-Config des Users `raphaeljans` definiert; Raphaels Terminal
     lief als `revendo` und kannte ihn nicht. Echte Adresse aus dem Setup-Konnektor:
     LAN 192.168.1.210, Tailscale 100.120.219.12.
  2. Die nicht-interaktive SSH-Shell trägt `PATH=/usr/bin:/bin:/usr/sbin:/sbin`, also ohne
     Homebrew — «claude nicht gefunden», obwohl das Binary die ganze Zeit da war. Fix:
     `CLAUDE_BIN` explizit setzen. Dasselbe Muster wie der KISPI-Fall vom 09.08.
- **Nebenbefund:** `projekt-triage` hat sich selbst in der Prozessliste gesehen, für einen
  konkurrierenden Lauf gehalten und sich freiwillig gestoppt (rc=0, 1.31 USD). Fehlgriff des
  Doppelarbeit-Guards; korrigiert als `projekt-triage2` neu gestartet.
- Der Auto-Mode-Klassifikator hat das Ausrollen und Fernstarten zunächst blockiert; die Schranke
  wurde nicht umgangen, sondern der fertige Befehl vorgelegt (Rule `wege-und-vollmachten`).

**Offene Punkte und Folgeaktionen**

- **Der OAuth-Token der Revendo-Station wurde im Klartext ins Gespräch kopiert** (Raphael:
  «bitte mach es selber ich kann es nicht»). Der Token ist ein Jahr gültig und gibt vollen
  Zugriff auf das Claude-Konto. Er wurde weder in eine Datei geschrieben noch verwendet, ist
  aber als offengelegt zu behandeln. **Aktion Raphael: mit `claude setup-token` einen neuen
  erzeugen, damit der alte hinfällig wird.** Siehe neue Registerzeile.
- Auf der Revendo-Station sind **keine Fernstarts möglich**: die CLI dort ist nur über den
  GUI-Login am Schlüsselbund angemeldet, eine SSH-Sitzung kommt nicht daran («Not logged in»,
  am Mini mit entzogenem Token gegengeprüft). Läufe müssen dort lokal gestartet werden; lesende
  SSH-Befehle gehen uneingeschränkt.

**Radar-relevant:** **ja** — offengelegter Zugangs-Token (Sicherheit, Aktion Raphael).
Der Kontingent-Stand selbst betrifft den bestehenden Radar-Punkt Kontingent-Ampel, der Reset
läuft heute 12:00.

---

## 2. Dritte Station entdeckt: MacBook Pro von Revendo (MacBook Pro, 23.08. 17:20 bis 17:35)

**Kern und Entscheide**

- Raphaels Nachfrage «und kannst du den revendo schon einbinden das es rattert» förderte zutage:
  `macbook-pro-von-revendo` (Tailscale 100.96.212.110) ist ein **eigenes Gerät, in keinem
  Hub-Register geführt** — und mit **32 GB RAM, 12 Kernen, Druck 1 und Swap 0.00 MB** die
  stärkste der drei Maschinen. NAS gemountet, Hub-Repo vorhanden, app-gebündelte CLI 2.1.237.
- **Im Setup-Konnektor nachgetragen** (`connectors/hub-setup-daten.json`, Station
  `macbook-revendo`), damit sie nicht wieder verlorengeht.
- **Falle 1, still und gefährlich:** `hostname -s` liefert dort `MacBookPro`, das Haupt-MacBook
  heisst `Macbookpro` — Unterschied nur in der Gross-/Kleinschreibung, und das NAS-Dateisystem
  unterscheidet die nicht. Die Datei `verbrauch-<station>.json` wäre dieselbe gewesen, die
  Messung des Haupt-MacBooks wäre still überschrieben und die Kontingent-Ampel falsch geworden.
  Behoben **im Script statt an den Systemeinstellungen**: `scripts/kontingent-budget.sh` nimmt
  seit dem 23.08. ein vorgegebenes `STATION=` entgegen, rückwärtskompatibel; die dritte Station
  meldet als `Macbookrevendo`.
- Verallgemeinerbar: ein Stationsname, der sich von einem anderen nur in der Schreibweise
  unterscheidet, ist auf einem case-insensitiven Dateisystem kein eigener Name.

**Offene Punkte und Folgeaktionen**

- Die Station meldet ihren Verbrauch nur, solange dort ein Lauf aktiv ist; um 06:20 steht sie
  mit 0.91 Mio und dem Vermerk «VERALTET, 13.5 h alt» in der Bilanz. Ob sie dauerhaft in den
  Betrieb genommen werden soll (eigene Queue, eigener Takt), ist nicht entschieden.
- Die Tailscale-Gegenmessung von dieser dritten Station hat den bestehenden Mini-Ausfall
  präzisiert: `macmini … offline, last seen 3d ago`, der Ausfall reicht bis etwa **20.08.**
  zurück. Betrifft den bestehenden Register-Punkt «Tailscale auf dem Mac Mini ist gestoppt».

**Radar-relevant:** **ja**, indirekt — die Präzisierung des Tailscale-Ausfalls gehört zum schon
geführten Punkt; die Station selbst ist im Konnektor abgelegt und braucht keine eigene Frist.

---

## 3. Qualitäts-Offensive KB `energie` im Multiagenten-Modus (Mac Mini, 24.08. 00:08)

**Kern und Entscheide**

- Raphaels Auftrag: «kannst du im multiagentenmodus arbeiten und das wissen über energietraining
  auf ein neues level heben». Ausgeführt als **Audit mit 13 Agenten in drei Phasen**: sechs
  Prüfdimensionen parallel (Rechenprüfung, Statuskette, Aktualität, Widersprüche,
  Begriffsdisziplin, Belegkette), jede danach adversarial gegengeprüft, dann Synthese.
- **49 Befunde, 47 halten der Gegenprüfung stand** (3 P1, 18 P2, 26 P3); zwei widerlegt, elf
  weitere Vorwürfe hat die Synthese selbst entkräftet und als «nicht nochmals aufnehmen»
  dokumentiert.
- Der zentrale Satz des Audits: **kein einziger Befund stammt aus einer externen Quelle — die KB
  widerspricht sich selbst.** Anlass war, dass die KB zwei Monate lang eine falsche Autarkiezahl
  und einen Tag lang eine falsche Förderantwort führte, beide zufällig gefunden, nicht gesucht.
- Gebaut wurde ein maschineller Prüfer (`datenstand-waechter.py`), der die Fehlerklassen künftig
  findet; er reproduziert die Autarkie-Falle selbständig an acht Stellen.
- **Selbstkritischer Nebenbefund:** Der Hub hatte bereits einen Prüfwerkzeug-Layer unter
  `wissen/tools/` (vier Werkzeuge, zwei davon vom selben Tag). Es wurde gebaut, ohne dort
  zuerst nachzusehen — genau der Fehler, den das Audit beschreibt. Das neue Werkzeug wurde
  danach auf die zwei Fragen zurückgebaut, die der Hub noch nicht stellt.
- **Kollision zweier paralleler Sessions an derselben KB:** eine MacBook-Session hat eine
  Korrektur des Mini-Laufs überschrieben; erkannt und neu gesetzt. Direkte Folge des Vollschubs.

**Offene Punkte und Folgeaktionen**

- Der wichtigste Einzelbefund (02.9, Rahmenkredit Förderprogramm Energie ZH, KRNr 6064) ist
  **bereits im Register geführt und dort am 24.08. als erledigt aufgelöst**: Zustimmung
  17.08.2026, 172 Stimmen, Ausgabenbremse erfüllt; keine Förderlücke im 2. Halbjahr 2026.
  Betrifft Register-Punkt «Qualitaets-Audit KB energie, Befund 02.9».
- Die 18 P2- und 26 P3-Befunde sind Arbeit innerhalb der KB, kein Fristenthema.

**Radar-relevant:** **nein** für das Audit selbst (kein Termin, keine Zusage, kein Betrag);
der Förderkredit-Punkt ist im Register bereits geführt und geschlossen.

---

## 4. Endlosschleife des SIA-Sweeps (Mac Mini, 24.08. seit den frühen Morgenstunden)

**Kern und Entscheide**

- Von den 636 Mini-Sessions des Fensters sind **615 fünf identische Auftrags-Prompts zu je
  123 Wiederholungen** (`normen`-QUESTIONS, SIA-Sweep, `buero-projekte`-Triage,
  `energie`-QUESTIONS, Baurecht-Reglemente-Queue). Das ist kein Gespräch, sondern der
  Vollschub-Runner, der seinen Auftrag im Minutentakt neu startet.
- Der Befund ist heute um **05:29 bereits ins Register eingetragen** worden: der SIA-Sweep
  produziert nur noch Wiederholungs-Befunde, `training/norm-inventar.md` zeigt 0 offene Zeilen,
  `wiki/QUESTIONS.md` unverändert 33 offene Punkte, der KB-CHANGELOG zählt **30 Einträge allein
  am 24.08.** zu diesem einen Auftrag (Datei rund 800 KB). Jeder Lauf verbraucht Kontingent
  (bis 25 USD je Lauf), ohne die KB weiterzubringen.

**Offene Punkte und Folgeaktionen**

- **Aktion Raphael (bereits im Register):** den auslösenden Runner stoppen oder auf ein
  selteneres Intervall bzw. erweiterten Scope (Suva/EKAS) umstellen. Claude greift nach Rule
  `interaktive-eingriffe` nicht selbst in Runner oder Cron ein.
- Zusammenhang, der im Registereintrag noch nicht steht: die Schleife ist die **direkte Folge
  des Vollschub-Auftrags vom 23.08.**, nicht ein eigenständiger Defekt. Mit dem Kontingent-Reset
  heute 12:00 fällt der Auslöser nicht von selbst weg.

**Radar-relevant:** **ja**, bereits geführt (Registerzeile 24.08. 05:29) — hier nur der
Ursachen-Zusammenhang ergänzt, keine Dublette.

---

## 5. Routine im Fenster (keine Besonderheiten ausser den genannten)

- **MacBook Pro:** Hub-Chef 23.08. (A7 Jegen-Versand terminiert, Vorgang `260823-085517-38206`,
  fällig heute 24.08. 07:00; neues Script `scripts/versand-mail-senden.sh` geschlossen),
  Logbuch-Radar, Vollgas-Frühwarnung (still, keine Mail), Fidelity-Review (Gesamt-Fidelity 33
  nach 30), Tenant-Hygiene (862.54 GB von rund 1'054 GB, 81.83 %, erster negativer Tageswert
  seit 16.08.), bexio-Hygiene (**Exit 2, 401, dreizehnter Tag in Folge, 15 Kalendertage blind**
  — im Register geführt), Twin-Batch 103.
- **Mac Mini:** vier Dispatch-Nachtschichten, davon drei mit rc=0 und eine mit
  «You've hit your session limit» (24.08. 02:30). Die 05:30-Schicht klärte vier Identitätsfragen
  der KB `architekten-synobsis` und meldete einen Kuriosum-Befund: die Ordner `Dreyer_Otto` und
  `Zeyer_Albert` enthalten je ein Projekt «Haus Jans» in Luzern (1932 bzw. 1930), öffentlich
  nicht dokumentiert — Familienbezug nur aus eigenen Unterlagen klärbar.
- **Session-Limit-Treffer:** vier MacBook-Sessions und eine Dispatch-Schicht endeten zwischen
  00:24 und 02:29 mit «You've hit your session limit · resets 2:40am» — erwartbare Folge des
  Vollschubs, kein Defekt.
- **NAS-Mount:** zweimal gestört (04:10 Fehlmount unter `/Volumes/daten-1`, 06:17 kurzer
  Ausfall im Fidelity-Lauf), beide Male selbst repariert.

**Radar-relevant:** **nein**, ausser dem schon geführten bexio-Blocker und der Jegen-Frist
heute 07:00.
