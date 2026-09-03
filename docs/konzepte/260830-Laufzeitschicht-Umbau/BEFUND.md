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

## 6. Phase 1 (Bauen daneben) — Nachtrag 03.09.2026, gleicher Nachtschicht-Lauf

`scripts/lauf.sh` wurde additiv angelegt (NEUE Datei, kein bestehendes Skript veraendert).
Deckt die sieben Punkte aus Spec Abschnitt 4 ab:

1. **Binary-Register + Gesundheitsprobe**: Kandidatenliste (`LAUF_CLAUDE_BIN` override,
   `~/.claude/local/claude`, Homebrew, `/usr/local/bin`, PATH-Aufloesung), je Kandidat ein
   5-Sekunden-Watchdog (macOS kennt kein `timeout`, Ersatz per Hintergrund-`kill`). Ein
   gewedgter Kandidat wird uebersprungen, nicht durchgereicht.
2. **Auth aus genau einer Quelle**: `lauf.sh` liest `~/.jans-dispatch.env` IMMER selbst
   (schliesst B1 strukturell, siehe Abschnitt 5).
3. **Session-Variablen abgestreift**: `unset` auf die vier in Abschnitt 4 identifizierten
   `CLAUDE_CODE_*`-Variablen vor dem eigentlichen Aufruf (B4-Kandidatenloesung).
4. **Gate**: ruft `lauf-gate.sh "$NAME"` unveraendert auf; bei Zurueckstellung Exit 0 (Konvention).
5. **Ausfuehren + journalisieren**: delegiert an `claude-run.sh` (unveraendert, keine
   Duplikation der JSON-Auswertung).
6. **Ertrag messen**: NUR ausserhalb des NAS-SMB-Mounts (`REPO != /Volumes/daten/jans-ai-hub`),
   weil Rule `sync-kanonische-quelle.md` JEDEN `git`-Befehl gegen das NAS-Repo ueber SMB
   verbietet — auch lesende, sie haengen ebenso uninterruptibel (Rule-Text, Z. "auch lesende
   haengen ueber SMB ebenfalls"). Laeuft `lauf.sh` im NAS-Pfad, wird `ertrag_messbar:"nein"`
   ausgewiesen statt eine Zahl zu erraten. Eigene Journalzeile in
   `logbuch/laeufe/JJMMTT-lauf-ertrag.jsonl` (neue Datei, ergaenzt die bestehende
   `JJMMTT-laeufe.jsonl` von `claude-run.sh`, ersetzt sie nicht).
7. **Arbeitsbaum selbst gesetzt**: Default NAS-Pfad (aktuell gueltige Rule
   `sync-kanonische-quelle.md`), Fallback SSD-Klon nur wenn der NAS-Pfad fehlt, Override via
   `--repo`/`LAUF_REPO`. **Bewusst keine abschliessende Entscheidung** — F1 aus der Spec bleibt
   offen bei Raphael; der Default respektiert nur die heute geltende Regel.

### Getestet in diesem Lauf (Sandbox, kein produktiver Eingriff)

Alle Tests liefen gegen ein isoliertes `/tmp`-Scratch-Repo mit Stub-Binary (kein Netzwerk,
keine Kosten) — bis auf einen Fall, siehe unten:

- **Normallauf** (Stub-Binary, `--repo` = Sandbox mit `.git`): rc=0, Journalzeile korrekt
  (`claude-run.sh`-Format), `ertrag_messbar=ja`, `ertrag_dateien_geaendert=2`,
  `ertrag_neuer_commit=nein` — Ertragsmessung ausserhalb des NAS-Mounts funktioniert.
- **V4 (gewedgtes Binary wird erkannt und umgangen)**: ein absichtlich haengendes
  Stub-Binary als `LAUF_CLAUDE_BIN` wurde nach 5 s uebersprungen, die Meldung
  "Binary uebersprungen (gewedgt/keine Antwort in 5s)" erschien korrekt auf stderr.
  **Unbeabsichtigter Nebeneffekt:** der naechste Kandidat in der Reihenfolge war NICHT der
  vorgesehene Sandbox-Stub, sondern (weil `$HOME` nicht isoliert war) das echte
  `/opt/homebrew/bin/claude` auf dem Mac Mini — der Lauf ging damit tatsaechlich durch,
  echt und kostenpflichtig (0.0537 USD, `session_id 83a04886-…`, Journalzeile inzwischen
  wieder entfernt). **Das ist gleichzeitig ein reales, ungeplantes V4-Datum**: dieselbe
  Homebrew-Fassung, die B2 am 29.08. als gewedgt beschreibt, war am 03.09.2026 23:42
  gesund und lieferte in 4.7 s eine korrekte Antwort — der Gesundheitsprobe-Mechanismus
  hat sie korrekt erkannt und regulaer verwendet (nicht die gewedgte Stub-Vorstufe). Fuer
  Phase 2 heisst das: Testkandidaten muessen `HOME`/`PATH` vollstaendig isolieren, sonst
  greift der Fallback auf ein echtes, kostenpflichtiges Binary durch.
- **Arbeitsbaum = NAS-Pfad** (isoliertes `HOME`, Stub-Binary via `PATH`, kein `--repo`):
  rc=0, `ertrag_messbar="nein"`, `ertrag_dateien_geaendert="unbestimmt"` — bestaetigt, dass
  `lauf.sh` im NAS-Default-Pfad keinen `git`-Befehl gegen die SMB-Freigabe absetzt.
- Alle Test-Journalzeilen wurden nach der Pruefung wieder aus den echten
  `logbuch/laeufe/260903-*.jsonl`-Dateien entfernt (per Datei-Edit, kein `git`, die Dateien
  sind ohnehin nicht git-verfolgt) — bis auf die realen Kostendaten des V4-Nebeneffekts, die
  in diesem Abschnitt dokumentiert sind.

### Nicht getestet in diesem Lauf (Phase 2, Budget-Disziplin)

- Die vollstaendige Zwoelfer-Matrix V1 (drei Stationen × vier Startwege) — braucht
  Messungen auf dem MacBook Pro und der dritten Station.
- Der reale B4-Fall (aus einer laufenden Session per `nohup` abgeloester Lauf) — die
  Session-Variablen-Stripping-Logik ist gebaut (Punkt 3 oben), aber nicht gegen den
  tatsaechlichen "OAuth session expired"-Fehler verifiziert.
- V2 (Rauchtest = `lauf.sh` selbst) und V3 (Treiber mit leerer Queue endet in ≤3 Runden)
  wurden nicht gemessen — dafuer muesste ein echter Treiber auf `lauf.sh` umgestellt sein,
  was Phase 3 ist.

Diese drei Punkte sind der Einstieg fuer den naechsten Phase-2-Lauf.
