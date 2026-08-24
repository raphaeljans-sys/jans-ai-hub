# /vermaschung — Sind alle drei Stationen wirklich miteinander verbunden?

Der harte Test der Hub-Vermaschung: misst nicht Statusdateien, sondern die Wege selbst.
Hintergrund und Bauentscheide: `rules/betrieb-chronik.md`, Eintrag 260824f.

## Ablauf

1. Test fahren (rund 30-60 s):
   ```bash
   bash /Volumes/daten/jans-ai-hub/scripts/vermaschungs-test.sh
   ```
   Nur die Netzwege und die SSH-Matrix (rund 20 s): `--netz`.

2. Ergebnis dem Benutzer melden — **die Matrix aus E2 immer mitzeigen**, sie ist der Kern.
   Exit 0 = vollvermascht, 1 = Befund, 2 = nicht pruefbar (NAS nicht gemountet).

## Befunde richtig einordnen

- **E1/E2 Richtung fehlt, Ziel erreichbar** → Publickey der Quellstation fehlt in
  `~/.ssh/authorized_keys` der Zielstation. Der Bericht nennt die Richtung beim Namen.
  Schluessel nachtragen ist ein Eingriff der Klasse «SSH-Zugang» (Rule `interaktive-eingriffe`):
  vorher ankuendigen, umkehrbar ausfuehren, danach Einzeiler in die Chronik.
- **E1 Station gar nicht erreichbar** → Rule `auto-verbesserungen` 260824: Erreichbarkeit von
  aussen ist **P1**, nicht Hub-Internum. Zuerst Tailscale pruefen
  (`/Applications/Tailscale.app/Contents/MacOS/Tailscale status`, Behebung `... up`), dann
  `scripts/tailscale-waechter.sh`. Beim mobilen MacBook Pro ist Schlafen der Normalfall — das
  ist kein Mangel der Vermaschung, sondern der Grund fuer die asynchrone Task-Queue.
- **E3 NAS nicht gemountet** → dieser Station fehlen Skills, Rules und Wissen.
  Buero `open smb://192.168.1.10/daten`, extern ueber den Tailscale-Namen (`/nas`).
- **E4 andere Stationen sehen das Token nicht** → schwerwiegend: kein gemeinsamer
  Wissensstand. Der Mount besteht, zeigt aber woanders hin.
- **E5 zwei Stationen `ahead`** → Spaltungsgefahr, zwei Schreiber auf `main` (Vorfall 260824e).
  Verschiedene HEADs ohne `ahead` sind blosse Latenz und kein Befund.
- **E6 Symlink falsch** → `bash scripts/setup-nas-skills.sh` auf der betroffenen Station.
- **E7 Uhrendrift > 10 s** → datierte Eintraege dieser Station sind unzuverlaessig
  (Rule `auto-verbesserungen` 260730b).

## Abgrenzung

- `/status` und `heartbeat` pruefen **diese** Station. `/station-status` liest, was eine andere
  Station **ueber sich selbst** aufs NAS geschrieben hat — das bleibt gruen, waehrend sie von
  aussen unerreichbar ist (Vorfall 260824c). Dieser Test ist der einzige, der die Wege
  **zwischen** den Stationen faehrt.
- `node connectors/hub-setup.mjs --check` prueft nur die Wege **von dieser Station aus**;
  hier laufen alle Richtungen, auch die selten benutzten.
