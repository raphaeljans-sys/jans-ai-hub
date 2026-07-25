# NAS-Mount haerten (mobile Station) — Referenz

Stand 25.07.2026. Behebt die chronischen SMB-Stalls des Mounts `/Volumes/daten` auf
der mobilen Station (MacBook Pro), die headless-Laeufe (Lern-Loops, Hub-Chef) mitten im
Lauf abbrechen liessen.

## Befund

Der SMB-Mount haengt alle 15-20 Min (Beleg: `.git/nas-auto-mount.log`, 25.07.: «Mount
haengt» um 07:24/07:40/07:57/08:13/08:33/08:53/09:16 …). Der **Netzpfad ist gesund**:
Tailscale zum NAS 9 ms, 0 % Verlust (direkte WireGuard-Verbindung, kein Relay). Ursache
ist also nicht das Netz, sondern der **SMB-Client von macOS**: die SMB-Sitzung wird im
Leerlauf abgebaut (idle-disconnect) bzw. laeuft ueber den VPN-Tunnel stale. Der bestehende
Waechter (`nas-auto-mount.sh`, 3-Min-Takt) heilte das zwar, verhinderte es aber nicht — und
jede Heilung oeffnete das Fenster, in dem ein headless-Task abbrach.

## Loesung — drei Schichten

### Schicht 1 — Verhindern
- `~/Library/Preferences/nsmb.conf` (user-level, **kein sudo**): `notify_off=yes` (schaltet
  FSEvents-ueber-SMB ab, Haupt-Stall-Ursache), `mc_on=no` (kein Multichannel ueber den
  einzelnen Tunnel), `signing_required=no` (weniger Overhead auf dem verschluesselten
  Tailscale-Tunnel). Wirkt erst fuer NEU aufgebaute Mounts (nach Remount).
- `scripts/nas-keepalive.sh` + LaunchAgent `com.jans.nas-keepalive` (StartInterval **60 s**):
  haelt die Sitzung durch einen `stat` auf die Sentinel-Datei `jans-ai-hub/.nas-sentinel`
  warm; bei erkanntem Stall stoesst er sofort `nas-auto-mount.sh` an (max. 60 s
  Erkennungslatenz statt 180 s).

### Schicht 2 — Schneller heilen
- `scripts/nas-auto-mount.sh` unveraendert im Kern (LAN vor Tailscale, osascript+Keychain),
  aber neu mit **gemeinsamer mkdir-Lock** `/tmp/jans-nas-automount.lock` (Stale-Schutz > 2
  Min): Intervall-Lauf, Netzwerkwechsel und Keepalive koennen nicht gleichzeitig remounten.

### Schicht 3 — Ueberleben
- `scripts/ensure-nas-mounted.sh [max_wait_secs]` — synchroner, blockierender Guard fuer
  headless-Tasks. Prueft echten SMB-Round-Trip (Sentinel), heilt inline, pollt bis MAX_WAIT.
  **rc 0** = NAS bereit; **rc 1** = nach Timeout nicht bereit → Task soll SAUBER abbrechen.
  Aufruf am Task-Anfang:
  ```bash
  if ! bash "$HOME/Developer/jans-ai-hub/scripts/ensure-nas-mounted.sh" 90; then
      echo "NAS nicht verfuegbar — Lauf sauber abgebrochen"; exit 0
  fi
  ```
- Bereits verdrahtet in `scripts/vollgas-runner.sh` (vor jedem Trainingslauf). Fuer
  Scheduled-Task-Prompts, die aufs NAS schreiben, denselben Aufruf voranstellen.

## Betrieb / Diagnose

- Keepalive-Log: `~/Developer/jans-ai-hub/.git/nas-keepalive.log` (nur STALL-Ereignisse).
- Waechter-Log: `~/Developer/jans-ai-hub/.git/nas-auto-mount.log`.
- Guard-Log: `~/Developer/jans-ai-hub/.git/nas-ensure.log`.
- Erfolgskennzahl: Haeufigkeit von «Mount haengt» im Waechter-Log muss deutlich sinken.
- LaunchAgents (mobile Station): `com.jans.nas-auto-mount` (180 s) + `com.jans.nas-keepalive`
  (60 s). Laden: `launchctl load -w ~/Library/LaunchAgents/com.jans.nas-keepalive.plist`.

## Reversibel

- `~/Library/Preferences/nsmb.conf` loeschen → macOS-SMB-Defaults.
- `launchctl unload -w ~/Library/LaunchAgents/com.jans.nas-keepalive.plist` → kein Keepalive.

## Nur mobile Station

Der Mac Mini haengt im Buero-LAN direkt am NAS (stabil) und braucht diese Haertung nicht.
Weitergehende Option (nicht umgesetzt, Entscheid Raphael 25.07.2026: vorerst nein):
NAS-abhaengige Loops ganz auf den Mac Mini verlagern (Rule 260611).

## Schwesterproblem geloest: kein `git` mehr ueber SMB (26.07.2026)

Dieselbe SMB-Instabilitaet traf auch `git`: `commit`/`push`/`pull` direkt gegen das
NAS-`.git` ueber den Mount hingen uninterruptibel und blockierten die `index.lock` fuer alle
(Loops UND interaktives Claude). Loesung: NIEMAND committet mehr git-ueber-SMB. Der einzige
NAS-Committer ist der **native** `nas-selfcommit.sh` (Synology, ext4, kein SMB, 15-Min-Cron).
Auf Zuruf sofort ausloesbar via **`scripts/nas-commit-now.sh "<Message>"`** (ssh → nativer
Commit+Push mit sprechender Message, danach SSD-Klon-Pull). `nas-selfcommit.sh` nimmt jetzt
eine optionale Commit-Message (Arg 1) entgegen. Der `vollgas-runner`-Loop-Prompt ruft neu
`nas-commit-now` statt selbst zu committen. Kodifiziert in den Rules `sync-kanonische-quelle`
und `git-auto-push` (26.07.2026); die alte pathspec-Mitigation (Rule 260724) ist ueberholt.

Offen/Folgeschritt: die einzelnen Scheduled-Task-`SKILL.md` (`~/.claude/scheduled-tasks/*/`)
enthalten teils noch die alte Anweisung «NAS-Repo committen und pushen» — bei Gelegenheit auf
`nas-commit-now` migrieren (die Rules gehen im Konflikt vor).
