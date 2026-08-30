# Spec: Umbau der Laufzeitschicht des JANS AI Hub

**Angelegt:** 30.08.2026 · **Auftrag:** Raphael, 29./30.08.2026 · **Ausfuehrende Station:** Mac Mini

---

## 1. Das wahre Ziel

Nicht «ein besserer Runner». Das Ziel ist:

> **Jeder headless-Lauf im Hub startet auf genau EINEM Weg, mit genau EINER Anmeldungsquelle,
> mit genau EINEM Binary — und hoert auf, wenn es nichts mehr zu tun gibt.**

Alles Weitere folgt daraus. Die heutigen Stoerungen sind keine Einzelfehler, sondern Symptome
davon, dass jeder Feuermechanismus (Scheduled Task, Nachtschicht, Dispatch, Sync-Task, Schub-Lane)
seine eigenen Annahmen ueber diese drei Dinge mitbringt.

## 2. Warum jetzt — die Befundlage, gemessen am 29./30.08.2026

| # | Befund | Beleg |
|---|---|---|
| B1 | Zwei Wrapper, zwei Auth-Annahmen: `claude-run.sh` liest `~/.jans-dispatch.env` **nicht**, das Geschwisterskript `dispatch-run.sh` schon | 23 Fehllaeufe am 29.08. 18:56–19:13, `logbuch/laeufe/260829-laeufe.jsonl` |
| B2 | Drei `claude`-Binaries ohne Aufloesungsregel: Homebrew 2.1.236 (gewedgt, `--version` kehrt nicht zurueck), npm 2.1.251 (Mini, gesund), app-gebuendelt 2.1.247 | `logbuch/vollgas/RADAR.md` 29.08. 12:57; die Homebrew-Wedge wird seit 15.08. als wiederkehrende Wetterlage dokumentiert statt behoben |
| B3 | Anmeldung an zwei Orten (Schluesselbund-Sitzung + env-Token) mit undokumentierter Vorrangordnung | Am 29.08. dreimal die falsche Ursache geschlossen, weil die Probe anders lief als der Laeufer |
| B4 | Ein aus einer laufenden Claude-Code-Session **abgeloester** Lauf scheitert mit «OAuth session expired»; derselbe Aufruf aus einer SSH-Shell laeuft mit rc=0. **Ursache offen** | 29.08. 20:22–20:29, MacBook Pro; Gegenprobe Mac Mini per ssh gleichzeitig rc=0 |
| B5 | Treiber ohne Ertragsmessung: ueber 600 technisch fehlerfreie, fachlich ertraglose Laeufe in einer Nacht | synobsis 344 Runden / 2 Dateien, normen 185, baurecht 96, grobkosten 52; Rule `auto-verbesserungen` 260830 |
| **B6** | **Kein kanonischer Arbeitsbaum fuer automatische Laeufe.** `dispatch-run.sh` Z. 33 pinnt `REPO="${DISPATCH_REPO:-$HOME/Developer/jans-ai-hub}"` — jede `prompt`-Pendenz arbeitet also im **SSD-Klon der Station**, waehrend Rule `sync-kanonische-quelle` Z. 7 und 26 ausdruecklich verlangen: geteilte Inhalte NUR auf dem NAS-Pfad, NIE im SSD-top-level. Der Hub verletzt seine eigene Grundregel systematisch, nicht versehentlich | Divergenz NAS ↔ GitHub seit 29.08. 22:04: 203 Commits voraus, 115 hinterher, gemeinsamer Vorfahre `01204714a`. Inhaltlich 317 Dateien / +25'813 / −7'173. In `wissen/architektur-fachwissen/wiki` traegt die NAS-Seite 94 Artikel, die GitHub-Seite 255, gemeinsam nur 72 — und darunter Beinah-Dubletten desselben Inhalts unter verschiedenen Slugs (z.B. `atmosphaerenmethode-hardware-software-erlebnis-phaenotyp.md` gegen `atmosphaeren-methode-ortsanalyse-hardware-software-erlebnis.md`) |

**Nicht befundet:** NAS und SSH. Beide haben waehrend der gesamten Stoerung ausnahmslos
funktioniert — jede SSH-Verbindung beim ersten Versuch, der NAS-Mount durchgehend lesbar.

## 3. Abgrenzung — was NICHT Teil dieses Umbaus ist

- **Keine Aenderung an NAS-Topologie, Tailscale, Stationen oder Netzwerk.** Siehe oben: dort lag
  kein Befund. Wer das mitumbaut, repariert das Falsche.
- **Keine Wiederbelebung des Endlos-Runners** (stehender Entscheid Raphael 30.07.2026).
- **Keine Aenderung an den Scheduled Tasks** und ihren Takten.
- **Kein Anfassen der `*.disabled-*`-plists.**

## 4. Zielbild

Ein einziger Einstiegspunkt, den **jeder** Feuermechanismus aufruft:

```
scripts/lauf.sh --name <loop> [--budget N] [--modell M] -- "<prompt>"
```

Er leistet, in dieser Reihenfolge:

1. **Binary aufloesen** aus einem Register je Station, mit Gesundheitsprobe (`--version` mit
   kurzem Watchdog) und Fallback auf den naechsten gesunden Kandidaten. Eine gewedgte Fassung
   wird erkannt und uebersprungen, nicht durchgereicht.
2. **Anmeldung laden** aus genau einer Quelle: `~/.jans-dispatch.env`. Der Schluesselbund ist
   fuer headless nie massgeblich.
3. **Session-Variablen abstreifen**, damit ein Lauf unabhaengig davon funktioniert, ob er aus
   einer Claude-Session, einer SSH-Shell, einem launchd-Job oder einem Cron kommt (Befund B4).
4. **Gate fragen** (`lauf-gate.sh`, unveraendert).
5. **Ausfuehren und journalisieren** wie bisher.
6. **Ertrag messen** (geaenderte Dateien / neuer Commit-Kopf) und im Rueckgabewert ausweisen,
   damit jeder Treiber eine Abbruchbedingung hat, ohne sie selbst zu erfinden.
7. **In genau EINEM Arbeitsbaum laufen** (Befund B6). Welcher das ist, entscheidet Raphael —
   entweder der NAS-Pfad, wie es Rule `sync-kanonische-quelle` heute verlangt, oder der SSD-Klon
   mit anschliessendem Push, was die Rule aendern wuerde. **Beides ist vertretbar, das Nebeneinander
   nicht.** `lauf.sh` setzt das Arbeitsverzeichnis selbst und laesst es nicht vom Aufrufer erben.

### Vorbedingung fuer Phase 0

**Die Divergenz aus B6 muss vor Phase 0 aufgeloest sein.** Solange zwei Arbeitsbaeume
nebeneinander beschrieben werden, erzeugt jeder weitere unbeaufsichtigte Lauf zusaetzlichen
Spalt. Die Aufloesung ist ein Eingriff in die Git-Historie und braucht Raphaels Freigabe;
sie gehoert nicht in einen unbeaufsichtigten Lauf.

Danach werden die bestehenden Aufrufer nacheinander darauf umgestellt; die alten Wrapper bleiben
als duenne Weiterleitungen bestehen, bis alle Aufrufer umgezogen sind.

## 5. Bewertungskriterien — vorab festgelegt

Der Umbau gilt als gelungen, wenn **alle vier** erfuellt sind:

- **V1 — Startweg-Matrix gruen.** Derselbe triviale Auftrag liefert `rc=0` aus (a) interaktiver
  Session, (b) SSH-Shell, (c) `nohup`-Abloesung, (d) launchd-Kontext — auf allen drei Stationen.
  Zwoelf Kombinationen, jede einzeln gemessen und protokolliert. **Das ist der Kern: genau diese
  Matrix haette B4 am 29.08. in Minuten gefunden statt in Stunden.**
- **V2 — Der Rauchtest geht denselben Weg wie ein echter Lauf.** Kein handgebauter Probe-Aufruf
  mehr. Jede Aussage «die Station ist arbeitsfaehig» stammt ab jetzt aus `lauf.sh` selbst.
- **V3 — Ein Treiber mit erschoepfter Queue endet in hoechstens drei Runden**, gemessen an einer
  Lane, deren Queue nachweislich leer ist.
- **V4 — Eine absichtlich gewedgte Binary wird erkannt und umgangen**, der Lauf gelingt trotzdem.

## 6. Phasen und Checkpoints

| Phase | Inhalt | Unbeaufsichtigt? |
|---|---|---|
| **0 — Befund** | Ist-Aufnahme: alle Aufrufer von `claude -p` im Repo finden, je Aufrufer notieren, woher er Binary und Anmeldung nimmt. Ergebnis als Tabelle in `BEFUND.md`. B4 gezielt einkreisen (welche Variable genau bricht den abgeloesten Lauf). | **ja** |
| **1 — Bauen daneben** | `scripts/lauf.sh` NEU anlegen. Bestehende Skripte werden NICHT veraendert. | **ja** |
| **2 — Verifikation** | V1 bis V4 durchmessen, Ergebnis als `VERIFIKATION.md` mit der vollstaendigen Zwoelfer-Matrix. | **ja** |
| **3 — Umschalten** | Aufrufer auf `lauf.sh` umstellen, alte Wrapper zu Weiterleitungen machen. | **NEIN — nur nach Raphaels ausdruecklicher Freigabe** |

## 7. Was die Station unbeaufsichtigt tun darf, und was nicht

**Erlaubt** (Phasen 0 bis 2): lesen, messen, neue Dateien anlegen, Tests fahren, Berichte
schreiben, per `nas-commit-now.sh` sichern.

**Verboten ohne Einzelfreigabe:** ein bestehendes produktives Skript aendern
(`claude-run.sh`, `dispatch-run.sh`, `nachtschicht-run.sh`, `sync-task-run.sh`, `lauf-gate.sh`),
einen launchd-Job laden oder entladen, eine `~/.jans-dispatch.env` schreiben, ein Binary
installieren oder einen Symlink umhaengen, irgendetwas an den Scheduled Tasks aendern.

**Der Grund fuer diese Trennung:** Phase 3 aendert die Schicht, auf der jeder andere Lauf des Hub
steht — inklusive des Laufs, der die Aenderung vornimmt. Ein halbfertiger Stand darin legt die
Station still, auf der niemand sitzt. Deshalb ist Phase 3 ein bewusster, wacher Schritt.

## 8. Rueckfallweg

Alles aus den Phasen 0 bis 2 ist rein additiv: neue Dateien neben den alten. Bricht etwas ab,
loescht man die neuen Dateien und nichts hat sich geaendert. Erst Phase 3 fasst Bestehendes an,
und dort gilt: jede geaenderte Datei vorher als `<name>.vor-umbau-260830` sichern.

## 9. Offene Fragen an Raphael

- **F1:** Soll der NAS mittelfristig git-Remote ueber SSH werden, statt als SMB-Arbeitsverzeichnis
  zu dienen? Das wuerde die Regel «nie git ueber SMB», den nativen Committer und den
  Keepalive-Waechter ueberfluessig machen — drei Umgehungen fuer ein Problem. **Nicht Teil dieses
  Umbaus**, aber die naheliegende zweite Etappe.
- **F2:** Soll `lauf.sh` auch die Scheduled Tasks bedienen, oder bleiben die bewusst auf ihrem
  eigenen Weg (App-Auth), weil sie damit den einzigen unabhaengigen Kanal bilden, wenn die
  headless-Anmeldung ausfaellt? Am 29.08. war genau diese Unabhaengigkeit der Grund, warum der
  Hub nicht vollstaendig stillstand.
