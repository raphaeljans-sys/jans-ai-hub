# Konversations-Destillat 07.09.2026

**Abdeckung:** MacBook Pro 14 Sessions · Mac Mini 6 Sessions · Cloud/Dispatch 4 (alle vier
Dispatch-Protokolle sind die Mac-Mini-Nachtschicht, inhaltsgleich mit den Mini-Sessions;
`remote-tasks/results/` im Fenster leer) — Fenster 26 h, Stand 07.09.2026 08:23 CEST.

**Vorbemerkung, die den ganzen Tag prägt:** Im Fenster steht **eine einzige echte Eingabe von
Raphael** — «Antworte nur mit: OK» (MacBook Pro, 08:22, Verbindungstest). Alles andere sind
Scheduled Tasks und Nachtschicht-Läufe. Der 05. und der 06.09. haben auf dem MacBook Pro
**gar nicht stattgefunden**: kein Radar, kein Hub-Chef, kein Konversations-Destillat. Das letzte
Destillat vor diesem ist `260904-konversationen.md`. Die drei Tage Lücke sind kein
Berichtsproblem, sondern der Grund, warum die schwerste Frist des Tages erst heute Morgen um
07:45 gefunden wurde.

---

## 01 Die Aufsicht ist über das Wochenende ausgefallen — Ursache gefunden, Rest offen

**Station und Zeit:** MacBook Pro, 07:45 bis 08:15 (Logbuch-Radar, Hub-Chef, vollgas-Radar).

**Kern und Entscheide.** Gemessen, nicht fortgeschrieben: der letzte Radar-Abschnitt im
LOGBUCH.md datiert vom 04.09., der letzte Hub-Chef-Lauf ebenfalls. Für den 05. und 06.09.
existiert von Radar, Hub-Chef und Konversations-Log nichts; die Lauf-Journale zeigen an beiden
Tagen nur die vier Nachtschicht-Läufe des Mac Mini (02:xx, 05:xx, 13:xx, 23:xx). **Ursache
mechanisch belegt:** das MacBook Pro war vom Abend des 04.09. bis heute etwa 07:35 aus oder im
Tiefschlaf (Boot heute 07:53, Uptime 29 Minuten beim Messen; `pmset -g log` reicht nur rund
20 Minuten zurück). Nach dem Hochfahren feuerten die Tasks in einem **Nachhol-Sturm** zwischen
07:42 und 08:21, und der `synctask-runner` feuerte vor dem NAS-Mount und konnte nicht stempeln —
Herzschlag 2 Tage 11 h alt bei 3 h Schwelle, `stationen-watchdog.sh --briefing` Exit 1.

**Behoben im selben Lauf (A6):** `launchctl kickstart -k gui/501/ch.jans.synctask-runner`
(rc 0), Stempel neu 07.09.2026 08:14, Watchdog jetzt Exit 0.

**Zweiter, durchgehender Befund quer über acht Sessions:** Das NAS war bei **jedem einzelnen**
Session-Start heute Morgen nicht gemountet. Sieben Läufe melden das ausdrücklich (Zahlungsabgleich,
Hub-Chef, twin-Fidelity, twin-Training, normen Run 80, mahnwesen-Hygiene, Behörden-Sync); alle
sieben heilten es über `scripts/ensure-nas-mounted.sh` via Tailscale (rc 0). Der Guard hält —
aber ohne ihn wäre jeder dieser Läufe abgebrochen, bevor er einen Bericht hätte schreiben können.
Der Hygiene-Lauf benennt genau das als Ursache seines eigenen stummen Ausfalls am 05./06.09.

**Offene Punkte und Folgeaktionen.**
- Warum die als Always-On geführte Station über das Wochenende aus war, ist **nicht** geklärt
  (Register-Punkt vom 07.09. 08:0x, Status «teilweise erledigt»). Entscheid Raphael.
- Der Auto-Mount-Job ist zu prüfen: fällt der Mount, fällt mit ihm die Überwachung, und das
  still.

**Radar-relevant:** ja — bereits als eigene Registerzeilen vom 07.09. 07:4x und 08:0x erfasst
(Hub-Infrastruktur / Aufsichts-Loops und / Meldekanal). Keine Dublette nötig.

---

## 02 Der Meldekanal hat heute früh zweimal versagt — nur der Hub-Chef kam durch

**Station und Zeit:** MacBook Pro, 07:45 bis 08:10.

**Kern und Entscheide.** Der Radar-Abschnitt von 07:45 kündigt im LOGBUCH.md ausdrücklich an, er
melde ausnahmsweise selbst per Mail an rj@, weil der Hub-Chef zwei Tage ausgefallen war und der
schwerste Punkt eine Frist um 12:00 trägt. **Diese Mail existiert nicht** — weder in «Gesendete
Elemente» noch in «Entwürfe» des Kontos Exchange. Die Mail des `ag-gruendung-monitor` («AG JANS:
CHF 50'000 Kapitaleinzahlung KRITISCH überfällig») liegt als **Entwurf 07.09.2026 07:51:49**,
unversendet. Derselbe Fehlermodus wie beim Abo-Check am 06.09.

**Der Hub-Chef hat gesendet und gegengeprüft:** Briefing über Apple Mail 08:09:54, Body
6'365 Zeichen, Zustellung im Posteingang 08:10:30 verifiziert, kein Ausweichen auf Graph nötig.
**Ohne diesen Lauf hätte Raphael die 12:00-Frist Thalwil heute nicht erfahren.** Der Chef war
damit nicht nur nominell, sondern faktisch der einzige Kanal.

**Gegenläufiger Befund derselben Nacht, sauber korrigiert:** Der Abo-Check auf dem Mac Mini hatte
am 06.09. 18:1x protokolliert, seine Eskalationsmail sei im Entwurf hängen geblieben. Die
Gegenmessung heute früh widerlegt das: die Mail liegt in **Gesendete Elemente 06.09. 18:09:19**
und im **Posteingang 18:09:21**. Die Entwurfszählung als Wächter bleibt richtig — falsch war
allein der daraus gezogene Schluss.

**Offene Punkte und Folgeaktionen.** Warum Radar und AG-Monitor schreiben statt senden, ist
ungeklärt und steht als offener Rest der Registerzeile 08:0x.

**Radar-relevant:** ja — bereits als Registerzeile vom 07.09. 08:0x und als Korrektur-Zeile
07:5x erfasst.

---

## 03 2414 Thalwil — Frist heute 12:00, Eskalation der Bauherrschaft, Entwurf liegt bereit

**Station und Zeit:** MacBook Pro, 07:5x (Radar) und 08:06 (Hub-Chef, Whitelist A5).

**Kern und Entscheide.** S. Tschopp schreibt am **05.09.2026 15:56** und nochmals am
**06.09.2026 06:42** (`stefan.tschopp@gmx.net`), beide Mails lagen drei Tage unbemerkt im
Postfach. Vier Sachverhalte: (1) **PDF und DXF bis heute 12:00** — geliefert wurden am 04.09.
20:41 vier PDF, **die DXF fehlt**; die frühere Frist «08.09. 10:00» hat die Gegenpartei auf heute
vorgezogen. (2) Zwei beanstandete Planfehler: die Aprilände­rung Waschküche 1. OG / Zimmer 8 und 5
ist nicht umgesetzt, die Zimmertüren im Bestand sind nicht korrekt eingezeichnet. (3) Zwei
Formfehler der eigenen Sendung vom 04.09.: sie ging an `fam_tschopp@greenmail.ch` und begann mit
«Geschätzter Christoph» — der Empfänger heisst Stefan Tschopp. **Die Adresse
`fam_tschopp@green.ch` ist ab sofort tot**, künftig `stefan.tschopp@gmx.net`. (4) Eine
Leistungsrüge, wörtlich «seit Ostern ist der Wurm drin … Du bist bei weitem der teuerste Posten».
(5) Der Teams-Termin heute 10:00 ist von der Gegenseite abgesagt, Vorschlag Donnerstag 10.09.
oder Freitag 11.09.

**Der Hub-Chef hat unter A5 einen Entwurf angelegt** (08:06, 1'678 Zeichen, an
`stefan.tschopp@gmx.net`): räumt Adress- und Anredefehler ein, nimmt beide Planfehler namentlich
auf, sagt Pläne und DXF bis 12:00 zu, sagt den 10:00-Termin ab, quittiert die Leistungsrüge.

**Offene Punkte und Folgeaktionen.** Aktion Raphael: DXF und bereinigte Pläne bis 12:00
liefern. **Hält 12:00 nicht, ist die Zusagezeile im Entwurf vor dem Senden zu ändern.** Die
Leistungsrüge steht neben der offenen Honorarrechnung RE-00101 (CHF 6'000.00, Mahnfrist 16.08.
verstrichen) — eine Mahnung in dieser Woche wäre der falsche Zug.

**Radar-relevant:** ja, P1 — bereits als Registerzeile vom 07.09. 07:5x erfasst.

---

## 04 bexio — dreissigster Tag ohne Zugang, heute dreifach unabhängig gemessen

**Station und Zeit:** MacBook Pro, 07:44 (Hygiene), 08:20 (Zahlungsabgleich), 08:22 (Verzugscheck).

**Kern und Entscheide.** Drei Läufe haben den Ausfall heute **unabhängig voneinander neu
erhoben**, keiner hat aus dem Vorbericht fortgeschrieben. Zusammen zehn Proben, alle **HTTP 401**:
Vorfilter `--abgleich` und `--voll` (Exit 2), Aussteller-Gegenprobe
`auth.bexio.com/.../userinfo`, `api.bexio.com/2.0/company_profile`, `.../kb_invoice` und
`--verzug --json`. **Der Token ist nicht abgelaufen** (Ablauf 13.12.2026, 97 Tage) — die Session
dahinter wurde serverseitig beendet. Warten hilft nicht. `~/.bexio.env` trägt unverändert den
Zeitstempel 13.06.2026 11:05; auf dem Mac Mini ist die Datei nativ per ssh geprüft weiterhin
nicht vorhanden, ein Ausweichlauf dort bleibt ausgeschlossen. Letzter verifizierter Zahlstatus:
**08.08.2026 08:36**.

**Blockierte Positionen (Stand 08.08., seither unverifiziert):**
RE-00098 und RE-00099, Universitäts-Kinderspital Zürich, zusammen **CHF 17'280.00**, Mahnfrist
12.08. abgelaufen, sechsundzwanzig Tage überfällig. RE-00100, Nova Property Fund Management AG,
**CHF 13'120.00**, achtzehn Tage über der Erinnerungsfrist. Dazu RE-00101, S. Tschopp,
**CHF 6'000.00**, Mahnfrist 16.08. verstrichen.

Nichts gebucht, nichts abgeglichen, nichts auf ignoriert gesetzt, Zustands-Snapshot nicht
fortgeschrieben. Bericht als Nachtrag ergänzt in
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/zahlungsabgleich/2026/260907_bexio-Hygiene.md`.

**Offene Punkte und Folgeaktionen.** Seit dem 13.08.2026 unverändert: **neuen Personal Access
Token in bexio ausstellen und in `~/.bexio.env` eintragen.** Bis dahin bleibt jede Mahnstufe
gesperrt — der A1-Guard verhindert bewusst eine Erinnerung an einen möglicherweise zahlenden
Kunden.

**Radar-relevant:** ja — Geldbeträge, abgelaufene Mahnfristen, dreissig Tage ohne Datengrundlage.
Der Strang ist im Register mehrfach als Nachtrag geführt (zuletzt 30.08., dreiundzwanzigster
Tag); der heutige Stand wird als konsolidierte Zeile ergänzt.

---

## 05 AG-Gründung JANS — Kapitaleinzahlung P1, siebzehn Tage überfällig

**Station und Zeit:** MacBook Pro, 07:45 bis 07:51 (ag-gruendung-monitor).

**Kern und Entscheide.** Monitor-Scan ohne neue Mails **seit 31.08.2026**. Notariat Mathies seit
**13.08.** ohne Antwort, also fünfundzwanzig Tage. Die Kapitaleinzahlung ist **17+ Tage
überfällig** (Soll Mitte August) und blockiert die gesamte Gründungskette. Der Lauf hat
LOGBUCH.md, Spec-CHANGELOG und `fristen.md` nachgeführt und nativ committet
(`baa3796bb`). Osascript-Zugriff auf Mail war zeitweise instabil, der Lauf wich auf die
Kontroll-Dateien aus.

**Offene Punkte und Folgeaktionen — Aktion Raphael, dringend heute:**
CHF 50'000.00 auf das UBS-Sperrkonto **IBAN CH46 0027 6276 1238 74D7 N** einzahlen. Nach der
UBS-Bestätigung (Kapitalbescheinigung per Einschreiben, rund 2 Arbeitstage) das Notariat für den
Beurkundungstermin kontaktieren. Nächster Monitor-Scan 09.09.2026 07:45.

**Radar-relevant:** ja, KRITISCH P1 — bereits als Registerzeile vom 07.09. 07:50 erfasst; die
zugehörige Mail liegt unversendet im Entwurf (siehe Block 02).

---

## 06 2619 KISPI — drei neue Punkte aus dem Postfach von heute früh

**Station und Zeit:** MacBook Pro, 07:5x (Logbuch-Radar).

**Kern und Entscheide.**
**06.1 Estermann setzt einen Samstagstermin.** O. Stadelmann (Gipserarbeiten Los 271.10) am
07.09. 07:45 an rj@, A. Spahic, M. Spörri, F. Würsch, T. Tus: Schiebetüre UM und Einbau RHS am
**Samstag 19.09.2026 ab 06:30**, ausdrücklich abhängig davon, dass alle Vorleistungen (Mobiliar
entfernt, Boden mit Hart-Pavatex) erfolgt sind. Vier Anhänge, darunter «Entscheid Unterzüge
Speiseraum/2.001». Zwei Handgriffe: Termin bestätigen oder absagen, und die Vorleistungskette
beim KISPI verbindlich terminieren — sie liegt nicht bei JANS, muss aber von JANS angestossen
werden.

**06.2 UGZ-Abnahme hat einen neuen Ansprechpartner.** R. Zürcher (Stadt Zürich, Umwelt- und
Gesundheitsschutz) am 07.09. 07:48: «Ich bin nicht zuständig für das Projekt. Ich leite Sie an
Franziska von Holzen weiter.» Die im Chef-Briefing vom 04.09. geführte Erwartung einer Zusage von
Lars Hansen ist damit überholt oder um einen zweiten Weg ergänzt. **F. von Holzen hat kein
belegtes Register — Sie, nicht raten.**

**06.3 TeKoSi wartet auf einen Ablage-Link.** L. Hiltmann am 07.09. 07:02: «Kannst du mir bitte
den Link mit der Ablage der Jegen Korrex zusenden.» Eine Minute Arbeit, hängt aber an der
Korrekturschlaufe der inneren Verglasungen. **Der Gastzugriff Hiltmann läuft am 22.09.2026 ab** —
beim Setzen des Links gleich mitprüfen.

**Offene Punkte und Folgeaktionen.** Alle drei offen. Zusätzlich läuft der Gastzugriff von
L. Bajrami **heute, 07.09.2026** ab, und der Teams-Termin «Abgleich Umbau PPTS» steht heute
09:15 bis 09:45.

**Radar-relevant:** ja — alle drei bereits als Registerzeilen vom 07.09. 07:5x erfasst.

---

## 07 Steinbrüchelstrasse 26/28, Witikon — Abgabe übermorgen, Bopp schweigt seit drei Tagen

**Station und Zeit:** MacBook Pro, 08:0x (Hub-Chef).

**Kern und Entscheide.** Am Original gemessen: die Mail an C. Bopp vom **04.09.2026 09:45:41**
ging **mit null Anhängen** hinaus. Sie enthält die Offerte «Zweitgutachten Baurecht» über
**CHF 1'800.00 exkl. MwSt pauschal** und drei Bring-Schulden an Bopp (Besitzbestätigung
Kat.-Nr. WI3365, Grundbuchauszüge WI1585/WI3365/WI3366/WI1738 samt Dienstbarkeitsverträgen,
Eigentümer der Wegparzelle WI3366). **Gegenprobe über fünf Tage: seit dem 04.09. ist von
`novaproperty.ch` nichts eingegangen** — weder die Annahme der Offerte noch eine der drei
Grundlagen. Der fertige neunseitige Bericht liegt derweil unversendet im Entwurf vom
04.09.2026 08:53:41.

**Offene Punkte und Folgeaktionen.** **Entscheid Raphael:** den Bericht heute liefern und die
Grundlagen als Vorbehalt führen, oder auf Bopps Antwort warten und damit die Abgabe riskieren.
Abgabetermin **Mittwoch, 09.09.2026**.

**Radar-relevant:** ja — bereits als Registerzeile vom 07.09. 08:0x erfasst.

---

## 08 Fachliche Läufe mit substanziellem Ergebnis

**08.1 KB `energie`, Runs 182 bis 184 (Mac Mini, 06.09. 13:30 / 23:11, 07.09. 02:30 und 05:41).**
Der eingeplante Nebenpunkt wurde zum Hauptergebnis: die Gegenprobe auf die geltende Ausgabe zeigte,
dass die Läufe 180 und 181 **nicht die aktuell verlinkte Fassung** des Minergie-Vorgabenkatalogs
Zusatz ECO destilliert hatten — gelesen 102 Seiten, Dokumentstand 23.01.2025, verlinkt sind
**109 Seiten mit 59 Vorgaben, Dokumentstand 01.07.2026**, bei unveränderter Nachweisversion 2023.1.
**Minergie und ecobau führen den Dokumentstand nach, ohne die Version neu zu nummerieren, und
tauschen die verlinkte Datei aus, während die alte Adresse weiter HTTP 200 liefert.** Dasselbe
Muster ist beim Produktreglement belegt; **Prüfmerkmal sind Seitenzahl und Änderungsanhang, nicht
die Versionsnummer.** Fachlicher Kernbefund: das **Bauschaum-Verbot (Vorgabe 220.05)** ist seit
19.01.2026 zweifach verschärft und umfasst neu ausdrücklich alle Ortschäume inklusive Dämm- und
Isolierschaum. Weiter destilliert: die 110er-Reihe (RLT, Radon-Grenzwerte, NIS-Zonenplan, neuer
Wiki-Artikel `radon-schutzmassnahmen.md`), die 210er (Graue Energie/THGE, neue FAQ F278 mit zwölf
Abgrenzungen), die 220er und die 230er-Reihe samt Klimaresilienz. Eine Cross-KB-Bringschuld an
`normen` (offener Punkt E-123-3 zu SIA 162/4) wurde im selben Lauf drüben nachgetragen. Commits
`f64b1d960`, `9140f4b71`, `d7aa64cea`.

**08.2 KB `normen`, Run 80 (MacBook Pro, 08:22).** Die Ersatzmassnahmen-Matrix aus VKF BRL 15-15
Anhang S. 23 ist aufgenommen — die Seite trägt ausser Kopf- und Fusszeile **keinen Textlayer**,
alle 18 Zellen sind rechnerisch über Farb-Blobs gemessen und von einem unabhängigen Refuter mit
eigenem Rendering und anderem Weg zum Zellraster in allen 18 Zellen repliziert. Planungsrelevante
Kernaussage: **unter 2 m Gebäudeabstand tragen von sechs Varianten nur noch zwei.** Quelle
verifiziert (MD5 `6dcc54f34a2d…`, Fassung 01.01.2017, 35 Seiten, Seitenversatz null).
Commit `46a2f6f13`.

**Radar-relevant:** nein für beide — Fachwissen ohne Frist- oder Zusagecharakter. Der
Fassungsbefund unter 08.1 ist allerdings für jeden künftigen Energienachweis wesentlich und steht
belegt in der KB.

---

## 09 Routine ohne Besonderheiten

Behörden-Dokumente ZH: 33 von 33 Einträgen aktuell, 0 geändert, 0 neu, 0 tote Links, kein Sync
nötig. M365-Speicher: 927'586 MB, nur +331 MB gegenüber dem Freitagsstand (Delta über drei Tage,
weil die Läufe vom 05./06.09. ausfielen). twin-Fidelity-Review: Fenster 02.02.–08.02.2026, ein
methodischer Zwischenbefund — `summary: null` heisst **nicht** «Vorschau unterdrückt», sondern
«kein Rumpf» (alle vier Kandidaten waren Termineinladungen ohne Text), die leckfreie Blindprobe
ist damit strukturell unmöglich, der Lauf kehrte zum belegten Verfahren mit dokumentiertem Leck
zurück. twin-Mailtraining: 16 Treffer im Fenster ab 03.09. 15:32, alle sechs Facetten gewachsen.
Synergie-Orchestrator Lauf 53: sechs Melder, 20 Kandidatenbefunde, davon drei widerlegt und elf
bestätigt. wettbewerbs-dna: Etappe 4 abgeschlossen, kein neues Quellmaterial. Synobsis Stufe 2
weiterhin gesättigt (853/853).

**Ein Blocker aus der Routine, der bleibt:** Die Abo-Auslastung ist **seit dem 23.08.2026 blind**
(letzte belastbare Messung 42 %, Tempo 0.47, GRÜN). `connectors/claude-usage.mjs` scheitert
unverändert am Token-Refresh (HTTP 400, `invalid_grant`, «Refresh token expired»), der Keychain-
Stempel steht unverändert auf 24.08.2026 15:48 UTC — **der am 30.08. empfohlene `/login` auf dem
Mac Mini ist nicht erfolgt.** Der Zugang selbst lebt (elf laufende `claude`-Prozesse im selben
Lauf gemessen); blind ist allein die überholte Refresh-Token-Kopie des Connectors. Bereits als
offener Rest der Korrektur-Registerzeile vom 07.09. 07:5x geführt.
