# JANS Zettel — offene Handgriffe

Stand 24.08.2026, 17:40 · gelegt von Claude auf **station-03** (MacBook Pro von Revendo)
Aufgabe: Vollvermaschung Mac Mini ↔ MacBook Pro ↔ station-03 (SSH, Bildschirmfreigabe, Tailscale)

Dieser Ordner liegt auf dem NAS und ist damit auf **jeder** Station unter demselben Pfad
sichtbar: `/Volumes/daten/jans-ai-hub/zettel/`. Datei am anderen Gerät öffnen mit

    open /Volumes/daten/jans-ai-hub/zettel/JETZT.md

---

## Handgriff 1 — am Mac Mini UND am MacBook Pro (identisch, je einmal)

Trägt den Schlüssel von station-03 ein, damit SSH von dort funktioniert.
Doppelte Zeilen werden entfernt, mehrfaches Ausführen schadet nicht.

```
mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGGb1iYRisn0Zk3D0pvYOhs3QkzVhrb9D6JEryzu0ecC mail@raphaeljans.ch' >> ~/.ssh/authorized_keys && sort -u ~/.ssh/authorized_keys -o ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && echo FERTIG
```

## Handgriff 2 — auf station-03 (MacBook Pro von Revendo)

Schaltet Remote Login und Bildschirmfreigabe ein, damit Mini und MacBook Pro
auch dorthin kommen. Fragt nach dem Passwort dieser Station.
Rückgängig: derselbe Befehl mit `off` statt `on` und `disable` statt `enable`.

```
sudo systemsetup -setremotelogin on && sudo launchctl enable system/com.apple.screensharing && sudo launchctl bootstrap system /System/Library/LaunchDaemons/com.apple.screensharing.plist
```

## Handgriff 3 — Zustandsmeldung von jedem Gerät

Reine Messung, ändert nichts. Ergebnis Raphael zurückmelden.

```
echo "Station: $(scutil --get ComputerName)"; echo "Remote Login: $(sudo systemsetup -getremotelogin)"; launchctl print system/com.apple.screensharing 2>/dev/null | grep -m1 state || echo "Bildschirmfreigabe: aus"; /Applications/Tailscale.app/Contents/MacOS/Tailscale status >/dev/null 2>&1 && echo "Tailscale: verbunden" || echo "Tailscale: NICHT verbunden"; ls /Volumes/daten/jans-ai-hub >/dev/null 2>&1 && echo "NAS: gemountet" || echo "NAS: FEHLT"
```

---

## Public Keys aller Stationen

Ablage: `/Volumes/daten/jans-ai-hub/sync-tasks/pubkeys/`

| Station | Schlüssel-Kommentar |
|---|---|
| station-03 (MacBook Pro von Revendo, Benutzer `revendo`) | `mail@raphaeljans.ch` |
| Mac Mini / MacBook Pro (Benutzer `raphaeljans`) | `raphaeljans@me.com` |

## Erledigt (24.08.2026, auf station-03)

- SSH-Aliase `mini`, `macbook`, `nas` in `~/.ssh/config` angelegt, Backup unter `config.backup-260824`
- Public Key von station-03 auf dem NAS abgelegt
- Gemessen: Tailscale auf allen drei Macs plus NAS verbunden; Mini ist Subnet-Router
  für 192.168.1.0/24; Port 22 und 5900 auf Mini und MacBook Pro offen;
  Latenz zu Mini 4–15 ms, zu MacBook Pro 4–8 ms (direkt, kein Relay)
