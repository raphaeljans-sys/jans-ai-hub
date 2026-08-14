# Rule: Heikle Eingriffe in interaktiven Sessions (Ankuendigen · Umkehrbar · Protokollieren)

Diese Rule schliesst eine Luecke zwischen zwei bestehenden Schichten. Die
**Sync-Task-Freigabe-Schwelle** (`scripts/sync-task-guard.sh`) schuetzt den **unbeaufsichtigten**
Runner: was heikel ist, wandert nach `sync-tasks/freigabe/<station>/` und wartet auf Raphaels
Einzelfreigabe. Die **Aktions-Whitelist** (`logbuch/AKTIONS-WHITELIST.md` v2) sagt, dass
umkehrbare Arbeit getan und nicht vorgelegt wird. Ungeregelt war der Fall dazwischen: **Claude
arbeitet interaktiv, Raphael ist da — und der Eingriff faellt in dieselbe Risikoklasse, die der
Guard unbeaufsichtigt zurueckhalten wuerde.**

## Die fuenf heiklen Klassen

1. **Git-Interna** — alles unterhalb von `.git/`: Rebase-/Merge-Marker, `index.lock`,
   `MERGE_HEAD`, `update-ref`, `stash drop|clear`, `reflog expire`, `gc --prune`.
2. **Cloud-Sync und FileProvider** — ⚠ **fuer diese Klasse gilt seit 14.08.2026 mehr als
   Ankuendigen:** die systemseitigen Schalter (OneDrive-/Dropbox-Einstellungen, «Dateien bei
   Bedarf», Finder «Speicherplatz freigeben»/«Nur online verfuegbar») bedient **Raphael
   selbst**. Claude misst, waehlt Kandidaten-Ordner aus und liefert den exakten Klickweg,
   loest aber keine Sync- oder Systemprozesse dafuer aus — auch nicht nach Ankuendigung
   (Rule `auto-verbesserungen` 260814). Die uebrigen Cloud-Eingriffe unten bleiben bei der
   Ankuendigungspflicht. Betroffen: OneDrive, Dropbox, Google Drive, iCloud: Sync-Ordner
   umbenennen/verschieben, FileProvider-Domains oder -Caches anfassen, Platzhalter-Dateien
   materialisieren oder loeschen, Sync-Prozesse beenden.
3. **Keychain und Credentials** — `security`-Aufrufe, die schreiben oder entsperren,
   Zertifikate, Tokens, `.env`.
4. **Systemdienste** — `launchctl load|unload|bootout|kickstart`, Plists in
   `~/Library/LaunchAgents/`, DSM-Cron, sshd, Tailscale.
5. **Persistenz und Autostart** — alles, was einen Reboot ueberlebt oder ihn beeinflusst.

## Die Regel

1. **Vorher ankuendigen, im Chat, bevor der Befehl laeuft.** Ein Satz genuegt: was angefasst
   wird, mit welchem Befehl, wie es rueckgaengig gemacht wird. Die Ankuendigung ist **kein
   Freigabeantrag** — Raphael muss nicht zustimmen, er muss die Gelegenheit haben, zu
   widersprechen, bevor es passiert. **Nicht** erst handeln und danach berichten: ein Bericht
   nimmt ihm genau die Gelegenheit, die diese Regel schuetzt.

2. **Nur umkehrbar handeln.** `mv` statt `rm` (auch fuer Verzeichnisse), Kopie vor Ueberschreiben,
   `git update-ref` statt Objekte verwaisen lassen. **Verboten ohne ausdrueckliche
   Einzelanweisung:** `rm -rf`, `--force`, `--hard`, `--prune`, `git push --force`,
   `checkout`/`restore` ueber fremde ungesicherte Aenderungen. Wo der weggeschobene Stand
   liegt, wird benannt — ein Backup, dessen Pfad niemand kennt, ist keines.

3. **Unumkehrbares gehoert nie in die Session.** Laesst sich ein Eingriff nicht umkehrbar
   formulieren, wird er **nicht** interaktiv ausgefuehrt, sondern als Sync-Task in die
   Freigabe-Queue gelegt und Raphael vorgelegt. Dasselbe gilt fuer alles, was **unbeaufsichtigt**
   laufen soll: Loops und Scheduled Tasks fallen nie unter diese Rule, fuer sie gilt
   ausschliesslich die Freigabe-Schwelle. **Interaktiv heisst: Raphael ist im Gespraech anwesend
   und koennte eingreifen.** Ist er es nicht, ist die Session nicht interaktiv, auch wenn sie
   technisch eine Chat-Session ist.

4. **Nach dem Eingriff ein Einzeiler in `rules/betrieb-chronik.md`** — Datum, was angefasst
   wurde, wohin das Umkehrbare gesichert ist, Ergebnis. Eine Zeile reicht; ein Vorfall mit
   Lehre bekommt einen eigenen Abschnitt. Der Zweck ist nicht Buchhaltung, sondern dass die
   naechste Session den Eingriff findet, statt ihn zu wiederholen oder rueckgaengig zu machen.

   **Bleibt etwas offen, zusaetzlich eine Zeile in `logbuch/fristen.md`** — das weggeschobene
   Material, der ungepruefte Abgleich, der halbe Namensraum. Die Chronik haelt fest, was
   geschah; das Register haelt fest, was noch zu tun ist, und wird taeglich gelesen. Belegt am
   OneDrive-Eingriff vom 08.08.2026: 2.8 GB Projektdaten liegen seither in
   `~/OneDrive-Quarantaene-260808`, ohne Abgleich gegen SharePoint und ohne eine Zeile in
   irgendeinem Register. Ein Chronik-Eintrag allein haette den Vorgang sichtbar gemacht, aber
   nicht wiedervorgelegt (Hub-Audit 260812, R4).

5. **Der Klassifikator und die Freigabe-Schwelle bleiben unberuehrt.** Diese Rule erweitert
   keine Vollmacht, sie diszipliniert eine bereits bestehende. Zahlungen, Buchungen, Versand
   und Veroeffentlichungen bleiben ausgenommen (User-CLAUDE.md «Grenzen»).

## Warum, mit Beleg

Am 12.08.2026 behob Claude waehrend eines `/heartbeat` einen verwaisten Rebase-Rest im
kanonischen NAS-Repo und brachte damit eine seit 41 h stehende Sync-Kette wieder in Gang
(`rules/betrieb-chronik.md` 260812). Der Eingriff war sachlich richtig, umkehrbar ausgefuehrt
(`mv` statt `rm -rf`, Autostash-Objekt blieb erreichbar) und nachgemessen. **Er beruehrte aber
genau das Muster, das `sync-task-guard.sh` seit dem 11.08. unbeaufsichtigt zurueckhaelt** —
und er wurde ohne Vorankuendigung ausgefuehrt.

Zwei Dinge waren daran unbefriedigend, unabhaengig vom guten Ausgang:

- Raphael erfuhr vom Eingriff in Git-Interna **erst im Ergebnisbericht**. Haette er ihn anders
  gewollt, waere es zu spaet gewesen.
- Ob eine interaktive Session diesen Spielraum ueberhaupt hat, war nirgends geregelt. Beide
  Antworten waeren vertretbar gewesen — und genau deshalb darf es keine stille Auslegung
  bleiben.

Der Gegenfall aus demselben Vorgang zeigt, warum die Antwort nicht schlicht «nie» lautet: der
korrekt zurueckgehaltene Reparatur-Task lag 41 h unbearbeitet, adressiert an eine mobile
Station. **Ein Verbot haette den Stillstand nicht verkuerzt, sondern verlaengert.** Die
Ankuendigungspflicht loest beides: der Eingriff geschieht, aber sichtbar.

## Wann NICHT

- Gewoehnliche Arbeit im Arbeitsbaum: Dateien schreiben, editieren, committen, pushen,
  Scripts anlegen, Skills und Rules pflegen. Das faellt unter die Whitelist («umkehrbare
  Arbeit wird getan, nicht vorgelegt») und braucht keine Ankuendigung.
- Lesende Diagnose jeder Art, auch in `.git/`, im Keychain-Status oder in `launchctl list`.
  **Lesen ist nie ein Eingriff.**
- Wenn Raphael den Eingriff selbst beauftragt hat. Dann ist die Ankuendigung erfolgt, er hat
  sie geschrieben. Umkehrbarkeit (Punkt 2) und Chronik-Eintrag (Punkt 4) gelten trotzdem.

## Das maschinelle Gegenstueck

Diese Rule diszipliniert die **interaktive** Session. Das unbeaufsichtigte Gegenstueck ist
`scripts/sync-task-guard.sh` — und der deckt seit dem 13.08.2026 **alle fuenf Klassen** ab:
Git-Interna, Zerstoerendes, SSH-Zugang, Rechte, Secrets, Persistenz und Fernausfuehrung waren
vorhanden; Commit `daf0cab8` ergaenzte «Cloud-Sync und FileProvider» (`fileproviderctl`,
`domainscache`, `brctl`, `Application Support/FileProvider`, `killall|pkill` auf
OneDrive/Dropbox/bird/FileProvider) und «Verschluesselung und System-Defaults» (`fdesetup`,
`defaults write /Library`, schreibende `security`-Aufrufe). Die Luecke B4 Teil 2 aus dem
Hub-Audit 260812 ist damit geschlossen.

**Eine Einschraenkung mit Absicht:** die neuen Muster greifen auf **Werkzeug-Token**, nicht auf
Pfad-Token. `CloudStorage` und `OneDrive` allein loesen nicht aus, sonst haette jeder harmlose
Lese- oder Ablage-Task in einer Cloud-Bibliothek in der Freigabe-Queue gelegen. Ein Task, der
einen Sync-Ordner **nur mit `mv` oder `cp`** anfasst, wird also nicht zurueckgehalten — dort
traegt weiterhin allein diese Rule den Schutz. Beim Ergaenzen weiterer Muster jedes einmal
relativ und einmal ueber `ssh` durchdenken (Chronik 260811).

## Verwandt

- `wege-und-vollmachten.md` — Vollmacht und die zwei nie umgangenen Schichten
- `sync-kanonische-quelle.md` — nie `git` schreibend ueber SMB; Reparaturen nativ per ssh
- `auto-verbesserungen.md` 260811 — nach jedem Schreiben `--numstat` messen, nichts aus HEAD
  wiederherstellen ohne fremde Arbeit auszuschliessen
- `rules/betrieb-chronik.md` — Ablageort der Einzeiler; Anlassfall 260812
