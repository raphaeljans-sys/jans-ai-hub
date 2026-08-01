# Konversations-Destillat 01.08.2026

**Abdeckung: MacBook Pro 29 Sessions · Mac Mini 7 Sessions · Cloud/Dispatch 6 — Fenster 26h**
(Stand 01.08.2026 06:13 CEST; Extraktion lokal und per SSH auf dem Mac Mini, beide rc=0.
`remote-tasks/results/` im Fenster leer, die sechs Dispatch-Protokolle sind die Nachtschicht-
und Energie-Läufe des Mac Mini und decken sich mit dessen Sessions.)

Von den 36 Stations-Sessions tragen 24 eine Zeile «RAPHAEL:» — die meisten davon sind
systemgenerierte Zeilen (Task-Prompts der Nachtschicht, Skill-Basisverzeichnis des
Korrektur-Harness, Stop-Hook-Feedback, Bild-Übergaben eines Rendering-Laufs) oder die
Fensterprobe «Antworte nur mit: OK». **Eine einzige echte Benutzer-Eingabe** liegt im
Fenster (Block 6). Die übrigen Blöcke sind Läufe mit substanziellem Ergebnis; reine
Routine steht als Summe am Schluss.

---

## 1. KISPI 2619 — Türbuch/Sicherheitskonzept: Frist verstrichen, Nachfass-Entwurf liegt bereit

**Station/Zeit:** Mac Mini 01.08. 05:30 bis 05:42 (Nachtschicht-Zyklus, Priorität 3).

**Kern und Entscheide**

Die von Raphael am 27.07. gesetzte Frist für die interne Freigabe von Türbuch und
Sicherheitskonzept durch die KISPI-Fachstellen (31.07.2026 17:00) ist ohne Rückmeldung
verstrichen. Die Nachtschicht hat daraus einen Nachfass als **Reply-All-Entwurf** auf die
Mail vom 27.07.2026 22:06 aufbereitet: An A. Spahic und D. Pfäffli, Cc Kübler, Ziegel,
Hiltmann, Betreff «Re: 2619 KISPI PPTS: Freigabe Türbuch und Sicherheitskonzept bis
31.07.26 17:00 Uhr». **Nicht versendet**, liegt als Entwurf (id 12050) im Postfach
rj@raphaeljans.ch.

Beim QS-Durchlauf kam ein Betriebsfehler ans Licht: Der vom Agenten `email` erzeugte erste
Draft hatte die richtigen Empfänger, aber einen **leeren Body** (nur eine leere HTML-Hülle).
Der Fehl-Draft wurde gelöscht, der Body direkt aus der Hauptsession neu gesetzt und
verifiziert. Ursache laut Lauf: die beiden QS-Subagenten (`rechtschreibung`, `layout`)
haben keinen Bash-/osascript-Zugriff und können einen Mail-Draft deshalb gar nicht lesen.

**Offene Punkte und Folgeaktionen**

- Entwurf prüfen und versenden ist Raphaels Entscheid; der Hub versendet nicht.
- Der Betriebsfehler ist als eigener Punkt zu führen: solange die QS-Agenten den Draft nicht
  lesen können, prüft niemand, ob überhaupt Text drinsteht.

**Radar-relevant: ja** — verstrichene Frist mit vorbereitetem, unversendetem Entwurf;
betrifft Register-Punkt «31.07.2026 17:00 KISPI Türbuch + Sicherheitskonzept» und die
Kette Jegen Los 274.01 (Vorbestellung, Produktionsstart 01.09., Montagestart 12.10.).

---

## 2. KISPI 2619 — SRZ-Rückmeldung Ziff. 16 und die Sitzung vom 31.07. 11:00

**Station/Zeit:** MacBook Pro 31.07. 07:11 (Logbuch-Radar) und 09:21 (Hub-Chef).

**Kern und Entscheide**

M. Gantenbein (SRZ) hat die Möblierung im Fluchtweg aus dem Bauentscheid 1171/26
herausgelöst: eigene Planeingabe, eigene Verfügung, situativ an die GVZ. Fünf
Nachweisanforderungen sind belegt erfasst; als teurer Fallstrick festgehalten, dass
DIN 4102 und Ö-Norm 3800 nicht anerkannt werden. Zum revidierten Brandschutzplan gibt es
keine Anmerkungen mehr (byte-identisch zurückgesandt), die **Stellungnahme Brandschutz
(Gruner, Fassung 23.07.2026) ist dagegen kommentiert zurückgekommen** — 16 Annotationen,
fünf davon mit Text, der materielle Gehalt ausschliesslich in den PDF-Kommentaren. Der
Hub-Chef hat die drei Normfundstellen (Art. 10 lit. b, Art. 12, Art. 60 VKF-Brandschutznorm
1-15de) selbst gegengeprüft, die kommentierte Stellungnahme im Projektordner abgelegt und
das Briefing mit Fidelity 89 versendet. L. Merci hat die Sitzung von 11:00 abgesagt, der
Termin selbst stand unverändert.

Zwei Punkte wurden geschlossen: der Auftrag zur Fachplaner-Mail (von Raphael ad acta gelegt)
und die Bitte an Gruner um den UGZ-Kontakt (Raphael hat den Kontakt selbst hergestellt,
Koordinationssitzung UGZ am 03.08. 13:30).

**Offene Punkte und Folgeaktionen**

- Überarbeitung der Stellungnahme liegt bei Gruner, Koordination bei JANS.
- Eingabeweg offen: ob die überarbeitete Stellungnahme wieder über die Feuerpolizei oder
  direkt geht (Gantenbein hat WeTransfer statt eBaugesuch gerügt).

**Radar-relevant: ja** — bereits als Nachtrag im Register geführt (Hub-Chef 31.07. 08:39),
keine neue Zeile nötig.

---

## 3. Thalwil 2414, Bohlweg 3 — der Bauherr hat die überholte Fassung zur Freigabe

**Station/Zeit:** MacBook Pro 31.07. 07:11 (Logbuch-Radar, Befund am Beleg geprüft).

**Kern und Entscheide**

Raphael hat S. Tschopp am 30.07. um 16:35 die Fassung **260730** des Begleitbeschriebs zur
Freigabe gesandt; die Korrektursession lief erst danach (30.07. 23:49 bis 31.07. 02:19). Die
versandte Fassung zitiert die seit 01.06.2020 aufgehobene StrAV und trägt die falsche
Kopf-Adresse; die gültige Fassung **260731** stützt sich auf die Verkehrserschliessungs-
verordnung, rechnet die halbe Mehrhöhe nach § 178 EG ZGB und weist beide BZO-Fassungen aus.

**Offene Punkte und Folgeaktionen**

- Fassung 260731 nachreichen, solange Tschopp die 260730 nicht freigegeben hat. Danach ginge
  ein Begleitbeschrieb an die Gemeinde, der totes Recht zitiert.

**Radar-relevant: ja** — bereits als Radar-Nachtrag 31.07. im Register, keine Dublette.

---

## 4. Debitoren — vierter Verzugsfall, offener Verzugsbetrag CHF 45'400.00

**Station/Zeit:** MacBook Pro 31.07. 08:08 (mahnwesen) und 08:29 (zahlungsabgleich).

**Kern und Entscheide**

Neu im Verzug: **RE-00100, Swiss Central City Real Estate Fund, CHF 13'120.00**, fällig seit
30.07.2026, ein Tag überfällig, keine Mahnstufe gesetzt. Erster Verzugsfall ausserhalb des
KISPI seit Wochen; Empfehlung beider Läufe ist, den regulären Zahlungslauf des Fonds
abzuwarten und in rund einer Woche zu prüfen.

Verzugsstand, zusammen CHF 45'400.00:
RE-00087, KISPI, CHF 15'000.00, 106 Tage überfällig, Mahnung 2 mit abgelaufener Frist
RE-00098, KISPI, CHF 13'600.00, 11 Tage, Frist bis 03.08.2026
RE-00099, KISPI, CHF 3'680.00, 11 Tage, Frist bis 03.08.2026
RE-00100, Swiss Central City Real Estate Fund, CHF 13'120.00, 1 Tag, keine Stufe

Ebenfalls im Blick: RE-00101, Tschopp Gertrud und Stefan, CHF 6'000.00, am 31.07. fällig
geworden. Unverändert: 19 Phantom-Kandidaten (CHF 81'364.70) und 92 Duplikate aus dem
UBS-Doppelimport. Ein Widerspruch beim Fälligkeitsdatum RE-00087 aus dem Vorlauf wurde von
beiden Korrektur-Prüfern gefunden und korrigiert.

**Offene Punkte und Folgeaktionen**

- RE-00087: Mahnstufe 3 beziehungsweise Betreibung ist Raphaels Entscheid; empfohlen wird
  vorher die persönliche Kontaktnahme, da mit RE-00098/99 zwei weitere Rechnungen desselben
  Debitors offen sind.
- RE-00100 bleibt für Whitelist-Aktion A1 gesperrt, solange die Fälligkeit in bexio auf
  30.07. steht, obwohl die korrigierte Rechnung erst am 29.07. rausging.

**Radar-relevant: ja** — Beträge und Fristen stehen bereits als eigene Registerzeilen,
Ergänzung erfolgt über den täglichen Verzugslauf.

---

## 5. AG-Gründung Raphael Jans AG — Wartestand, Nachfass-Schwelle 05.08.

**Station/Zeit:** MacBook Pro 31.07. 07:53 (AG-Monitor).

**Kern und Entscheide**

Kein neuer Eingang. Vollsweep über alle Konten (Apple Mail mail@, rj@ Exchange,
outlook.com, iCloud) inklusive Entwürfe, Gelöscht und Junk auf UBS, Jeckelmann, Notariat,
REGIX, Beurkundung, Kapital und Handelsregister: keine IBAN, keine Kapitalbescheinigung,
kein Terminvorschlag. Jüngster UBS-Beleg bleibt Jeckelmann 29.07. 16:55. Das ist plangemäss
— gerechnet ab der Einreichung in der Geschäftsstelle Wiedikon (29.07.) war der 31.07. Tag 2
der drei Arbeitstage bis zur IBAN.

Ein Befund lag im eigenen Entwurfsordner und stand weder im Radar noch im Hub-Chef-Briefing:
Der Hub-Chef hat die Notariats-Mail in der Nacht neu geschrieben, den alten Entwurf aber
nicht ersetzt. In rj@/Entwürfe liegen dadurch **fünf Fassungen derselben Mail**.

**Offene Punkte und Folgeaktionen**

- Nachfass-Schwelle bleibt der 05.08.2026.
- Aufräumen der überzähligen Entwurfsfassungen ist Raphaels Sache; Löschen ist dem Hub
  verboten.

**Radar-relevant: ja** — als Registerpunkt bereits geführt (Nachfass Jeckelmann 05.08.).

---

## 6. Elektroanschluss Geschirrspüler — eigene Steckdose oder Gruppe mit dem Kühlschrank

**Station/Zeit:** MacBook Pro 31.07. 11:23 (**die einzige echte Benutzer-Eingabe im
Fenster**).

**Kern und Entscheide**

Raphaels Frage: Gibt es eine Bestimmung, dass ein Geschirrspüler an einer eigenständigen
Steckdose angeschlossen werden muss, oder darf er sich den Anschluss mit dem Kühlschrank
teilen? Antwort nach Prüfung gegen die Normen-KB: Eine ausdrückliche Bestimmung, die für den
Geschirrspüler zwingend eine eigene Steckdose verlangt, liess sich in den Schweizer Vorgaben
nicht finden. Die NIN (SN 411000) schreibt keine geräteweise Zuordnung vor; massgeblich ist
die Bemessung des Endstromkreises. Rechnerisch: Geschirrspüler rund 2.0 bis 2.3 kW (etwa
9 bis 10 A) plus Kühlschrank 1 bis 2 A, zusammen etwa 11 A und damit an einer 13-A-Gruppe
unkritisch, solange keine weiteren Verbraucher darauf liegen. Der eigentliche Hebel ist die
Montageanleitung des Herstellers.

**Offene Punkte und Folgeaktionen**

- Die exakte NIN-Ziffer konnte nicht belegt werden, weil die NIN nicht in der
  Normen-Bibliothek PL-02 liegt. Als offene Frage in der Normen-KB notiert (QUESTIONS,
  Endstromkreis Geschirrspüler) — sie ist im Nachtlauf ins Wiki eingeflossen.

**Radar-relevant: nein** — Fachauskunft ohne Frist und ohne Zusage.

---

## 7. Betrieb — der Verbrauchs-Messfehler der Nachbaraufsicht

**Station/Zeit:** MacBook Pro 31.07. 07:25 (Frühwarnung), bestätigt 08:58 und 12:58 (Radar).

**Kern und Entscheide**

Der Radar meldete um 04:57 für den MacBook Pro 57.92 Mio. teure Token am 30.07. und eine
«den vierten Tag in Folge steigende» Reihe. Der korrekte Wert ist **12.15 Mio.** Ursache:
Claude Code schreibt dieselbe API-Antwort je Content-Block mehrfach in die JSONL, alle Zeilen
mit identischer `usage`; ohne Deduplizierung über (message.id, requestId) zählt man dieselben
Tokens zwei- bis viermal. Am Sitzungsprotokoll nachgemessen (13 Antworten, 10 mit
Mehrfachzeilen). Deduplizierte Reihe: 29.07. MacBook 9.37 / Mini 2.05 · 30.07. 12.15 / 3.93 ·
31.07. bis 07:15 1.75 / 0.43 Mio. Kein Tag über 35 Mio., keine zwei Folgetage über je 18 —
kein Meldekriterium erfüllt, keine Mail versendet.

Die Messregel wurde in die Betriebs-Chronik geschrieben; das SKILL.md des Radars wurde
bewusst nicht angetastet, weil der Logeintrag der vorgesehene Kanal ist.

**Offene Punkte und Folgeaktionen**

- Der Radar hat weiterhin keine Dedup-Anweisung in seinem SKILL.md; die Korrektur wirkt
  bisher nur über die Chronik.

**Radar-relevant: nein** — Betriebsmesswert, keine Frist. Wirkt aber auf jede
Verbrauchsaussage im Hub.

---

## 8. Betrieb — Heartbeat und Stationslage

**Station/Zeit:** MacBook Pro 31.07. 11:20 (heartbeat), Radar-Läufe 04:57 / 08:58 / 12:58 /
16:58 / 20:58 / 01.08. 00:58.

**Kern und Entscheide**

Heartbeat mit Exit-Code 0, Gesamtstatus WARNUNGEN: NAS, Git, M365-Connector, Symlinks,
Dok-Pipeline und Schutzmechanik-Selbsttest grün; eine offene Sync-Task auf dem Mac Mini
(die zurückgehaltene Freigabe-Datei Cockpit-Server); Disk Space **77.4 GB frei von 920 GB**,
knapp, vom Script noch grün gemeldet.

Die sechs Radar-Läufe im 4-Stunden-Takt melden durchgehend Fensterzustand FREI, kein
5-Stunden- und kein Wochenlimit, keinen verpassten Lauf und keine Delta-Null-Serie.
`vollgas-supervisor` und `vollgas-monitor` bleiben auf beiden Stationen entladen und als
`*.disabled-260729` geparkt, Registry mit 31 Tasks ohne Doppelfeuer. Der 00:58-Lauf hat
zusätzlich festgestellt, dass am Monatsersten drei monatliche Tasks ins ohnehin volle
Nachtfenster fallen, und die zwei schärfsten Kollisionen korrigiert.

**Offene Punkte und Folgeaktionen**

- Freigabe-Task `20260731-014305_Cockpit-Server-interaktiv-installieren.md` wartet
  unverändert auf Raphaels Einzelfreigabe. Claude gibt nie selbst frei.
- Speicher MacBook Pro beobachten, bevor die Nacht-Loops darauf laufen.

**Radar-relevant: ja, für die Freigabe-Task** — bereits als Registerpunkt geführt
(Radar 31.07., Befund 5).

---

## 9. Betriebsfehler — der `email`-Agent legt Drafts ohne Text an

**Station/Zeit:** Mac Mini 01.08. 05:35 bis 05:42.

**Kern und Entscheide**

Beim KISPI-Nachfass (Block 1) hat der Agent `email` einen Apple-Mail-Draft mit korrekten
Empfängern, aber **leerem Body** erzeugt. Aufgefallen ist es erst, weil die Hauptsession den
Quelltext selbst gelesen hat; die beiden QS-Agenten des Korrektur-Harness haben keinen
Bash-/osascript-Zugriff und können einen Draft grundsätzlich nicht öffnen. Der Fehl-Draft
wurde gelöscht, der Body neu gesetzt und der Inhalt verifiziert.

**Offene Punkte und Folgeaktionen**

- Entweder erhalten `rechtschreibung` und `layout` für Mail-Drafts osascript-Zugriff, oder
  der aufrufende Skill muss den Body vor der QS als Klartext bereitstellen. Solange keins von
  beidem gilt, prüft bei jedem agentenerzeugten Draft niemand, ob überhaupt Text drinsteht.

**Radar-relevant: ja** — betrifft jeden künftigen Mail-Entwurf des Hub, neue Registerzeile
gesetzt.

---

## 10. Twin — Modalitätswechsel auf Eigendokumente, Fidelity 56

**Station/Zeit:** MacBook Pro 31.07. 05:56 (Fidelity 75) und 01.08. 05:58 (Fidelity 56).

**Kern und Entscheide**

Der Lauf vom 01.08. hat den seit drei Reports empfohlenen Modalitätswechsel vollzogen, weil
das Mail-Gold messbar erschöpft ist: Sent Items rj@ beginnen am 04.07.2025, älteres
Mail-Gold existiert nicht. Gold waren zwei Eigendokumente aus Projekt 2407 Regensdorf (2024,
Echo-Prüfung negativ): das Präsentationsskript «Strategische Machbarkeit» und der
Fragenkatalog «Entwerferische Fragestellungen». **Kernbefund: der Zwilling ist ein
Mail-Zwilling** — ohne Mail-Rahmen schreibt er weiter Mails, beide Blindfassungen trugen
Anrede, Gruss und «Besten Dank für …» in Dokumente ohne Empfänger. Der Wert 56 ist wegen des
Modalitätswechsels nicht mit den 75 vom 31.07. vergleichbar. Alle sechs Facetten wurden
geschärft, die DNA neu kompiliert; die Gattungsweiche Mail gegen Eigendokument steht jetzt
in der Rule `jans-dna`.

Der Lauf vom 31.07. hatte zuvor eine Abruf-Lücke mit mechanischem Grund aufgedeckt: das Wiki
führt Belegdaten gemischt (708 mal TT.MM.JJJJ, 529 mal ISO), ein Datums-Grep fand deshalb
null Treffer trotz vorhandener Marker. Behoben über eine Schreibregel plus Grep-Pflicht auf
beide Formate.

**Radar-relevant: nein** — Lern-Lauf ohne Frist, hier aufgeführt, weil er die DNA aller
künftigen Erzeugnisse ändert.

---

## Routine-Läufe (Summe)

**MacBook Pro:** 6 Logbuch-Radar-Läufe im 4-Stunden-Takt, 1 Vollgas-Frühwarnung, 1 heartbeat,
1 Konversations-Log, 6 Fensterproben («Antworte nur mit: OK»), dazu die Lern-Läufe
`normen-training-nacht` (Run 41, Lignatec zehnte Runde), `twin-mail-training` (Batch 84,
Lücken-Sweep 01.–14.02.2026), `koordination` (Run 22), `planungsgrundlagen-wartung` (Lauf 02,
monatlich am 1.) und `synergie-orchestrator` (Lauf 03, monatlich). Keine Besonderheiten
ausser den unten genannten.

**Mac Mini:** 4 Nachtschicht-Zyklen (KB `bauprodukte` ERCO-Ratgeber S. 20–40 fortgeschrieben,
KB `grobkosten` Lignum-Brandschutztabellen und Neuwert-Richtwerte Bauklassen I–VI,
KB `projekt-lessons` fünfter Lesson-Artikel zu RE-00087) und 1 Energie-Intensivlauf
(Run 120, sieben neue Destillate, Stand 196 Kernfragen / 212 Destillate / 30 Wiki-Artikel).
Alle innerhalb des 5-USD-Budgets, alle mit verifiziertem NAS-Commit.

**Besonderheiten aus den Routine-Läufen, die Bestand haben:**

- **Blocker, unverändert:** Die OneDrive-Zugriffsblockade auf `PL - 02_Recht_Norm`
  (`EDEADLK`) besteht seit Run 119 und wurde im Energie-Lauf vom 31.07. selbst nachgetestet
  und bestätigt. Ein Fallback über `brctl download` wurde geprüft und als untauglich
  verworfen (iCloud-spezifisch). Der Lauf bezeichnet das als höchstprioritären offenen Punkt.
  Neue Registerzeile gesetzt.
- **Sachkorrektur mit Aussenwirkung:** Der Koordinations-Lauf 22 hat in `wissen/energie` eine
  umgedrehte Schwyzer Konzessionsschwelle gefunden und korrigiert («< 4 Wohneinheiten» statt
  «mindestens vier», zusätzlich Erteilungsvoraussetzung als Pflichtauslöser gelesen). Ein
  Bauherr mit einem Einfamilienhaus am Zugersee hätte daraus «keine Konzession nötig»
  gelesen. 16 Befunde bestätigt, 9 widerlegt, Korrekturen in 15 Dateien in 7 KBs.
- **Normen Run 41:** Im Lignatec-Destillat fehlten beide Kumulationssätze (Ziff. 2.1 und
  2.2.2) — die Regel, dass ein tragendes und zugleich brandabschnittsbildendes Bauteil beide
  Anforderungssätze der Tabelle 3 kumulativ erfüllen muss. Ohne sie liest man die Tabelle als
  Alternative, was bei einer tragenden Wohnungstrennwand ein Bemessungsfehler ist. Zusätzlich
  korrigiert: die 12-WB/h-Schwelle im SWKI-Destillat war als zentraler Entscheidungsparameter
  zwischen natürlicher und mechanischer Lüftung geführt, sie bestimmt aber erst nach
  feststehendem Lüftungsprinzip die Ausrüstungskonfiguration.
- **Planungsgrundlagen-Wartung 02:** Die `www.`-Falle bei `zh.ch` geht in beide Richtungen
  (das Wildcard `*.zh.ch` deckt nur eine Label-Ebene), sechs Fundstellen waren dadurch nicht
  aufrufbar; 11 Adressen korrigiert und nachgemessen. K65 geschlossen. Nebenbefund mit
  Aussenwirkung: der im Skill `planungsgrundlagen` als Kopiervorlage genannte Connector-Pfad
  war falsch (`connectors/geo-zh.mjs` statt `skills/planungsgrundlagen/connectors/`) und
  wurde behoben.
- **Synergie-Lauf 03:** Neuer Befund SYN-16 — die KB `bauprodukte` hängt als Insel, acht
  Wiki-Artikel seit 28.07., aber null Verweise aus `skills/`, `agents/`, `rules/`,
  `services/`, obwohl sie ihren Konsumenten (Ausschreibung/LV) selbst benennt.
