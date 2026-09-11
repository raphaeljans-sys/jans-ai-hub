# Vertiefung zur Systemanalyse: Ist der Umbau auf Git wirklich die beste Lösung, und laufen danach alle Routinen?

Stand 11.09.2026, 14:45 · Auftrag Raphael Jans, 11.09.2026 · Vertiefung zu `docs/konzepte/260911-Systemanalyse-Hub-Architektur-NAS-Git/` · Verfasst auf dem Mac Mini

## 00 Korrektur 11.09.2026, 15:0x (Rückmeldung Raphael, vor den Big Points zu lesen)

**00.0.1 Die Annahme «das MacBook Pro ist Raphaels Hauptarbeitsgerät» war falsch.** Sie stand in Position 01.4 und in der Chat-Zusammenfassung, ohne Messung. Nachgemessen an den Transkripten beider Stationen (letzte 30 Tage): auf dem Mac Mini liegen 494 interaktive Sessions mit 506 MB Volumen, auf dem MacBook Pro 142 mit 31 MB. Raphael arbeitet auf dem Mac Mini. Das MacBook Pro trägt dagegen die Claude-Routinen: 34 der 43 Scheduled Tasks, darunter die gesamte Aufsicht (Hub-Chef, Radar, Heartbeat, Mahnwesen, Zahlungsabgleich, Frühwarnung), und rund 1'250 Routine-Sessions in 30 Tagen. Genau das hatte das Hub-Audit vom 12.08. als SPOF 2 benannt.

**00.0.2 Was sich dadurch verschiebt.** Die sieben Ausfalltage der mobilen Station treffen nicht Raphaels Arbeit, sondern die Routinen. Die Routinen auf den Mac Mini zu verlegen (LAN, stabil, Audit B1) beseitigt damit den grössten Teil des gemessenen Schadens, und das ist der Kern von V0+. Das Argument «offline arbeitsfähig unterwegs» für V2 wiegt weniger, als Position 01.4 annahm.

**00.0.3 Korrigierte Empfehlung.** Zuerst V0+ (Vorarbeit V, ein Schreiber, alle Routinen und die Aufsicht auf den Mini; rund ein bis zwei Tage), dann vier Wochen messen. V2 bleibt die saubere Zielarchitektur, weil Git über SMB, der native Committer, das zu 93 % volle NAS-Volume und der NAS-Neustart vom 07.09. (der auch den Mini traf) davon unberührt bleiben; aber V2 verliert seine Dringlichkeit, sobald die Routinen im LAN laufen. Der Entscheid V2 kann nach der Messung fallen. Die Etappen sind dieselben, nur die Reihenfolge der Freigaben ändert sich: 08.2 (Neustart-Festigkeit Mini) und B1 (Aufsicht auf den Mini) rücken nach vorn, 08.1 (Variante) darf warten.

**00.0.4 Was unverändert gilt.** Vorarbeit V (grosse Binärdateien aus Git, union-Merge, Auto-Sync 15 Minuten) ist für jede Variante richtig und sofort sinnvoll. Die Routinen-Inventur in den Abschnitten 02 bis 04 bleibt gültig; die Spalte «Änderung» gilt für V0+ mit dem Unterschied, dass die Pfade beim NAS bleiben und nur die Station wechselt.

## 00 Big Points

**00.1 Das Ergebnis der Gegenprüfung: V2 bleibt die beste Lösung, aber die erste Fassung hat vier Dinge unterschätzt.** Erstens ist der Mac Mini heute im LAN stabil (kein einziger Mount-Vorfall in seinen Nachtschicht-Blöcken, kein Mountpoint-Rest); der akute Schmerz sitzt auf der mobilen Station und in der Spaltung durch zwei Schreiber. Zweitens liegen im Repo Dateien, die GitHub nicht mehr annehmen wird, sobald sie wachsen (eine DXF mit 83.5 MB, eine Dateiliste mit 70 MB; Grenze 100 MB je Datei). Drittens hängt die Lebendmeldung der Stationen (Watchdog) an Stempeldateien auf dem NAS. Viertens sind neben den 696 Script-Zeilen noch 158 NAS-Pfade in 43 Task-Prompts und 6 launchd-Jobs umzustellen.

**00.2 Die ehrliche Alternative heisst V0+: NAS bleibt kanonisch, aber ein Schreiber und alle Nachtläufe auf dem Mini.** Sie wäre billiger (ein Tag) und würde die Spaltungen beseitigen. Sie lässt aber die mobile Station als SMB-Client stehen, also die 275 Abrisse vom 07.09. und die Blindheit des Hub bei jedem Stall. Wer die mobile Arbeit nicht braucht, kann V0+ wählen; wer sie braucht, landet bei V2.

**00.3 Aufwand korrigiert: rund fünf Arbeitstage statt drei**, weil Task-Prompts, Plists, Heartbeat-Checks und die Lebendmeldung dazukommen. Die Übergangsphase (Mini im Klon, MacBooks noch am NAS) ist genau die Zwei-Schreiber-Lage von heute und muss kurz sein: Mini und MacBooks in derselben Woche umschalten.

**00.4 Routinen-Inventur: 12 launchd-Jobs und 9 Live-Tasks auf dem Mac Mini, 14 Jobs und 34 Live-Tasks auf dem MacBook Pro, 1 Cron auf dem NAS.** Jede Routine ist unten mit ihrer heutigen NAS-Abhängigkeit, der nötigen Änderung und dem Abnahmetest gelistet. Drei Routinen entfallen ganz, sechs Jobs zeigen heute per Plist auf den NAS-Pfad und würden ohne Mount gar nicht starten. Das Revendo-MacBook war zum Zeitpunkt der Inventur nicht erreichbar (SSH-Timeout); es ist nachzuholen.

**00.5 Zwei Vorarbeiten gehören vor jede Variante, auch vor V0+:** die grossen Binärdateien aus dem Git-Baum nehmen (`render-scratch/` 277 MB, `remote-tasks/results/` 73 MB) und die Append-Dateien mit `merge=union` versehen. Beides ist additiv und heute schon nützlich.

## 01 Gegenprüfung: Ist V2 wirklich die beste Lösung?

**01.1 Was die erste Fassung richtig hat.** Die Bauweise «Git-Arbeitsbaum auf SMB» ist der Grund für das Git-Verbot, den nativen Committer, drei Wächter und die Blindheit der Station bei jedem Stall. Die Messreihe der mobilen Station (sieben Ausfalltage, 275 Abrisse am 07.09.) und die zwei Spaltungen sind belegt und nicht zu relativieren.

**01.2 Was sie zu grob hat.** Die Chronik der Mac-Mini-Nachtschichten enthält keinen einzigen Mount-Vorfall; auf dem Mini existiert nur `/Volumes/daten`, kein Mountpoint-Rest. Der Mini hängt per LAN-Kabel am NAS und braucht die Härtung nicht (so schon `nas-mount-haerten.md`, 25.07.). Der einzige Mini-Ausfall war der NAS-Neustart vom 07.09., der jede Variante mit NAS trifft. Die Aussage «der ganze Hub ist instabil» gilt also für die mobile Station und für die Sync-Kette, nicht für die Always-On-Station.

**01.3 Die Alternative V0+ im Ernst geprüft.** NAS bleibt kanonisch. Der Auto-Sync der Stationen verliert seinen Push (nur noch Pull), damit steht genau ein Schreiber auf `main`. Alle Nachtläufe und die Aufsicht ziehen auf den Mini um (Audit B1). Das MacBook Pro arbeitet interaktiv wie heute.

| Kriterium | V0+ (NAS bleibt, ein Schreiber, Loops auf Mini) | V2 (Git Origin, Klone, Mini Zentrale) |
|---|---|---|
| Spaltungen NAS/GitHub | beseitigt (ein Schreiber) | beseitigt (Standard-Git, union-Merge) |
| Nachtläufe bei Mount-Abriss | Mini im LAN stabil; Restrisiko NAS-Neustart | unabhängig vom Mount |
| Interaktive Arbeit mobil | bleibt SMB-Client über Tailscale, Stalls bleiben | offline vollständig, Push später |
| Hub blind bei Stall | ja, auf der mobilen Station | nein |
| Git-Verbot, Committer, Wächter | bleiben alle | entfallen |
| NAS zu 93 % voll als Zentrale | bleibt Abhängigkeit | nur noch Dateiserver |
| Aufwand | rund 1 Tag | rund 5 Tage |
| Was Raphael verliert | nichts | den Sofort-Effekt einer Änderung auf der anderen Station (Latenz bis zum Pull, 5 Min) |

**01.4 Urteil.** V0+ heilt die Sync-Kette und die Nachtläufe, nicht aber die mobile Station, und sie behält alle Umgehungen. V2 heilt beides und räumt die Umgehungen ab, kostet aber fünf Tage und eine kurze Übergangsphase. Weil auf dem MacBook Pro sieben Ausfalltage in sechs Wochen belegt sind, bleibt V2 die Empfehlung. (Berichtigt 15:0x: die hier ursprünglich stehende Annahme, das MacBook Pro sei Raphaels Hauptarbeitsgerät, war falsch; siehe Abschnitt 00 Korrektur. Die Empfehlung lautet seither: zuerst V0+, V2 nach Messung.) V0+ ist der richtige Weg, falls Raphael den grösseren Umbau nicht jetzt will: seine zwei Bausteine (ein Schreiber, Loops auf den Mini) sind ohnehin die Etappen E1 und E2 von V2 und gehen nicht verloren.

**01.5 Sieben Risiken, die in der ersten Fassung fehlten.**

| Nr. | Risiko | Beleg | Folge für den Plan |
|---|---|---|---|
| R1 | GitHub nimmt keine Datei über 100 MB an; im Baum liegen zwei Dateien über 50 MB (DXF 83.5 MB in `render-scratch/`, Dateiliste 70 MB in `remote-tasks/results/`) und der Ordner `render-scratch/` mit 277 MB ist mitversioniert | `git ls-tree -r -l` | Vorarbeit: beide Ordner aus Git nehmen (`.gitignore`, Dateien bleiben auf Platte), sonst blockiert ein Push eines Tages den ganzen Hub |
| R2 | Repo wächst um 84 MB komprimierte Blobs je 30 Tage, also rund 1 GB je Jahr | `git cat-file --batch-check` über 30 Tage | Tragbar, wenn R1 gelöst ist; jährlich prüfen |
| R3 | Lebendmeldung der Stationen läuft über Stempeldateien in `logbuch/heartbeat/` auf dem NAS (Watchdog liest, Auto-Sync schreibt alle 5 Min) | `stationen-watchdog.sh` Z. 41, `git-auto-sync.sh` Z. 18 | Ersatz nötig: `station-status/<station>.md` wird bereits alle 10 Min committet (109 Commits am letzten Tag); der Watchdog liest künftig das Alter des letzten Commits je Station aus Git |
| R4 | Commit-Rauschen: 641 von 750 Commits der letzten 7 Tage sind `nas-selfcommit`; nach dem Umbau erzeugen drei Auto-Syncs und die Stations-Status-Dateien ähnliches Rauschen | `git log --since=7.days` | Auto-Sync auf 15 Min strecken; Stations-Status nur bei Änderung schreiben; Loops committen am Laufende einmal |
| R5 | Übergangsphase ist die Zwei-Schreiber-Lage von heute (Mini im Klon pusht, MacBook editiert NAS, Committer pusht) | Chronik 260824e | E2 und E3 in derselben Woche; union-Merge vorher |
| R6 | Sechs launchd-Jobs zeigen im Plist auf den NAS-Pfad (`wissens-trigger` und `claude-autoupdate` auf beiden Stationen, die drei Cockpit-Jobs bevorzugen ihn); sie starten ohne Mount gar nicht | `launchctl list`, Plists | Plists auf den Klon umschreiben, Teil von E2/E3 |
| R7 | Revendo-MacBook: nicht erreichbar, kein Dispatch-Token, Sessions synchronisieren nicht | SSH-Timeout 11.09.; Setup-Konnektor | Inventur dort nachholen; bis dahin gilt es als nicht umgestellt |

**01.6 Zwei Punkte, die für V2 besser sind als angenommen.** Der Auto-Sync über GitHub hat in den Logs beider Stationen null Fehler- und Konfliktzeilen; der GitHub-Weg ist also der stabilste Kanal, den der Hub heute hat. Und der Sync-Task-Runner braucht heute Festplattenvollzugriff für `/bin/bash`, weil er `/Volumes/daten` lesen muss (Pflichtschritt FDA im Skill `workstation-setup`); im Klon unter `~/Developer` entfällt diese Hürde.

## 02 Routinen-Inventur Mac Mini (Always-On)

**02.1 launchd-Jobs (12 geladen).**

| Job | Takt | NAS-Bezug heute | Änderung im Umbau | Abnahmetest |
|---|---|---|---|---|
| `ch.jans.synctask-runner` | 1800 s | Queue `/Volumes/daten/jans-ai-hub/sync-tasks/mac-mini`, FDA-Prüfung | Queue im Klon (versioniert), FDA-Zweig entfällt | Test-Task anlegen, nach 30 Min in `done/` mit Commit |
| `com.jans.git-auto-sync` | 300 s | Stempel nach NAS `logbuch/heartbeat` | Wird Hauptkanal: `pull --rebase`, Merge-Rückfall, Push; Stempel entfällt (R3); Takt 900 s | Datei ändern, nach 15 Min auf GitHub sichtbar |
| `ch.jans.nachtschicht` | 23:30, 02:30, 05:30, 13:30 | Prüft `/Volumes/daten/jans-ai-hub/wissen`, Weiche und Gate bevorzugt vom NAS, `git pull` im Klon | Arbeitsbaum Klon, Push am Laufende über `lauf.sh`; NAS nur für Rohkorpora | Ein Nachtlauf, danach Commit «nachtschicht» auf GitHub, kein Mount-Zugriff im Log |
| `ch.jans.wissens-trigger` | 06:30 | Plist startet Script vom NAS-Pfad, `REPO` fest NAS, Exit 3 ohne Mount | Plist und `REPO` auf Klon | Manuell auslösen, rc 0 ohne Mount |
| `ch.jans.claude-autoupdate` | 05:15 | Plist startet Script vom NAS-Pfad | Plist auf Klon | `launchctl kickstart`, Logzeile |
| `com.jans.cockpit-server`, `com.jans.cockpit`, `com.jans.cockpit-web` | RunAtLoad, 300 s | Bevorzugen `H=/Volumes/daten/jans-ai-hub`; Server schreibt «erledigt» in `fristen.md` | `H` fest auf Klon; die Schreibung wird vom Auto-Sync committet | Cockpit öffnen, Zeile erledigen, Commit erscheint |
| `com.jans.nas-mount` | RunAtLoad | Mountet das NAS einmal beim Login | Bleibt (Bürodaten, Rohkorpora), wird unkritisch | Keiner nötig |
| `ch.jans.speicher-waechter` | 1800 s | Fallback auf NAS-Pfad | Fallback streichen | Lauf, Logzeile |
| `ch.jans.transcript-rotation` | So 04:00 | Archiv nach `/Volumes/daten/06_Claude_Archiv`, Journal nach NAS `logbuch/speicher` | Archivziel bleibt NAS (Dateiserver), Journal in den Klon; ohne Mount sauber überspringen | Lauf am Sonntag, Archivdatei auf dem NAS |
| `com.jans.station-status` | 600 s | Prüft Mount, schreibt `station-status/mac-mini.md` | Mount-Zeile wird informativ; Datei bleibt die Lebendmeldung (R3) | Commit der Datei binnen 15 Min |

**02.2 Scheduled Tasks (9 live).** Alle neun tragen NAS-Pfade im Prompt (46 Zeilen). Takt gemäss Live-Registry; drei tragen im Prompt einen Deaktivierungsvermerk, der Live-Zustand ist von der Session aus nicht prüfbar (Audit R11).

| Task | NAS-Bezug heute | Änderung | Abnahmetest |
|---|---|---|---|
| `arbeits-weiche-review` | Journal `logbuch/arbeits-weiche` auf NAS | Pfade auf Klon | Lauf, Report committet |
| `bauleitung-training` | KB auf NAS, OneDrive-Quellen | Pfade auf Klon, `nas-commit-now` durch Push ersetzen | Lauf, Commit «bauleitung» auf GitHub |
| `baurecht-buch-training` | KB auf NAS, OneDrive; Vermerk deaktiviert | wie oben | wie oben |
| `claude-abo-auslastung` | Spiegel-SKILL auf NAS, `nas-commit-now` | Push statt Committer | Lauf, Commit |
| `energie-training` | KB auf NAS, OneDrive-Quellen; Vermerk deaktiviert | wie oben | wie oben |
| `grobkosten-training` | KB, Git-Anweisung im Prompt | Git-Anweisung auf «commit und push im Klon» | Lauf, Commit |
| `normen-training-mini` | KB, SharePoint-Originale; Vermerk deaktiviert | wie oben | wie oben |
| `planungsgrundlagen-training` | KB, Connector-Cache; Vermerk deaktiviert | wie oben | wie oben |
| `synobsis-batch-nacht` | Katalog `/Volumes/daten/05_Architekten_Synobsis` (Rohkorpus); Vermerk deaktiviert | Rohkorpus bleibt NAS, Mount-Guard am Anfang, KB-Pfade auf Klon | Lauf mit Mount, Lauf ohne Mount bricht sauber ab |

## 03 Routinen-Inventur MacBook Pro (mobil)

**03.1 launchd-Jobs (14 geladen).**

| Job | Takt | NAS-Bezug heute | Änderung im Umbau | Abnahmetest |
|---|---|---|---|---|
| `com.jans.nas-auto-mount` | 180 s | Wächter des SMB-Mounts | Entfällt (Plist archivieren) | Nach Entladen: Heartbeat grün ohne Mount |
| `com.jans.nas-keepalive` | 60 s | Sentinel-Stat auf dem NAS | Entfällt | dito |
| `ch.raphaeljans.cowork.nas` | RunAtLoad | Cowork-eigener Automount | Bleibt, falls Cowork das NAS für Bürodaten braucht; sonst archivieren (Entscheid Raphael) | Cowork-Start ohne Fehler |
| `ch.jans.synctask-runner` | 1800 s | wie Mini | wie Mini | wie Mini |
| `ch.jans.widerruf-queue` | 300 s | Queue unter `/Volumes/daten/jans-ai-hub` | Queue im Klon; wandert mit der Aufsicht auf den Mini | Widerrufsfenster-Test mit Test-Entwurf |
| `com.jans.git-auto-sync` | 300 s | wie Mini | wie Mini | wie Mini |
| `com.jans.cockpit-server` | RunAtLoad | wie Mini | wie Mini | wie Mini |
| `ch.jans.wissens-trigger` | 06:30 | Plist vom NAS-Pfad, Exit 3 ohne Mount | Plist auf Klon; eventuell nur noch auf dem Mini | Manuell auslösen |
| `ch.jans.claude-autoupdate` | 05:15 | Plist vom NAS-Pfad | Plist auf Klon | `kickstart` |
| `ch.jans.speicher-waechter` | 1800 s | Fallback NAS | Fallback streichen | Logzeile |
| `ch.jans.transcript-rotation` | So 04:00 | Archiv NAS | wie Mini | wie Mini |
| `com.jans.station-status` | 600 s | wie Mini | wie Mini | wie Mini |
| `ch.jans.screensaver-idle` | 60 s | keiner | unverändert | keiner |
| `ch.jans.claude-alwayson` | RunAtLoad | keiner (`caffeinate`) | unverändert | keiner |

**03.2 Scheduled Tasks (34 live, 112 NAS-Pfadzeilen).** Aufteilung nach dem Umbau: die sieben Aufsichts-Tasks ziehen auf den Mini (Audit B1), die Lern-Loops bleiben oder ziehen je nach Last, die Einmal-Tasks laufen aus.

| Task | Gruppe | NAS-Bezug heute | Änderung | Abnahmetest |
|---|---|---|---|---|
| `hub-chef-taeglich` | Aufsicht, zieht auf Mini | Logbuch, Fristen, Whitelist auf NAS | Pfade auf Klon; Push am Laufende | Briefing am Folgetag aus dem Mini, Commit sichtbar |
| `logbuch-radar` | Aufsicht, zieht auf Mini | Fristen-Register, `konversations-extract.sh`, Sync-Tasks | wie oben | Radar-Abschnitt im LOGBUCH vom Mini |
| `heartbeat-daily` | Aufsicht, zieht auf Mini | Ruft `heartbeat.sh` mit 6 NAS-Pfaden; Checks 1, 6, 7, 16 messen den Mount, die Symlinks und die NAS-Kette | Checks 1, 6, 7, 16 umschreiben: Klon-Frische, GitHub-Abgleich, ungepushte Commits, Lebendmeldung aus Git | Alle Checks grün ohne Mount |
| `mahnwesen-verzugscheck` | Aufsicht, zieht auf Mini | keiner (bexio, OneDrive) | `~/.bexio.env` auf den Mini (Handarbeit); bexio-401 vorher lösen | Lauf mit Deliverable |
| `zahlungsabgleich-check` | Aufsicht, zieht auf Mini | Report auf NAS | Pfade auf Klon | Lauf, Commit |
| `vollgas-fruehwarnung` | Aufsicht, zieht auf Mini | `logbuch/vollgas` auf NAS | Pfade auf Klon | Lauf, FRUEHWARNUNG-Eintrag committet |
| `vollgas-chef-radar` | Aufsicht, zieht auf Mini | RADAR.md, `nas-commit-now` | Push statt Committer | RADAR-Eintrag committet |
| `konversations-log` | Aufsicht | Konversations-Ordner auf NAS, liest Transkripte lokal | Pfade auf Klon; bleibt auf der Station mit den Transkripten | Tagesdatei committet |
| `wissens-chef` | Aufsicht Wissen | KBs auf NAS | Pfade auf Klon | Lauf, Commit |
| `wissenscheck-monatlich` | Aufsicht Wissen | Prompt trägt noch den verbotenen Git-Weg über SMB (Fristen 10.09.) | Prompt bereinigen, Klon | Lauf am 01.10. |
| `synergie-lauf-taeglich`, `synergie-lauf-monatlich` | Aufsicht Wissen | Register, Sync-Tasks, `nas-commit-now` | Push statt Committer | Registerzeile committet |
| `methoden-radar` | Aufsicht Wissen | `methoden-scan.sh`, `nas-commit-now` | wie oben | wie oben |
| `tenant-hygiene-weekly` | Aufsicht M365 | Reports auf NAS, `nas-commit-now` | wie oben | Report committet |
| `speicher-hygiene-quartal` | Aufsicht Station | Journal NAS | Pfade auf Klon | Lauf |
| `ag-gruendung-monitor` | Monitor | Spec-Output auf NAS | Pfade auf Klon | LOGBUCH-Abschnitt |
| `behoerden-zh-check` | Monitor | Spiegel `behoerden-dokumente` (nicht in Git) | Spiegel nach `~/jans-hub-daten/`; Registry im Klon | Lauf, Registry-Commit |
| `twin-fidelity-review`, `twin-mail-training` | Twin-Loops | Twin-Wiki auf NAS, Mail lokal, `nas-commit-now` | Pfade auf Klon, Push; bleiben auf der Station mit Apple Mail | Batch-Datei committet |
| `baurecht-buch-training`, `normen-training-nacht`, `immobewertung-training`, `planungsgrundlagen-wartung`, `wettbewerbs-dna-training`, `spec-training`, `wissens-destillat` | Lern-Loops | KBs auf NAS, teils Rohkorpora auf NAS, `nas-commit-now` | Pfade auf Klon, Push; Rohkorpus-Zugriffe mit Mount-Guard; Verteilung auf Mini oder Revendo nach Last | Je ein Lauf, Commit, kein Mount-Fehler im Log |
| `masterclass-woche1`, `syn02-spec-anstoss`, `token-messung-140716`, `token-drosselung-100810`, `immobewertung-marktpuls-260901`, `immobewertung-marktpuls-261201`, `wettbewerbs-dna-reaktivierung`, `wettbewerbs-layer-nachbrenner` | Einmal- oder terminierte Tasks | NAS-Pfade | Auslaufende Tasks löschen, terminierte (Marktpuls 01.12.) anpassen | Registry-Spiegel aktuell |

## 04 Routinen NAS und dritte Station

**04.1 NAS (Synology).** Ein Benutzer-Cron: `nas-selfcommit.sh` alle 15 Min. Entfällt in E4; das NAS-Repo wird Spiegel-Klon mit Pull-Only-Cron (täglich, für das Backup und für Läufe, die vom NAS-Pfad lesen). Die Synology-eigenen Dienste (Active Backup for Google, SMB-Freigaben `02_Archiv`, `03 Bauprodukte`, `04_Buero`, `05_Synobsis`, `06_Claude_Archiv`, `render-scratch`) sind vom Umbau nicht betroffen.

**04.2 MacBook Revendo (Intel).** Bei der Inventur nicht erreichbar (SSH-Timeout 11.09. 14:1x; Tailscale meldet die Station als offline, zuletzt gesehen vor rund fünf Stunden). Bekannt: Auto-Sync- und Sync-Task-Runner-Stempel vom 11.09. 08:44 auf dem NAS, also lief die Station am Morgen. Kein Dispatch-Token, darum keine ferngestarteten Läufe. Die Umstellung dort ist identisch mit dem MacBook Pro und wird nachgeholt, sobald die Station läuft; bis dahin gilt sie als nicht umgestellt und pusht weiter über den Auto-Sync.

## 05 Was in der ersten Fassung fehlte und jetzt in den Plan gehört

**05.1 Vorarbeit V (vor E1, additiv, sofort nützlich).** `render-scratch/` und `remote-tasks/results/` aus dem Git-Baum nehmen (R1); `.gitattributes` mit `merge=union` für CHANGELOG, `fristen.md`, `LOGBUCH.md`, `QUESTIONS.md`, `RADAR.md`, `FRUEHWARNUNG.md`; Auto-Sync auf 900 s.

**05.2 E1 erweitert.** Neben `hub-root.sh` und dem Script-Inventar: die 43 Task-Prompts (158 Zeilen) und die 6 NAS-Plists als Ersetzungsliste; Heartbeat-Checks 1, 6, 7, 16 neu fassen; Lebendmeldung aus Git statt Stempeln (R3); `lauf.sh` Default auf den Klon.

**05.3 E2 und E3 in derselben Woche** (R5). Reihenfolge Mini, dann MacBook Pro, dann Revendo; dazwischen höchstens drei Tage.

**05.4 E4 ergänzt.** NAS-Repo als Pull-Only-Spiegel mit täglichem Cron; `sync-kanonische-quelle` neu; Chronik-Einträge 260726 und 260729 ins Archiv; Skill `workstation-setup` auf Klon-Setup.

**05.5 Abnahme je Station (E5).** Ein Prüfscript `scripts/umbau-abnahme.sh` fährt je Station die Tests aus den Tabellen oben: Mount entfernen, Heartbeat, ein Nachtlauf, ein Sync-Task, ein Cockpit-Klick, Auto-Sync-Rundlauf, Divergenz null. Erst wenn alle drei Stationen bestanden haben, wird der NAS-Committer abgeschaltet.

**05.6 Aufwand neu.** V ein halber Tag, E1 eineinhalb Tage, E2 ein halber Tag plus Messung, E3 ein Tag (zwei Stationen), E4 ein halber Tag, E5 ein halber Tag: rund fünf Arbeitstage, davon etwa ein Tag interaktiv mit Raphael.

## 06 Entscheide Raphael (ergänzend zu 08.1 bis 08.6 der Systemanalyse)

**06.1 V2 oder V0+.** V2 bleibt empfohlen. V0+ ist die tragfähige kleine Lösung, wenn der grosse Umbau nicht jetzt sein soll; sie ist ein Teilweg von V2.

**06.2 Vorarbeit V sofort freigeben.** Grosse Binärdateien aus Git, union-Merge, Auto-Sync 15 Min. Gilt für jede Variante, ist additiv und umkehrbar.

**06.3 Cowork-Automount auf dem MacBook Pro** behalten oder archivieren.

**06.4 Verteilung der Lern-Loops** nach dem Umbau: alle auf den Mini, oder Revendo als zweiter Träger.

## 07 Belege dieser Vertiefung

**07.1 Inventur 11.09.2026, 14:1x bis 14:3x:** `launchctl list` und Plists auf Mac Mini (lokal) und MacBook Pro (ssh), Live-Registry `~/.claude/scheduled-tasks/*/SKILL.md` beider Stationen per grep (NAS-Pfade, `nas-commit-now`, Git-Anweisungen, Sync-Tasks, OneDrive), Cron der Synology, `git ls-tree -r -l`, `git cat-file --batch-check` über 30 Tage, `auto-sync.log` beider Stationen, LOGBUCH-Blöcke der Mac-Mini-Nachtschichten.

**07.2 Quellen:** Systemanalyse vom 11.09.2026 und deren Belegliste; Hub-Audit 260812 (B1, R11, SPOF 3); Spec 260830 (F1, B6); `docs/referenz/nas-mount-haerten.md`; Skill `workstation-setup` (FDA).
