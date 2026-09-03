# Befund Phase 0 — Ist-Aufnahme der Aufrufer von `claude -p`

**Ausgefuehrt:** 03.09.2026, Mac-Mini-Nachtschicht (Prioritaet 1, Sync-Task
`sync-tasks/mac-mini/20260830-083324_Laufzeitschicht-Umbau-Phasen-0-2.md`, Wiederaufnahme
nach Aufloesung der B6-Divergenz durch Raphael am 02.09.2026 16:2x, Merge-Commit `a6fb7e3bd`).

**Umfang dieses Laufs:** ausschliesslich Phase 0 (Befund). Phase 1 (`lauf.sh` bauen) und
Phase 2 (Zwoelfer-Matrix ueber drei Stationen) sind fuer diesen Nachtschicht-Zyklus zu gross
(Budget-Disziplin, Regel im Nachtschicht-Prompt) — Phase 2 braucht ausserdem Messungen auf dem
MacBook Pro und der dritten Station, die von hier aus nicht zuverlaessig im 5-USD-Rahmen
gehen. Vermerk statt Anfang: dieselbe Regel, die einen zu grossen Griff verbietet, verlangt den
Vermerk in der QUESTIONS/Spec statt eines Abbruchs mittendrin.

## 1. Aufrufer-Matrix

| Script | Ruft auf | Binary-Aufloesung | Auth-Quelle | Arbeitsverzeichnis |
|---|---|---|---|---|
| `dispatch-run.sh` | `claude` direkt (via `$CLAUDE_BIN`, Zeile 100–108: `command -v`, sonst PATH-Kandidatenliste) | PATH-Suche + Fallback-Kandidaten | **liest `~/.jans-dispatch.env`** (`set -a; . datei; set +a`, Z. 53–54) | `REPO="${DISPATCH_REPO:-$HOME/Developer/jans-ai-hub}"`, dann `cd "$REPO"` (Z. 118) → **SSD-Klon** |
| `claude-run.sh` | `"$CLAUDE_BIN" "${ARGS[@]}"` direkt | `${CLAUDE_BIN:-claude}`, PATH-Aufloesung wenn kein Pfad | **liest die Env-Datei NICHT selbst** — verlaesst sich auf bereits gesetzte Variablen des Aufrufers (z.B. per `export CLAUDE_BIN=… bash claude-run.sh`) | **kein eigenes `cd`** — laeuft im ererbten Arbeitsverzeichnis des Aufrufers; `HUB`-Variable (NAS zuerst, SSD-Fallback) wird nur fuer den Journal-Pfad genutzt, nicht als Arbeitsverzeichnis |
| `vollgas-runner.sh` | ruft `claude-run.sh` als `$RUNNER_WRAPPER` mit `CLAUDE_BIN="$CLAUDE_BIN" bash …` | eigene PATH-Kandidatenliste, an `claude-run.sh` durchgereicht | 3 Treffer auf `jans-dispatch.env` — liest die Datei selbst vor dem Aufruf | `REPO="${VOLLGAS_REPO:-$HOME/Developer/jans-ai-hub}"`, `cd "$REPO"` → **SSD-Klon** |
| `vollgas-schub.sh` | ruft `claude-run.sh` (Z. 94) | `export CLAUDE_BIN="${VOLLGAS_BIN:-claude}"` | liest die Env-Datei selbst (Kommentar Z. 46–47 bestaetigt es ausdruecklich: *"claude-run.sh liest die Datei NICHT selbst … es muss hier geschehen"*) | `HUB="/Volumes/daten/jans-ai-hub"`, Fallback SSD-Klon → **NAS bevorzugt** |
| `wissens-trigger.sh` | ruft `claude-run.sh` als `$WRAP` | eigene PATH-Kandidatenliste | liest die Env-Datei selbst | `REPO="/Volumes/daten/jans-ai-hub"` fest verdrahtet, `cd "$WORKDIR"` → **NAS, kein Fallback** |
| `sync-task-run.sh` | ruft `dispatch-run.sh` fuer `typ: prompt`-Pendenzen | erbt die Aufloesung von `dispatch-run.sh` | erbt von `dispatch-run.sh` | `DISPATCH="$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh"` fest verdrahtet → **SSD-Klon**, danach erbt es dessen `cd` |
| `nachtschicht-run.sh` (dieser Lauf) | ruft `dispatch-run.sh` (Mini-Pfad) bzw. via `ssh macbook … dispatch-run.sh` (Aushilfe-Pfad) | erbt von `dispatch-run.sh` | eigener `git pull` im SSD-Klon vor dem Aufruf, Auth erbt `dispatch-run.sh` | `cd "$HOME/Developer/jans-ai-hub"` fuer den `git pull` → **SSD-Klon**; Aushilfe-Pfad sourct `~/.jans-dispatch.env` explizit auf der Zielstation |

## 2. Bestaetigung B6 (kein kanonischer Arbeitsbaum) — praeziser als in der Spec

Drei verschiedene Default-Arbeitsbaeume, nicht zwei:

- **SSD-Klon** (`$HOME/Developer/jans-ai-hub`): `dispatch-run.sh`, `vollgas-runner.sh`,
  `sync-task-run.sh`, `nachtschicht-run.sh` (fuer den `git pull`).
- **NAS bevorzugt, SSD-Fallback**: `claude-run.sh` (nur fuer den Journal-Pfad, nicht fuer
  die Ausfuehrung selbst — `claude-run.sh` fuehrt gar kein eigenes `cd` aus und erbt daher
  das Arbeitsverzeichnis seines Aufrufers), `vollgas-schub.sh`.
- **NAS fest verdrahtet, kein Fallback**: `wissens-trigger.sh` — bricht mit Exit 3 ab, wenn
  der NAS-Mount fehlt, statt auf den SSD-Klon auszuweichen.

Die Spec (Abschnitt 2, B6) beschreibt das Bild richtig auf der Ebene "SSD-Klon vs. NAS-Pfad";
diese Aufnahme zeigt zusaetzlich, dass **`claude-run.sh` selbst gar keine Wahl trifft** — es
erbt, was auch immer der Aufrufer gerade als CWD hat. Das ist fuer `scripts/lauf.sh` (Phase 1)
relevant: Punkt 4.7 der Spec ("`lauf.sh` setzt das Arbeitsverzeichnis selbst und laesst es
nicht vom Aufrufer erben") schliesst genau diese Luecke.

## 3. Bestaetigung B1 (zwei Auth-Annahmen) — vollstaendige Liste

**Liest `~/.jans-dispatch.env` selbst:** `dispatch-run.sh`, `vollgas-runner.sh`,
`vollgas-schub.sh`, `wissens-trigger.sh`.

**Liest sie NICHT:** `claude-run.sh` — bestaetigt durch den eigenen Kommentar in
`vollgas-schub.sh` Zeile 46–47, der das Verhalten schon kennt und deshalb selbst vorsorgt.
`claude-run.sh` funktioniert also nur korrekt, wenn der Aufrufer die Auth-Variablen bereits
in die Umgebung exportiert hat, bevor er es startet — was alle fuenf bekannten Aufrufer
tun, aber nirgends erzwungen ist. Ein sechster, kuenftiger Aufrufer, der `claude-run.sh`
direkt ohne vorheriges Env-Sourcing startet, faellt in dieselbe Falle wie B1 am 29.08.

## 4. B4 eingekreist — konkrete Hypothese mit Beleg aus der eigenen Session

**Befund:** Diese Nachtschicht-Session (eine aus `dispatch-run.sh` gestartete, headless
laufende Claude-Code-Instanz) traegt in ihrer eigenen Prozessumgebung folgende
Claude-Code-spezifische Variablen:

```
CLAUDE_CODE_PRINT_BG_WAIT_CEILING_MS
CLAUDE_CODE_ENTRYPOINT
CLAUDE_CODE_MESSAGING_SOCKET
CLAUDE_CODE_MESSAGING_TOKEN
CLAUDE_CODE_EXECPATH
CLAUDE_CODE_SESSION_ID
CLAUDE_CODE_CHILD_SESSION
```

Keines dieser Felder wird von `dispatch-run.sh`, `claude-run.sh` oder einem der anderen
Wrapper explizit gesetzt oder entfernt — sie werden von der Claude-Code-CLI selbst beim
Start in den Prozess injiziert und vererben sich an jeden Kindprozess (`bash`, `ssh`, ein
per `nohup` abgeloester Folgeaufruf).

**Hypothese (Ursache von B4):** Startet eine bereits laufende Claude-Code-Session (egal ob
interaktiv oder wie hier headless) einen WEITEREN `claude -p`-Aufruf als Kindprozess, erbt
dieser Kindprozess `CLAUDE_CODE_SESSION_ID` und insbesondere `CLAUDE_CODE_MESSAGING_SOCKET`/
`CLAUDE_CODE_MESSAGING_TOKEN` der Elternsession. Die CLI erkennt sich dadurch vermutlich als
"child session" (`CLAUDE_CODE_CHILD_SESSION` ist exakt dafuer benannt) und verhandelt ihre
Authentifizierung ganz oder teilweise ueber den ererbten Messaging-Kanal der Elternsession,
statt den eigenstaendigen OAuth-/Env-Weg zu gehen. Wird dieser Kindprozess per `nohup`
**abgeloest** (der Elternprozess/die Elternsession endet, wie es die Spec unter B4
beschreibt), verschwindet der Messaging-Kanal — der Socket der Elternsession existiert nicht
mehr. Der abgeloeste Kindprozess versucht weiterhin, ueber diesen toten Kanal zu
authentifizieren, und scheitert mit **"OAuth session expired"**.

**Warum die SSH-Shell nicht betroffen ist:** Eine frisch geoeffnete SSH-Verbindung traegt
KEINE `CLAUDE_CODE_*`-Variablen in ihrer Umgebung (sie stammt nicht aus einem laufenden
Claude-Code-Prozess). Ein von dort gestarteter `claude -p`-Aufruf hat also nie einen
ererbten Messaging-Kanal, geht von Anfang an den eigenstaendigen Auth-Weg (Env-Datei /
Keychain) und ist von einer Abloesung strukturell nicht betroffen — exakt das beobachtete
Bild: SSH-Shell rc=0, aus laufender Session abgeloest → Fehler.

**Was das fuer Phase 1 heisst:** Punkt 4.3 der Spec ("Session-Variablen abstreifen") ist mit
dieser Hypothese konkret gefasst — `lauf.sh` sollte vor dem eigentlichen `claude`-Aufruf
gezielt `unset` auf `CLAUDE_CODE_SESSION_ID`, `CLAUDE_CODE_CHILD_SESSION`,
`CLAUDE_CODE_MESSAGING_SOCKET`, `CLAUDE_CODE_MESSAGING_TOKEN` anwenden (nicht auf
`CLAUDE_CODE_EXECPATH`/`CLAUDE_CODE_ENTRYPOINT` — die betreffen nur die Binary-Aufloesung,
nicht die Auth).

**Nicht verifiziert in diesem Lauf:** Ob das Entfernen dieser Variablen den B4-Fehler
tatsaechlich behebt, ist eine Hypothese, keine gemessene Tatsache — die Verifikation braucht
einen realen Abloesungs-Test (Phase 2, V1) mit und ohne `unset`, auf mindestens einer Station.
Das ist fuer Phase 2 vorgemerkt, nicht Teil dieses Befunds.

## 5. Offene Anschlusspunkte fuer Phase 1

- `lauf.sh` muss das Arbeitsverzeichnis **selbst** setzen (nicht erben wie `claude-run.sh`
  es heute tut) — Entscheid NAS-Pfad vs. SSD-Klon bleibt laut Spec F1/Abschnitt 4.7 bei
  Raphael offen.
- `lauf.sh` sollte die Env-Datei **immer selbst** lesen (nicht wie `claude-run.sh` auf den
  Aufrufer vertrauen) — schliesst B1 strukturell statt durch Konvention.
- `lauf.sh` sollte die vier oben genannten `CLAUDE_CODE_*`-Session-Variablen vor dem
  eigentlichen Aufruf `unset`en — Kandidatenloesung fuer B4, in Phase 2 zu verifizieren.
- Die Binary-Aufloesung (B2) ist in mindestens drei Scripts unabhaengig dupliziert
  (`dispatch-run.sh`, `vollgas-runner.sh`, `wissens-trigger.sh`) — `lauf.sh` sollte das
  Register EINMAL fuehren.
