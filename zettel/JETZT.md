# JANS Zettel — offene Handgriffe

Stand 24.08.2026, 18:20 · **Aufgabe erledigt**

Dieser Ordner liegt auf dem NAS und ist damit auf **jeder** Station unter demselben Pfad
sichtbar: `/Volumes/daten/jans-ai-hub/zettel/`. Datei am anderen Gerät öffnen mit

    open /Volumes/daten/jans-ai-hub/zettel/JETZT.md

---

## Erledigt — Vollvermaschung Mac Mini ↔ MacBook Pro ↔ station-03

Alle sechs Richtungen am 24.08.2026 real durchgetestet (nicht nur Dateien gelesen, sondern
je eine SSH-Verbindung gefahren), alle passwortlos:

| von | nach | Ergebnis |
|---|---|---|
| Mac Mini | MacBook Pro | Macbookpro |
| Mac Mini | station-03 | MacBook Pro von Revendo |
| MacBook Pro | Mac Mini | Macmini |
| MacBook Pro | station-03 | MacBook Pro von Revendo |
| station-03 | Mac Mini | Macmini |
| station-03 | MacBook Pro | Macbookpro |

Ebenfalls gemessen: Remote Login auf allen drei Macs an, Bildschirmfreigabe registriert
(Port 5900 offen), Tailscale auf allen drei Macs plus NAS verbunden, Mini ist Subnet-Router
für 192.168.1.0/24, NAS auf Mini und MacBook Pro gemountet.

### Der Befund, der nicht im ursprünglichen Zettel stand

Der Zettel deckte nur die Richtung **station-03 zu den beiden anderen** ab. Die Gegenrichtung
**Mini zu station-03** war nie eingerichtet und schlug beim Nachmessen fehl: station-03 trug
die Schlüssel `mail@raphaeljans.ch` und `raphaeljans@me.com`, der Mac Mini meldet sich aber
mit einem eigenen Schlüssel `macmini-ai-hub`. Das MacBook Pro kam durch, weil es
`raphaeljans@me.com` benutzt. Geschlossen durch Nachtragen des Mini-Schlüssels auf station-03.

Lehre: eine Vermaschung wird als Matrix gemessen, nicht als Liste von Handgriffen.
Vollständig in `rules/betrieb-chronik.md`, Eintrag 260824d.

---

## Adressen (Tailscale, Stand 24.08.2026)

| Station | Tailscale-IP | Benutzer |
|---|---|---|
| Mac Mini | 100.120.219.12 | raphaeljans |
| MacBook Pro | 100.117.99.62 | raphaeljans |
| station-03 (MacBook Pro von Revendo) | 100.96.212.110 | revendo |
| NAS diskstation918 | 100.92.246.28 | raphaeljans |

## Public Keys aller Stationen

Ablage: `/Volumes/daten/jans-ai-hub/sync-tasks/pubkeys/`

| Station | Schlüssel-Kommentar |
|---|---|
| station-03 (MacBook Pro von Revendo) | `mail@raphaeljans.ch` |
| Mac Mini | `macmini-ai-hub` |
| MacBook Pro | `raphaeljans@me.com` |

## Rest, klein und nicht blockierend

In `~/.ssh/config` des MacBook Pro fehlt ein Alias für station-03 (dort nur `github.com`
und `mini`). Die nackte Adresse funktioniert. Nachzutragen wäre:

```
Host station-03
    HostName 100.96.212.110
    User revendo
```

---

## Zustandsmeldung von jedem Gerät (reine Messung, ändert nichts)

```
echo "Station: $(scutil --get ComputerName)"; echo "Remote Login: $(sudo systemsetup -getremotelogin)"; launchctl print system/com.apple.screensharing 2>/dev/null | grep -m1 state || echo "Bildschirmfreigabe: aus"; /Applications/Tailscale.app/Contents/MacOS/Tailscale status >/dev/null 2>&1 && echo "Tailscale: verbunden" || echo "Tailscale: NICHT verbunden"; ls /Volumes/daten/jans-ai-hub >/dev/null 2>&1 && echo "NAS: gemountet" || echo "NAS: FEHLT"
```
