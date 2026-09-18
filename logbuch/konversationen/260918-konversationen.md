# Konversations-Destillat 18.09.2026

MacBook Pro 21 Sessions · Mac Mini 17 Sessions · Cloud/Dispatch 5 — Fenster 26h
(17.09.2026 04:14 bis 18.09.2026 06:14 CEST)

Echte Gespräche: 5 Themen, alle am Vormittag des 17.09. (09:42 bis 12:17 CEST), vier davon
auf dem Mac Mini, eines auf dem MacBook Pro. Cloud/Dispatch: fünf Nachtschicht-Zyklen des
Mac Mini, keine Handy-Aufträge, keine neuen Remote-Task-Ergebnisse. `ssh mini` lief sauber.

Der Druckervorgang (Session c220e1cc, Rosetta 2 / Konica Minolta) zeigt zwar Aktivität am
17.09., hat aber keine neue Eingabe Raphaels; er steht vollständig im Destillat vom 17.09.

Big Points:
1. bexio läuft wieder, auf beiden Stationen, jetzt über OpenID Connect mit Selbsterneuerung.
2. Claude bucht Bankbewegungen ab jetzt selbständig (Rule 260702 neu gefasst); Erstlauf 88 von 118.
3. Tailscale-Wächter auf beiden Stationen scharf; Ursache der «Mini-Sperre» war ein eigener Befehl.
4. RE-00087: Ball liegt seit 03.08. bei C. Schäfer, keine Antwort.
5. Neuer Sicherheitsbefund: NAS-Passwort im Klartext in `settings.local.json` des Mac Mini.

## 01 bexio: Zugang neu eingerichtet, OIDC-Dauerzugang, selbständiges Buchen (Mac Mini, Session 9c502770, 17.09. ca. 09:50 bis 12:17)

**Kern und Entscheide.**
Einstieg Raphael: «kannst du mit mir die verbindung zu bexio neu einrichten?»

1. **Ursache der 40 Tage 401 berichtigt:** der Token vom 13.06.2026 war nicht widerrufen,
   sondern **abgelaufen am 12.08.2026 11:04**. bexio begrenzt Personal Access Tokens
   serverseitig auf 60 Tage; das JWT-Feld (13.12.2026) war der falsche Zeiger.
   `bexio.mjs --test` zeigt jetzt die Restlaufzeit und warnt ab 14 Tagen.
2. **Neuer PAT** von Raphael erzeugt, gespiegelt aufs MacBook Pro (alte Datei dort als
   `~/.bexio.env.alt-260613`), Ablauf 16.11.2026. Der Token stand zweimal im Klartext im
   Chat-Verlauf (einmal eingefügt, einmal durch Claudes Auslesen der Portal-Detailseite);
   Raphael hat ihn darauf nochmals ersetzt. Lehre: Portal-Seiten mit Geheimnissen nie per
   Seitentext auslesen. Ob die Alt-Tokens im Portal gelöscht sind, hat Claude bewusst nicht
   gegengelesen.
3. **Dauerlösung als Spec gebaut** (auf Raphaels «ja gerne»):
   `connectors/bexio-auth.mjs`, Geheimnisse nur im Schlüsselbund `jans-bexio-oidc`, eine App
   für beide Stationen. Wechseltest in beiden Richtungen bestanden (11:56/11:57). Enge Rechte:
   Bankzahlungen und Offerten 403, Lohn 401. Spec:
   `wissen/spec/outputs/2026-09-17_bexio-oidc-dauerzugang_spec.md`.
4. **`--kontieren` bleibt am PAT:** `/3.0/banking/transactions` antwortet über OIDC 403, der
   nötige Scope ist nicht dokumentiert. Frist 02.11.2026 (PAT erneuern) gilt nur noch dafür.
5. **Entscheid Raphael 12:04:** «ich wäre Dir dankbar wenn du alles selbständig machen würdest
   für mich kontieren und buchen». Rule 260702 neu gefasst: Claude kontiert und bucht
   Bankbewegungen selbständig, ohne Betragsgrenze, monatlich mit Bericht; weiterhin nie
   Zahlungen auslösen, als bezahlt markieren, löschen, stornieren.
   Erstlauf: **88 von 118** Banktransaktionen 2026 gebucht (74 Regel-Treffer, 14 über acht neue
   Analogieregeln), laut Bericht «über CHF 1'637.91», 0 Fehler, Trockenlauf vorab. Protokolle:
   `logbuch/bexio-buchungen/260917-Erstlauf-2026/`. Scheduled Task `bexio-buchen-monatlich`
   (Mac Mini, 2. des Monats 06:20, erstmals 02.10.2026).
6. **Debitorenstand aus dem Gespräch:** RE-00100 (Swiss Central City Real Estate Fund,
   CHF 13'120.00) bezahlt. Offen vier KISPI-Rechnungen über CHF 47'160.00: RE-00087
   CHF 15'000.00, RE-00098 CHF 13'600.00, RE-00099 CHF 3'680.00 (alle Mahnung 2), RE-00102
   CHF 14'880.00 (Mahnung 2, Frist 23.09.2026). Mahnvorschläge mit dem Zahlungstermin
   25.09.2026 aus der Sitzung vom 14.09. abstimmen.

**Offene Punkte (Aktion Raphael).**
1. 30 Banktransaktionen über rund CHF 12'400 ohne Beleg zuordnen (u.a. E-Banking-Aufträge
   CHF 3'968.07 vom 22.06. und CHF 1'939.45 vom 13.08., Instant Payment CHF 2'000.00 vom
   31.08., Dauerauftrag CHF 500.00 monatlich seit 30.06., E-Bill CHF 295.10 monatlich seit
   30.06., Kartenzahlungen privat oder Büro). Hinweis: die am selben Tag neu gefasste Rule sieht
   für Unbelegbares das Konto 1090 mit Präfix «ABKLAERUNG:» vor; der Erstlauf hat die 30 statt
   dessen ungebucht offen gelassen.
2. Task `bexio-buchen-monatlich` einmal per «Run now» freigeben, sonst hängt der Lauf am 02.10.
   an einer Berechtigungsabfrage.
3. Vorgeschlagener Scope-Test `--einrichten --zusatz "bank_payment_edit"`: **vor dem Ausführen
   prüfen.** `bank_payment_edit` ist ein Schreibrecht auf Bankzahlungen; der Nachtrag von 12:0x
   hielt fest, der Dauerzugang erhalte ein solches gerade nicht. Siehe Registernachtrag heute.
4. Abo-Entscheid Starter/Advanced per 08.10.2026 (unverändert).

**Radar-relevant: ja** (Frist 02.10. Task, 02.11. PAT, 08.10. Abo, 23.09. RE-00102, 25.09.
Zahlungstermin KISPI). Betrifft Registerzeilen «ERLEDIGT 17.09.2026, 10:1x» bis «NEU 17.09.2026,
12:4x» (alle bereits in der Session geschrieben); neu von hier nur der Nachtrag zum Schreib-Scope.
Synergie-Lauf 38 hat dazu SYN-90/SYN-91 (Widerspruch Rule 260702 zu A9 der Whitelist) erhoben.

## 02 Tailscale-Wächter und die vermeintliche Mac-Mini-Sperre (MacBook Pro Session 1de07953, 09:42 bis 09:52; Mac Mini Session 9e956bc5, 09:47)

**Kern und Entscheide.**
Raphael nach dem Heartbeat: «Wächter jetzt installieren», dann «wieso ist der mac mini
gesperrt? Können wir das für immer beheben?»
1. `ch.jans.tailscale-waechter` ist auf **beiden Stationen installiert** und gemessen
   (last exit 0, Intervall 300 s). Der Mini meldet zusätzlich «Subnet-Route 192.168.1.0/24
   angekündigt und freigegeben». Die Mini-Installation lief lokal über Raphaels eingefügten
   Befehl in Session 9e956bc5; der zeitgleiche ssh-Versuch vom MacBook meldete rc=5.
2. **Der Mini war nie gesperrt:** der Aufruf `ssh -o ConnectTimeout=15 mini '...'` beginnt nicht
   mit `ssh mini` und fiel so aus der Präfix-Regel `Bash(ssh mini *)` heraus, direkt zum
   Klassifikator, der schreibende Fernbefehle verweigert. Festgeschrieben als **Rule 260917b**
   (kanonische Form `ssh mini '<befehl>'`, `launchctl bootstrap` über ssh meldet rc=5 trotz
   geladenem Job).
3. Vollmacht bewusst nicht verbreitert. Vier wirkungslose Altlast-Allow-Einträge in
   `settings.local.json` (MacBook Pro) bleiben stehen, bis Raphael das Wegräumen wünscht.

**Offene Punkte.** Aufräumen der vier Altlast-Einträge nur auf Zuruf. Der heartbeat-Check
«Erreichbarkeit» prüft weiterhin nur die eigene Station.

**Radar-relevant: nein** (P1-Zeile Tailscale im Register bereits am 17.09. auf erledigt gesetzt).

## 03 Zugangsdateien zwischen den Stationen kopieren (Mac Mini, Session 6dc8b463, 10:09 bis 10:11)

**Kern und Entscheide.**
Raphael: «Der Klassifikator sperrt mir das Kopieren der Zugangsdatei zwischen den Stationen.
Kannst du das bitte so einrichten dass dies in zukunft geht?»
1. Sperre bewusst **nicht** aufgehoben (Rule `wege-und-vollmachten`). Stattdessen neues Script
   `/Volumes/daten/jans-ai-hub/scripts/zugangsdatei-sync.sh`, das Raphael selbst startet:
   nur fünf feste Dateien (M365-Zertifikat, Hub-`.env`, `.zefix.env`, `.versand.env`,
   `.jans-dispatch.env`), Ziel vorher als `.bak-JJMMTT` gesichert, Rechte 600, sha256-Abgleich.
   Syntax und Ablehnung unbekannter Namen getestet, kein echter Transfer. In `WEGE.md` eingetragen.
2. Auf dem Mac Mini fehlen `.zefix.env` und `.versand.env`; Befehl dafür:
   `bash /Volumes/daten/jans-ai-hub/scripts/zugangsdatei-sync.sh holen macbook zefix-env versand-env`
3. **Sicherheitsbefund:** in `.claude/settings.local.json` des Mac Mini steht das NAS-Passwort
   im Klartext, in zwei toten `sshpass`-Allow-Regeln aus der Ersteinrichtung (git-ignoriert,
   nicht auf GitHub). Empfehlung: Zeilen löschen, NAS-Passwort wechseln. Nicht angefasst.

**Radar-relevant: ja** (Sicherheitspendenz ohne Frist, Aktion Raphael; neu ins Register).

## 04 RE-00087 KISPI: die Duplikats-Beanstandung wiedergefunden (Mac Mini, Session f67dad2d, 11:33 bis 11:40)

**Kern.**
Raphael suchte die Mail, in der RE-00087 als Doppelzahlung beanstandet wurde. Gefunden:
rj@ an M. Spörri, 03.08.2026 12:25, «Rechnung RE-00087, Zahlungsnachforschung», mit
re-00087.pdf und Mahnung 1 bis 3. Auslöser: M. Spörri 03.08. 12:07, er habe RE-00087 an
C. Schäfer weitergeleitet, die im Buchhaltungsprogramm ein Duplikat notiert hat
(Duplikats-Rechnung BC304304495). Vorgehen mit der UBS abgeklärt: mit Zahlungsnachweis zur
Referenz RF38 0000 0000 0000 0000 0006 7 Nachforschung, ohne Nachweis gilt RE-00087 als
unbezahlt.

**Stand 17.09.:** keine Antwort von C. Schäfer zu RE-00087, kein Zahlungsnachweis (ihre einzige
Mail seither, 11.08., betrifft das Betriebskonzept Therapieküche). RE-00087 lag am 17.09. 11:21
wieder bei in der Mail an Albin, «KISPI: Rechnungsmanagement PPTS / RAUMSYSTEMATIK».
Unstimmigkeit bleibt: versandt wurde Mahnung 3, bexio führt die Stufe 2.

**Radar-relevant: ja.** Betrifft Registerzeile «offen | RE-00087 (KISPI, CHF 15'000, 109 Tage)»;
Nachtrag heute. Da bexio seit 17.09. wieder liefert, sind die Vorbehalts-Transaktionen 3470 und
3445 jetzt prüfbar (in den Erstlauf-Protokollen vom 17.09. nicht enthalten).

## Routine (nicht als Gespräch gezählt)

Rund 30 Routine-Läufe ohne Blocker: Hub-Chef und Logbuch-Radar 17.09. (Radar mailte selbst um
09:29, weil der Hub-Chef um 08:39 ausgefallen war; Zargenfrist RWD Schlatter 18.09. im Register),
Vollgas-Frühwarnung, Vollgas-Radar (drei Läufe, Ampel FREI), Heartbeat, AG-Gründungs-Monitor
(unverändert P1, keine neuen Mails seit 31.08.), mahnwesen-verzugscheck und bexio-Hygiene
(beide 09:1x noch 401, vor der Neueinrichtung), Twin-Training Batch 122 und 123, Fidelity-Review
17.09. (52, Compiler-Fehler in `build_dna.py` behoben) und 18.09. (56), Normen Run 87,
Synergie-Lauf 38 (SYN-90/91), Wissens-Chef Lauf 61, tenant-hygiene (826.72 GB, 79.19 %,
Versions-Frage app-only geschlossen), fünf Nachtschicht-Zyklen Mac Mini.
