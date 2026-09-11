# Systemanalyse JANS AI Hub: NAS-Erreichbarkeit als Architekturfehler und der Umbau auf Git als einzige Quelle

Stand 11.09.2026, 14:00 · Auftrag Raphael Jans, 11.09.2026 · Verfasst auf dem Mac Mini (Station Always-On) · Ablage kanonisch `docs/konzepte/260911-Systemanalyse-Hub-Architektur-NAS-Git/`

**Nachtrag 11.09.2026, 15:0x:** Die Vertiefung `docs/konzepte/260911-Vertiefung-Umbau-Verifikation-Routinen/` korrigiert die Gewichtung: Raphael arbeitet auf dem Mac Mini (494 interaktive Sessions in 30 Tagen gegen 142), das MacBook Pro trägt die Routinen. Empfehlung seither: zuerst V0+ (Routinen und Aufsicht auf den Mini, ein Schreiber), V2 nach vier Wochen Messung. Die Befunde dieses Dokuments bleiben gültig.

## 00 Big Points

**00.1 Der Befund ist kein Betriebsfehler, sondern ein Konstruktionsfehler.** Der Hub hält seine gesamte Fähigkeit (Skills, Agenten, Rules, Wissens-Layer, Logbuch) auf einer SMB-Netzfreigabe und lässt drei Stationen samt Dutzenden Nachtläufen darin arbeiten. Jeder Mount-Abriss macht die Station für den ganzen Hub blind, und jeder Wächter heilt nur, was er nicht verhindern kann.

**00.2 Die Ausfälle sind gemessen, nicht gefühlt.** Zwischen dem 25.07. und dem 07.09.2026 sind auf dem MacBook Pro sieben Ausfalltage mit bis zu 275 Mount-Abrissen an einem Tag belegt, dazu zwei Spaltungen zwischen NAS-Repo und GitHub (6 Stunden am 24.08.; 488 vergebliche Abgleichversuche vom 29.08. bis 02.09., Stufe P1). Acht Scripts und eine SMB-Client-Härtung existieren nur, um diese Bauweise am Leben zu halten.

**00.3 Der Vorschlag steht: Git ist die einzige Quelle, der Mac Mini ist die Systemzentrale, das NAS bleibt Dateiserver für Archiv und Rohkorpora.** Jede Station arbeitet in ihrem lokalen Klon, jeder Lauf endet mit einem Push. Der frühere Vorschlag aus einer nicht mehr auffindbaren Session (Suche vom 11.09.2026, 08:56) ist damit erstmals belegt und als Spec aufgeschrieben.

**00.4 Der Umbau ist in fünf reversiblen Etappen möglich, etwa drei Arbeitstage Aufwand, davon zwei Entscheide Raphaels vorab:** die Variante (Empfehlung: GitHub als Origin) und die Neustart-Festigkeit des Mac Mini (FileVault mit automatischer Anmeldung).

**00.5 Was verschwindet:** SMB-Härtung, Keepalive, Auto-Mount, Ensure-Guard, nativer Committer, Sofort-Committer, die Regel «nie git über SMB», die drei Symlinks und 696 fest verdrahtete NAS-Pfade. **Was bleibt:** die Freigabe-Schwelle, die Sync-Task-Queue (neu in Git), die Secrets je Station, das NAS als Quelle der Rohkorpora.

## 01 Ist-Zustand

**01.1 Architektur heute.** Kanonische Quelle ist das NAS-Repo `/volume2/daten/jans-ai-hub`, gemountet als `/Volumes/daten` per SMB auf jeder Station. Die Stationen halten daneben einen SSD-Klon `~/Developer/jans-ai-hub`, der laut Rule `sync-kanonische-quelle` nur Lesespiegel ist. Die Claude-Konfiguration `.claude/skills|agents|commands` zeigt per Symlink auf das NAS. Git darf nicht über SMB laufen; deshalb committet die Synology alle 15 Minuten selbst (`nas-selfcommit.sh`) und pusht nach GitHub, während `git-auto-sync.sh` auf jeder Station alle 5 Minuten den Klon mit GitHub abgleicht und dabei selbst pusht.

```
            GitHub (Backup, zwei Schreiber auf main)
               ▲                    ▲
 nas-selfcommit│15 Min   git-auto-sync│5 Min je Station
               │                    │
 NAS DS918+ ───┴─ SMB ─▶ Mac Mini ──┴─▶ SSD-Klon (faktisch beschrieben)
 /volume2/daten       ─▶ MacBook M2   ─▶ SSD-Klon
 (KANONISCH)          ─▶ MacBook Rev. ─▶ SSD-Klon
      ▲                    │ nas-auto-mount 180 s
      │ Symlinks .claude/* │ nas-keepalive 60 s
      └────────────────────┘ ensure-nas-mounted je Lauf
```

**01.2 Kennzahlen (gemessen 11.09.2026).**

| Grösse | Wert | Quelle |
|---|---|---|
| Commits letzte 30 Tage | rund 4'080, davon 2'700 `nas-selfcommit`, 359 `auto-sync` | `git log --since=30.days` |
| Commits je Tag | 136 | dito |
| Pack-Grösse des Repos | 271 MB | `git count-objects` |
| Fest verdrahtete Pfade `/Volumes/daten` | 696 Zeilen in 229 Dateien (scripts 66, skills 58, templates 56, agents 24, rules 11, commands 7, connectors 7) | `grep -rl` |
| Scheduled Tasks (Spiegel) | 34 MacBook Pro, 8 Mac Mini | `templates/scheduled-tasks/` |
| Hilfs-Scripts nur für die SMB-Bauweise | 8: `nas-auto-mount`, `nas-keepalive`, `ensure-nas-mounted`, `nas-selfcommit`, `nas-commit-now`, `nas-git-commit`, `git-auto-sync`, `sync-merge-reparatur-260902` | `scripts/` |
| NAS-Volume | 6.1 TB, 93 % belegt, 469 GB frei | `df` nativ |
| Mac Mini | M2 Pro, 32 GB RAM, 1.8 TB SSD, 1.0 TB frei, schläft nie | `system_profiler`, `df` |
| Im NAS-Repo, aber nicht in Git | Archimed 460 MB, behoerden-dokumente 27 MB, produkt-kataloge 6 MB, sync-tasks 3.8 MB, laeufe 1.6 MB | `git status --ignored` nativ |

## 02 Befund: die Ausfallchronik

**02.1 Mount-Abrisse auf der mobilen Station (MacBook Pro).**

| Datum | Messung | Wirkung | Beleg |
|---|---|---|---|
| 25.07. | «Mount hängt» alle 15 bis 20 Min bei gesundem Netz | Headless-Läufe brechen mitten im Lauf ab | `docs/referenz/nas-mount-haerten.md` |
| 28.07. | 17 Stalls an einem Tag | Zwei Treiberläufe sterben stumm, weil bash das Script vom NAS-Pfad nachliest | Chronik 260807 |
| 24.08. | Dreimal in einem Lauf, Mount zeitweise auf `/Volumes/daten-1` | Ein `cd` schlägt fehl, ein Schreibvorgang landet im SSD-Klon | Chronik 260824 |
| 31.08. | 59 WARN-Zyklen, rund alle 15 Min je 4 Min ohne `/Volumes/daten`; Freigabe hängt vier Stunden unter `daten-1`, kein Wächter kommt heraus | Station für den ganzen Hub blind (keine Skills, Rules, Agenten) | Chronik 260831, 260831b |
| 01.09. | 63 Keepalive-Stalls; viermal in einem Lauf; 24 von 24 Proben unerreichbar, zwei konkurrierende Mounts (LAN-IP und Tailscale) | Erst der manuelle Remount hilft | Keepalive-Log, `fristen.md` Nachtrag 01.09. |
| 03.09. | 41 Keepalive-Stalls | Wiederholte Heilung im Minutentakt, Läufe warten oder brechen ab | Keepalive-Log |
| 07.09. | 275 Keepalive-Stalls, NAS von etwa 07:50 bis 13:19 nicht erreichbar («NAS offline seit 13:01», Selbst-Mail) | Fünfeinhalb Stunden ohne Hub, alle drei Geräte und das NAS an diesem Tag neu gestartet | Keepalive-Log, LOGBUCH 08.09. |

**02.2 Spaltungen und Stillstände der Sync-Kette.**

| Datum | Befund | Dauer | Beleg |
|---|---|---|---|
| 11./12.08. | Committer verweigert jeden Durchgang wegen eines Rebase-Rests; 79 und 93 Skips an zwei Tagen | 18 Stunden ohne Commit, 41 Stunden bis zur Reparatur | Chronik 260811, 260812 |
| 24.08. | NAS-Repo 26 Commits voraus, GitHub 51 voraus, 9 Dateien beidseitig geändert | 6 Stunden ungesichert | Chronik 260824e |
| 29.08. bis 02.09. | Divergenz wächst auf 396 gegen 266 Commits, 488 vergebliche Abgleichversuche, Stufe P1 | 4 Tage, Auflösung durch Raphael am 02.09. (Merge `a6fb7e3bd`) | `fristen.md`, Spec 260830 B6 |

**02.3 Was die Wächter leisten und was nicht.** Die dreischichtige Härtung vom 25.07. (SMB-Client-Tuning, Keepalive, Ensure-Guard) hat die Läufe überlebensfähig gemacht: sie brechen sauber ab, statt halb zu schreiben. Verhindert hat sie nichts. Der Nachtrag der Frühwarnung vom 01.09. zeigt zudem, dass Diagnosen an dieser Stelle selbst fehlgehen: die Aktion «`/etc/nsmb.conf` anlegen» verlangte ein Passwort für etwas, das als User-Fassung längst galt.

## 03 Warum das ein Architekturfehler ist

**03.1 Ein Git-Arbeitsbaum auf einer SMB-Freigabe ist die falsche Bauweise.** Git verlangt ein lokales Dateisystem mit verlässlichem `stat` und Locking. Über SMB hängen schreibende und lesende Git-Befehle uninterruptibel (Chronik 260726, 260729). Die Antwort des Hub war, Git zu verbieten und einen nativen Committer zu bauen. Das ist ein Umweg um ein Problem, das die Bauweise selbst erzeugt.

**03.2 Die gesamte Fähigkeit hängt an einem Mountpoint.** Alle `@`-Importe der Rules, alle Symlinks der Skills und Agenten und 696 Pfadzeilen zeigen auf `/Volumes/daten`. Fällt der Mount, fällt nicht ein Feature, sondern der ganze Hub, und zwar auf der Station, die gerade arbeitet.

**03.3 Zwei Schreiber auf einem Zweig sind eingebaut.** Der native Committer und der Auto-Sync der Stationen pushen beide auf `main`. Die Rule verlangt, dass nur auf dem NAS editiert wird; die Messung vom 24.08. zeigt, dass 40 von 83 Dateien nur über den SSD-Klon nach draussen kamen, und die Spec vom 30.08. (Befund B6) belegt, dass die Dispatch-Läufe systematisch im Klon arbeiten. Regel und Praxis widersprechen sich seit Wochen, und die Spaltungen sind die Folge.

**03.4 Die mobile Station ist SMB-Client über einen VPN-Tunnel.** Das MacBook Pro mountet je nach Standort über die LAN-IP oder über Tailscale. Zwei Wege auf dieselbe Freigabe erzeugen Mountpoint-Wildwuchs (`daten-1`, `daten-2`) und laufen den Wächtern im Kreis. Ein Klon kennt dieses Problem nicht: er ist offline vollständig.

**03.5 Die Entscheide, die dorthin geführt haben, waren jeweils vernünftig.** Das NAS als Zentrale (Setup März 2026), der native Committer (10.06.), die Härtung (25.07.), die Ablehnung eines Umzugs («vorerst nein», 25.07.), die Zurückstellung «Repo weg vom SMB-Mount» (28.07.), der Entscheid vom 24.08. («einfach, stabil, direkt») und die offene Frage F1 der Spec vom 30.08. Jeder Schritt hat ein Symptom behoben. Zusammengenommen zeigen sie, dass die Ursache auf einer anderen Ebene liegt.

## 04 Zielbild: Git als einzige Quelle, der Mac Mini als Zentrale

**04.1 Grundsatz.** Die einzige Quelle der Wahrheit ist das Git-Repository auf GitHub. Jede Station, auch der Mac Mini, arbeitet ausschliesslich in ihrem lokalen Klon `~/Developer/jans-ai-hub`. Es gibt keinen geteilten Arbeitsbaum mehr. Was geteilt werden soll, wird committet und gepusht; was gelesen werden soll, wird gepullt.

```
           GitHub origin/main (EINZIGE QUELLE, Off-Site)
             ▲              ▲              ▲
        push │              │              │ pull --rebase, push
             │              │              │
 Mac Mini (ZENTRALE)   MacBook Pro M2   MacBook Revendo
 Klon + alle Loops     Klon, mobil,     Klon, Lern-Betrieb
 Aufsicht, Queue,      offline fähig
 Dispatch-Endpunkt
      │ liest Rohkorpora nur bei Bedarf
      ▼
 NAS DS918+ = Dateiserver: Archiv, Rohkorpora, schwere
 Referenzen, Backup-Spiegel (kein Git-Arbeitsbaum,
 kein Committer, keine Symlinks mehr dorthin)
```

**04.2 Rollen der Geräte.**

| Gerät | Rolle neu | Was sich ändert |
|---|---|---|
| GitHub | Origin und einzige Quelle | Nur noch ein Zweig, Schreiber sind die Stationen; Historie bleibt |
| Mac Mini | Systemzentrale: alle Loops und Nachtläufe, die Aufsicht (Hub-Chef, Radar, Heartbeat, Mahnwesen, Zahlungsabgleich), Dispatch-Endpunkt, Sync-Task-Runner, schwere Referenzen lokal | Übernimmt B1 aus dem Hub-Audit; braucht Neustart-Festigkeit (B2) |
| MacBook Pro M2 | Interaktive Arbeitsstation, offline arbeitsfähig, keine Aufsicht mehr | Keepalive, Auto-Mount, Ensure-Guard entfallen; NAS nur noch für Bürodaten |
| MacBook Revendo | Lern-Betrieb, Aushilfe | Wie heute, aber ohne NAS-Abhängigkeit |
| NAS DS918+ | Dateiserver für `02_Architektur_Archiv`, `03 Bauprodukte_BKP`, `04_Buero`, `05_Architekten_Synobsis`, `06_Claude_Archiv`; Backup-Spiegel des Hub per Klon | Selfcommit-Cron abgeschaltet, Repo wird zum reinen Spiegel |

**04.3 Entwurfsentscheide.**

**04.3.1 Pfade.** Ein Auflöser `scripts/hub-root.sh` liefert den Wurzelpfad des Klons; alle 696 Pfadzeilen werden auf `$HUB_ROOT` beziehungsweise relative Pfade umgestellt. Die Symlinks `.claude/skills|agents|commands` zeigen relativ in den Klon (`../skills`) und werden mitversioniert.

**04.3.2 Schreiben und Sichern.** Jeder automatische Lauf endet mit `git pull --rebase`, `commit`, `push` in einem Wrapper (der bereits gebaute `scripts/lauf.sh` aus der Spec 260830 übernimmt das). Interaktive Sessions committen wie heute. Der bestehende `git-auto-sync.sh` bleibt als Sicherheitsnetz alle 5 Minuten, verliert aber den Rebase-Autostash und arbeitet mit `--ff-only`, sonst Merge-Rückfall (Audit C1).

**04.3.3 Append-Dateien ohne Konflikte.** Die Spaltungen sassen ausnahmslos in Dateien, an denen mehrere Läufe oben anfügen (CHANGELOGs, `fristen.md`, `LOGBUCH.md`, `QUESTIONS.md`). Diese Dateien erhalten in `.gitattributes` den Merge-Treiber `merge=union`; ein Nebeneinander-Anfügen erzeugt dann keinen Konflikt mehr, sondern beide Blöcke.

**04.3.4 Sync-Task-Queue in Git.** Die Queue `sync-tasks/` ist heute ignoriert und lebt nur auf dem NAS. Sie wird versioniert (kleine Textdateien, 3.8 MB), die Freigabe-Schwelle `sync-task-guard.sh` bleibt unverändert davor. `remote-tasks/` arbeitet bereits so.

**04.3.5 Schwere und heikle Dateien.** Was nicht in Git gehört (Archimed 460 MB, Behörden-Spiegel, Produktkataloge, `logbuch/laeufe/` mit Kundendaten), liegt künftig auf dem Mac Mini unter `~/jans-hub-daten/` und wird per `rsync` auf das NAS gespiegelt. Läufe, die Rohkorpora vom NAS lesen (`wissens-destillat`), prüfen den Mount am Anfang und brechen sauber ab; für den Hub selbst ist der Mount nicht mehr Voraussetzung.

**04.3.6 Rules und Wegweiser.** `sync-kanonische-quelle` wird zu «Git ist die Quelle, jede Station arbeitet im Klon»; `git-auto-push` bleibt; die Einträge 260726 und 260729 (git über SMB) werden ins Archiv verschoben; CLAUDE.md, `connectors/hub-setup-daten.json`, `connectors/WEGE.md` und `skills/heartbeat` werden nachgezogen. Der Skill `workstation-setup` ersetzt `setup-nas-skills.sh` durch `git clone` plus Secrets von Hand.

## 05 Varianten im Vergleich

| Kriterium | V1: NAS bleibt Zentrale, Git-Remote über SSH (Spec F1) | V2: GitHub Origin, Mac Mini Zentrale (Empfehlung) | V3: Mac Mini als Git-Server, GitHub als Spiegel |
|---|---|---|---|
| Mount-Abrisse treffen den Hub | nein (kein Arbeitsbaum über SMB) | nein | nein |
| Single Point of Failure | NAS (93 % voll, Idle-Stalls, 5.5 h offline am 07.09.) | keiner für die Arbeit; Mini nur für Loops | Mac Mini für alles |
| Off-Site-Backup | GitHub als Zweitziel | eingebaut | zusätzlicher Schritt |
| Mobil und extern | Tailscale zum NAS nötig | jeder Internet-Zugang | Tailscale zum Mini nötig |
| Komplexität | zwei Remotes, Cron auf der Synology bleibt | ein Remote, Standard-Git | eigener Git-Dienst zu pflegen |
| Migrationsaufwand | mittel | mittel | mittel plus Serverpflege |
| Entspricht «einfach, stabil, direkt» (24.08.) | teilweise | ja | teilweise |

**05.1 Empfehlung: V2.** Sie ist die Standard-Bauweise für ein Team mit mehreren Geräten, braucht keinen eigenen Dienst und macht den Hub an jedem Ort mit Internet arbeitsfähig. V1 ist die naheliegende, aber halbe Lösung: sie behält das NAS als Zentrum mit allen gemessenen Schwächen. V3 lohnt sich nur, wenn GitHub als Abhängigkeit unerwünscht wäre; das Repo ist mit 271 MB klein genug, dass die LAN-Geschwindigkeit keine Rolle spielt.

## 06 Gewinn und Risiko

**06.1 Gewinn.**

| Position | Wirkung |
|---|---|
| Kein Mount als Voraussetzung | Ein Abriss kostet höchstens einen Rohkorpus-Lauf, nie Skills, Rules oder Logbuch |
| Ein Schreiber-Modell | Divergenzen werden gewöhnliche Git-Merges statt P1-Vorfälle |
| Acht Scripts weniger | Weniger Zustände, in denen sich Wächter gegenseitig blockieren (Audit R13) |
| Offline-Fähigkeit | MacBook Pro arbeitet unterwegs ohne Tunnel, pusht später |
| Mac Mini als Zentrale | Aufsicht läuft auf der Station, die nie schläft (Audit B1) |
| NAS entlastet | Kein 15-Minuten-Git auf einem zu 93 % vollen Volume |

**06.2 Risiken und Gegenmassnahmen.**

| Risiko | Gegenmassnahme |
|---|---|
| Arbeit bleibt ungepusht auf einer Station liegen | Push am Laufende im Wrapper, Auto-Sync alle 5 Minuten, Heartbeat-Check «ungepushte Commits älter als 30 Minuten» |
| Merge-Konflikte in Append-Dateien | `merge=union` in `.gitattributes`; Nachtläufe zeitlich entzerrt (bestehende Takte) |
| Mac Mini bleibt nach Stromausfall am FileVault-Prompt stehen | Entscheid B2: FileVault aus plus automatische Anmeldung, dazu Tailscale-Wächter (bereits gebaut) |
| Rohkorpora auf dem NAS nicht erreichbar | Betrifft nur `wissens-destillat`; sauberer Abbruch am Laufanfang, Wiederholung im nächsten Takt |
| 696 Pfadzeilen, Fehler beim Umstellen | Etappe 1 baut nur daneben; Grep-Checkliste, Rauchtest je Station vor dem Umschalten |
| Secrets müssen je Station liegen | Wie heute (`~/.jans-dispatch.env`, `~/.bexio.env`, Zertifikat); nie in Git |
| Historie von 4'000 Auto-Commits je Monat | Bleibt; optional später `nas-selfcommit`-Rauschen ausdünnen, nicht Teil des Umbaus |

## 07 Migrationsplan in fünf Etappen

Jede Etappe ist für sich reversibel. Die Etappen 1 und 2 dürfen unbeaufsichtigt vorbereitet werden; die Umschaltungen 3 bis 5 sind wache Schritte mit Raphael am Bildschirm (Rule `interaktive-eingriffe`, Spec 260830 Abschnitt 7).

| Etappe | Inhalt | Abnahmekriterium | Aufwand |
|---|---|---|---|
| E0 Entscheide | Variante (V2), Neustart-Festigkeit Mac Mini (B2), Queue in Git, Ablageort schwere Dateien | Schriftlich in dieser Datei, Abschnitt 08 | 30 Min Raphael |
| E1 Vorbereiten (additiv) | `hub-root.sh`, `.gitattributes` union, relative Symlinks, Pfad-Inventar 696 Zeilen mit Ersetzungsliste, `sync-tasks/` versionieren, `~/jans-hub-daten/` auf dem Mini per rsync füllen | Nichts Bestehendes geändert; Rauchtest `lauf.sh` im Klon rc 0 | 1 Tag |
| E2 Mac Mini umschalten | Loops, Nachtschicht, Dispatch auf Klon mit Push am Laufende; NAS-Mount nur noch für Rohkorpora; 7 Tage messen | Divergenz NAS/GitHub 0, kein Abbruch durch Mount, Ertrag der Loops unverändert | 0.5 Tag plus 7 Tage Messung |
| E3 MacBooks umschalten | Pfade und Symlinks aktiv, Auto-Mount/Keepalive/Ensure entladen und archiviert; Scheduled Tasks der Aufsicht auf den Mini (Audit B1) | Heartbeat grün ohne NAS-Mount; Aufsicht feuert auf dem Mini (nachgemessen am Folgetag) | 0.5 Tag |
| E4 NAS zurückbauen | Selfcommit-Cron aus, NAS-Repo als Spiegel-Klon (pull only), Rules und Wegweiser umschreiben, Chronik-Eintrag | Kein Schreiber mehr auf dem NAS; `wege-doctor.sh` grün | 0.5 Tag |
| E5 Nachmessen | 14 Tage Betrieb, Kennzahlen: Mount-Stalls irrelevant, Divergenz 0, ungepushte Commits unter 30 Min, Ausfallmeldungen des Watchdogs | Bericht als Nachtrag zu dieser Datei | 1 Std |

**07.1 Reihenfolge ist Absicht.** Der Mac Mini schaltet zuerst um, weil er die Station ist, die den Umbau trägt, und weil dort der LAN-Mount heute stabil ist: ein Fehler in E2 kostet keine Verfügbarkeit. Erst wenn der Mini eine Woche sauber läuft, folgt die mobile Station, die den grössten Gewinn hat.

**07.2 Rückfallweg.** Bis E4 bleibt das NAS-Repo unverändert bespielt (der Committer läuft weiter). Wer in E2 oder E3 abbricht, hängt die Symlinks zurück und lädt die archivierten Wächter neu; nichts ist gelöscht, die Plists liegen unter `~/Library/LaunchAgents/_archiv-260911/`.

## 08 Entscheide Raphael (offen)

**08.1 Variante.** V2 (GitHub Origin, Mac Mini Zentrale) freigeben, oder V1 beziehungsweise V3.

**08.2 Neustart-Festigkeit Mac Mini.** FileVault abschalten und automatische Anmeldung setzen (Audit B2, Weg eins). Ohne diesen Entscheid ist der Mini nur so verfügbar wie eine Person vor dem Gerät, und der Umzug der Aufsicht tauscht nur die Ausfallart.

**08.3 Sync-Task-Queue.** `sync-tasks/` versionieren (Empfehlung) oder als Dateiordner auf dem Mini per SSH führen.

**08.4 Schwere Dateien.** Ablage `~/jans-hub-daten/` auf dem Mini mit NAS-Spiegel (Empfehlung), oder weiterhin nur NAS mit Mount-Pflicht für die betroffenen Skills.

**08.5 Zeitfenster.** E2 in einem Nachtfenster mit pausierten Lern-Loops (Vorschlag: nächste Woche, ein Abend), E3 an einem Bürotag mit beiden MacBooks im LAN.

**08.6 NAS-Repo-Historie.** Als Spiegel-Klon weiterführen (Empfehlung) oder einfrieren und nur als Archiv behalten.

## 09 Nächste Schritte

**09.1 Entscheid.** Raphael entscheidet 08.1 bis 08.6 (30 Minuten, in dieser Datei oder im Gespräch).

**09.2 Spec und Etappe E1.** Claude legt die Spec `SPEC.md` neben diese Datei (Ziel, Abgrenzung, Kriterien aus Abschnitt 07) und startet E1 additiv auf dem Mac Mini.

**09.3 Rauchtest.** Nach E1: Rauchtest je Station, dann Termin für E2.

**09.4 Fortschreibung.** Diese Datei wird je Etappe mit einem datierten Nachtrag fortgeschrieben; der Abschluss von E5 ist der Bericht.

## 10 Belege

**10.1 Betriebs-Chronik.** `rules/betrieb-chronik.md`, Einträge 260726, 260729, 260807, 260811, 260812, 260824, 260824e, 260824f, 260831, 260831b, 260901.

**10.2 Fristen-Register.** `logbuch/fristen.md`, Nachträge 30.08. bis 01.09.2026 (P1-Sync-Zeile, nsmb-Befund und Korrektur der Frühwarnung).

**10.3 Hub-Audit.** `docs/konzepte/260812-Hub-Audit/260812-Hub-Audit.md` (SPOF 3, Abschnitte 1.5 bis 1.7, 2.4, B1, B2, C1) und `260812-B1-Umzug-Aufsicht-Vorbereitung.md`.

**10.4 Laufzeitschicht-Spec.** `docs/konzepte/260830-Laufzeitschicht-Umbau/SPEC.md` (Befund B6, Frage F1), `BEFUND.md`, `VERIFIKATION.md`.

**10.5 Speicher-Architektur.** `docs/konzepte/260728-Speicher-Architektur/260728-Speicher-Architektur.md`, offene Punkte 2 und 3.

**10.6 Referenzen.** `docs/referenz/nas-mount-haerten.md`, `docs/plan-dsm-git.md`.

**10.7 Eigene Messungen.** Eigene Messungen 11.09.2026, 13:55 bis 14:00: Keepalive- und Auto-Mount-Logs des MacBook Pro per SSH, Selfcommit-Log der Synology per `awk`, `git log` und `count-objects` im Klon, `grep -rl /Volumes/daten`, `df` auf NAS und Mac Mini, `system_profiler`.

**10.8 Session-Suche.** Suche nach der früheren Session mit dem NAS-freien Konzept, 11.09.2026 08:56 bis 08:59: nicht gefunden auf MacBook Pro und Mac Mini; das Konzept ist mit dieser Datei erstmals schriftlich belegt.
