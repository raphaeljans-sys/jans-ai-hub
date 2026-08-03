#!/bin/bash
# ============================================================================
# +++ AUSGEBAUT AM 29.07.2026 (Entscheid Raphael) — NICHT MEHR STARTEN +++
# ============================================================================
# Dieses Script ist Dokumentation, kein Betriebsmittel. Der VOLLGAS-Endlos-Runner
# wurde auf BEIDEN Stationen stillgelegt: ch.jans.vollgas-supervisor (beide) und
# ch.jans.vollgas-monitor (MacBook) sind per launchctl bootout entladen, die plists
# nach *.disabled-260729 umbenannt. Es existiert kein Waechter mehr, der den Runner
# hochziehen koennte; die STOP-Dateien in logbuch/vollgas/ sind gegenstandslos.
#
# GRUND: Der Runner war ein zweiter, UNGETAKTETER Feuermechanismus neben den
# Scheduled Tasks. Er unterlief deren bewusst gewaehlte Takte, verbrauchte am
# 25.07.2026 53 Mio teure Tokens und fuehrte in den 35-Stunden-Totalausfall vom
# 26./27.07. Seit dem 27.07. hatte er ohnehin keine Aufgabe mehr (alle Lern-Loops
# haben einen eigenen Task und stehen in EXCLUDE_RE).
#
# STATTDESSEN: getaktete Scheduled Tasks + Mac-Mini-Nachtschicht
# (ch.jans.nachtschicht — 23:30/02:30/05:30 plus Versuchs-Slot 13:30).
#
# Die Anleitungen unten beschreiben den FRUEHEREN Betrieb. Wer sie befolgt, startet
# einen Mechanismus, den Raphael abgeschaltet hat. Wiederbelebung nur auf seinen
# ausdruecklichen Entscheid — und vorher klaeren, welche Aufgabe der Runner haben
# soll, die nicht schon ein getakteter Task erledigt.
# ============================================================================
#
# JANS AI Hub — VOLLGAS-Runner (Endlos-Loop aller Lern-/Trainings-Loops)
# ============================================================================
# Auftrag Raphael 12.07.2026: alle wiederkehrenden Lern-Arbeiten laufen in
# einem ENDLOS-LOOP ohne Unterbrechung, bewusst bis ans Nutzungslimit heran.
# Der Runner zykliert sequenziell durch die Trainings-Prompts der Station
# (Scheduled-Task-SKILL.md-Dateien) und startet sofort wieder von vorn.
#
#   Start (Station):  nohup bash /Volumes/daten/jans-ai-hub/scripts/vollgas-runner.sh \
#                        > ~/.jans-vollgas.out 2>&1 &
#   Stopp (sofort):   touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP
#   Stopp (Station):  touch /Volumes/daten/jans-ai-hub/logbuch/vollgas/STOP-$(hostname -s)
#
# Selbst-Ende: mit der VOLLGAS-Reaktivierung vom 25.07.2026 wurde END_DATE von
# 20260811 auf 20991231 angehoben (Runner UND Supervisor) — der Runner beendet sich
# also faktisch nicht mehr von selbst. ACHTUNG, offener Entscheid Raphaels: die
# One-Time-Task `token-drosselung-100810` steht weiterhin auf dem 10.08.2026 und
# wuerde die Lern-Loops dann auf Sparbetrieb zuruecktakten — die beiden Vorgaben
# widersprechen sich, solange Raphael nicht eines von beidem aufhebt.
# (Rule 260712b / 260725; vom VOLLGAS-Chef-Radar am 25.07.2026 dokumentiert.)
#
# Arbeitsteilung (Rule 260712): MacBook Pro = baurecht/twin/immobewertung/
# spec/wettbewerb + Normen SIA+VKF; Mac Mini = energie/planungsgrundlagen/
# synobsis + Normen DIN/VSS/RAL. Der Runner nimmt automatisch die Trainings,
# die auf der jeweiligen Station als Scheduled Task angelegt sind.
#
# NICHT im Loop: operative Briefings/Checks (logbuch-radar, hub-chef,
# heartbeat, mahnwesen, zahlungsabgleich, monitore) — die wuerden Mails
# spammen; sie bleiben bei ihrem Morgen-Takt.
# ============================================================================

set -uo pipefail
export PATH="/opt/homebrew/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.bun/bin:$HOME/.claude/local:$PATH"

# Abo-Anmeldung fuer headless-Betrieb (CLAUDE_CODE_OAUTH_TOKEN via setup-token).
# Gleiche Mechanik wie dispatch-run.sh; Datei liegt NUR lokal (chmod 600).
if [ -f "$HOME/.jans-dispatch.env" ]; then
    set -a; . "$HOME/.jans-dispatch.env"; set +a
fi
if [ -n "${ANTHROPIC_API_KEY:-}" ]; then
    # NIE ueber API-Key fahren (echte API-Kosten statt Abo) — Rule 260712c
    unset ANTHROPIC_API_KEY
fi
if [ -z "${CLAUDE_CODE_OAUTH_TOKEN:-}" ]; then
    echo "Kein CLAUDE_CODE_OAUTH_TOKEN in ~/.jans-dispatch.env — Abbruch (Runner laeuft nur ueber die Abo-Anmeldung)."
    exit 6
fi

REPO="${VOLLGAS_REPO:-$HOME/Developer/jans-ai-hub}"
TASKS_DIR="$HOME/.claude/scheduled-tasks"
NAS_DIR="/Volumes/daten/jans-ai-hub/logbuch/vollgas"
HOST="$(hostname -s)"
END_DATE="20991231"   # ab diesem Tag (YYYYMMDD) beendet sich der Runner selbst
BUDGET="${VOLLGAS_MAX_BUDGET_USD:-50}"   # 25->50 (VOLLGAS 13.07.): normen-Loop truncierte bei 25 VOR der Pflicht-Verifikation
PERM_MODE="${VOLLGAS_PERMISSION_MODE:-acceptEdits}"
PAUSE_BETWEEN="${VOLLGAS_PAUSE:-30}"        # Sekunden zwischen zwei Laeufen
LIMIT_BACKOFF="${VOLLGAS_LIMIT_BACKOFF:-900}" # Sekunden Warten bei Limit/Ueberlast

# Whitelist: nur Lern-/Trainings-Loops (nie operative Briefings/Checks)
INCLUDE_RE='training|normen|twin|wettbewerb|spec|immob|synobsis|energie|planungsgrundlagen|batch|destillat'
# `destillat` 28.07.2026 aufgenommen (Entscheid Raphael): der Runner bekommt mit
# `wissens-destillat` seine erste EIGENE Lern-Aufgabe. Das beantwortet die offene
# Grundsatzfrage aus logbuch/vollgas/FRUEHWARNUNG.md vom 27.07.2026 — der Runner wird
# nicht ausgebaut, sondern bekommt die Arbeit, fuer die er gedacht ist: einen Loop OHNE
# eigenen Takt. Der Task `wissens-destillat` ist bewusst AD-HOC angelegt (kein
# cronExpression) — damit gibt es keinen zweiten Taktgeber (Rule 260727) und der Runner
# bleibt der einzige Feuermechanismus. Der Loop endet von selbst, wenn die Korpus-Queue
# abgearbeitet ist (er meldet dann «KORPUS-QUEUE KOMPLETT» und bittet um Stilllegung).
# VOLLGAS reaktiviert 25.07.2026 (ausdrueckliche Anweisung Raphaels, hebt die
# Drossel-Regimes 260713/260714 auf): alle Lern-/Trainings-Loops zyklieren
# wieder im Endlos-Zyklus. Nur operative Briefings/Monitore bleiben aussen vor.
# (Frueher schloss Rule 260713 zusaetzlich immobewertung/baurecht-buch/normen-
# training/twin-mail/twin-fidelity/spec-training aus, um sie auf 1x/Nacht zu
# drosseln — dieser Zusatz ist mit der Reaktivierung entfernt. Achtung: dadurch
# koennen Endlos-Zyklus und die eigenen Scheduled Tasks eines Loops parallel
# feuern; der Kollisionsschutz Rule 260724 faengt das ab.)
# synobsis-batch-nacht 25.07.2026 stillgelegt (KB architekten-synobsis saturiert:
# Katalog 853/853, Stufe-2-Vektorindex live, 18x ergebnislos; Entscheid Raphael) —
# aus dem Endlos-Zyklus genommen; Mini-launchd ch.jans.synobsis-batch ausgehaengt.
# grobkosten-training 27.07.2026 aus dem Endlos-Zyklus genommen (KB-eigene Runs 12-19:
# acht identische Saettigungsbelege in Folge, autonome Exploration erschoepft, Blocker
# sind zwei offene Rueckfragen an Raphael, nicht Materialmangel — der Runner ignoriert
# `cron_target` in der SKILL.md-Frontmatter komplett und feuerte den Loop im
# Minutenabstand statt 2x/Tag). Laeuft ab jetzt nur noch ueber den eigenen Scheduled
# Task (cron_target "0 9,21 * * *"), analog den sechs bereits ausgeschlossenen Loops.
# immob* 27.07.2026 aufgenommen (VOLLGAS-Chef-Radar, Leerlauf-Waechter): Raphael hat
# `immobewertung-training` am 26.07. auf EREIGNIS-TRIGGER gestellt (Registry enabled:false,
# naechster Lauf ueber den One-Time-Task `immobewertung-marktpuls-260901` am 01.09.2026).
# BEIDE SKILL.md tragen aber KEIN `enabled: false` in der Frontmatter — der Runner prueft
# nur die Frontmatter, nicht die Registry. Ohne diesen Ausschluss haette der naechste
# Runner-Neustart den ereignisgetriggerten Loop wiederbelebt und den September-Einmal-Task
# im Minutentakt abgefeuert (beim Neustart-Vorcheck simuliert und abgefangen).
# baurecht-buch 27.07.2026 aufgenommen (Freigabe Raphael, Leerlauf-Bereinigung): der Loop
# ist seit 17.07. bewusst auf WOECHENTLICH zurueckgetaktet (Festigungsmodus, Entscheid
# Raphael, Mo 23:40). Der Runner fuhr ihn in JEDEM Zyklus, also rund stuendlich, und
# unterlief damit die Taktentscheidung.
# GRUNDSATZ ab 27.07.2026: ein Loop mit eigenem Scheduled Task und definiertem Takt gehoert
# NICHT zusaetzlich in den Endlos-Zyklus — sonst laeuft er doppelt und ignoriert jede
# Drosselung. Der Runner ist fuer Loops OHNE eigenen Takt da, nicht als zweiter Taktgeber.
# energie-training / normen-training / planungsgrundlagen-training 03.08.2026 aufgenommen
# (Freigabe Raphael): alle drei haben einen eigenen App-Scheduled-Task mit definiertem Takt
# und fallen damit unter den GRUNDSATZ vom 27.07.2026. Bis hierhin standen sie als einzige
# der getakteten Loops noch NICHT in der Liste — `normen-training-nacht` deckte `normen-training`
# nicht ab (anderes Muster). Anlass war die Kollisionsserie 25.-30.07.2026 in der KB energie.
EXCLUDE_RE='radar|chef|heartbeat|mahnwesen|zahlungsabgleich|hygiene|monitor|check|drosselung|messung|masterclass|woche|synobsis|grobkosten|twin|spec-training|wettbewerbs-dna|normen-training|energie-training|planungsgrundlagen-training|immob|baurecht-buch'

mkdir -p "$NAS_DIR" 2>/dev/null || NAS_DIR="$HOME/.jans-vollgas-log"
mkdir -p "$NAS_DIR"
LOG="$NAS_DIR/${HOST}.log"

# --- Lock: nur EIN Runner pro Station ---------------------------------------
LOCK="/tmp/jans-vollgas-runner.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    PID_OLD="$(cat "$LOCK/pid" 2>/dev/null || true)"
    if [ -n "$PID_OLD" ] && kill -0 "$PID_OLD" 2>/dev/null; then
        echo "Runner laeuft bereits (PID $PID_OLD) — Abbruch."
        exit 0
    fi
    rm -rf "$LOCK"; mkdir "$LOCK"
fi
echo $$ > "$LOCK/pid"
trap 'rm -rf "$LOCK"' EXIT

# --- Claude-CLI auffinden ----------------------------------------------------
# Wrapper fuer alle claude-Aufrufe (JSON-Kennzahlen ins Lauf-Journal, Text zurueck)
RUNNER_WRAPPER="$HOME/Developer/jans-ai-hub/scripts/claude-run.sh"
[ -f "$RUNNER_WRAPPER" ] || RUNNER_WRAPPER="/Volumes/daten/jans-ai-hub/scripts/claude-run.sh"

CLAUDE_BIN="claude"
if ! command -v "$CLAUDE_BIN" >/dev/null 2>&1; then
    for p in "$HOME/.local/bin/claude" "/opt/homebrew/bin/claude" "/usr/local/bin/claude" "$HOME/.claude/local/claude"; do
        [ -x "$p" ] && { CLAUDE_BIN="$p"; break; }
    done
fi
command -v "$CLAUDE_BIN" >/dev/null 2>&1 || [ -x "$CLAUDE_BIN" ] || {
    echo "claude-CLI nicht gefunden"; exit 4; }

cd "$REPO" || { echo "Repo nicht gefunden: $REPO"; exit 3; }

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') [$HOST] $*" | tee -a "$LOG"; }

log "=== VOLLGAS-Runner gestartet (PID $$, Budget \$${BUDGET}/Lauf, Ende $END_DATE) ==="

ZYKLUS=0
while :; do
    # Stopp-Bedingungen
    [ -f "$NAS_DIR/STOP" ] && { log "STOP-Datei gefunden — Runner beendet."; exit 0; }
    [ -f "$NAS_DIR/STOP-$HOST" ] && { log "STOP-$HOST gefunden — Runner beendet."; exit 0; }
    [ "$(date +%Y%m%d)" -ge "$END_DATE" ] && { log "Enddatum erreicht — Drosselung, Runner beendet."; exit 0; }

    # Task-Liste jedes Mal frisch (neue Trainings werden automatisch erfasst)
    TASKS=()
    for f in "$TASKS_DIR"/*/SKILL.md; do
        [ -f "$f" ] || continue
        name="$(basename "$(dirname "$f")")"
        echo "$name" | grep -qiE "$INCLUDE_RE" || continue
        echo "$name" | grep -qiE "$EXCLUDE_RE" && continue
        # Stations-Split (Rule 260712): auf dieser Station deaktivierte Tasks
        # ueberspringen (Frontmatter enabled: false), sonst laeuft z.B.
        # baurecht-buch-training auf dem Mac Mini leer (self-abort) mit.
        grep -qiE '^enabled:[[:space:]]*false' "$f" && continue
        TASKS+=("$name")
    done
    if [ "${#TASKS[@]}" -eq 0 ]; then
        log "Keine Trainings-Tasks gefunden unter $TASKS_DIR — warte 10 Min."
        sleep 600; continue
    fi

    ZYKLUS=$((ZYKLUS + 1))
    log "--- Zyklus $ZYKLUS: ${#TASKS[@]} Loops: ${TASKS[*]} ---"

    for name in "${TASKS[@]}"; do
        [ -f "$NAS_DIR/STOP" ] || [ -f "$NAS_DIR/STOP-$HOST" ] && break
        # NAS-Guard (25.07.2026, Mount-Haerten Schicht 3): vor JEDEM Lauf
        # sicherstellen, dass /Volumes/daten wirklich lesbar ist — sonst startet
        # der Task ins Leere oder bricht mitten im NAS-Schreiben ab (belegt:
        # immobewertung Run 43 / spec-training abgebrochen, Mount fiel mittendrin
        # weg). ensure-nas-mounted heilt inline (bis 90 s); gelingt es nicht,
        # diesen Task ueberspringen statt blind abfeuern.
        if ! bash "$REPO/scripts/ensure-nas-mounted.sh" 90 >/dev/null 2>&1; then
            log "SKIP  $name (NAS nach 90s nicht bereit — Lauf uebersprungen)"
            sleep "$PAUSE_BETWEEN"
            continue
        fi
        # Doppellauf vermeiden: laeuft dieser Task bereits (z.B. via launchd-
        # Scheduled-Task zur Cron-Zeit oder ein ueberlanger Vorlauf), diesen
        # Zyklus ueberspringen — sonst editieren zwei Agenten dieselbe KB
        # gleichzeitig (index.lock-Kollisionen, Rule sync-kanonische-quelle).
        # Match auf die Frontmatter-Zeile "name: <task>" in der argv des
        # laufenden claude-Prozesses (Scheduled-Task wie Runner tragen sie).
        if pgrep -f "name: ${name}[^A-Za-z0-9-]" >/dev/null 2>&1; then
            log "SKIP  $name (laeuft bereits — Doppellauf vermieden)"
            sleep "$PAUSE_BETWEEN"
            continue
        fi
        # Zweite, breitere Stufe (03.08.2026): der Frontmatter-Match oben greift NUR bei
        # Prozessen, die die SKILL.md woertlich tragen (Scheduled Task, Runner). Ein
        # HANDGESCHRIEBENER Prompt fuer denselben Loop traegt keine `name:`-Zeile und blieb
        # damit unsichtbar — genau so lief `cron-training-mini.sh energie` (LaunchAgent
        # ch.jans.training-energie, inzwischen disabled-260803) vier Naechte in Folge
        # parallel zum App-Scheduled-Task energie-training und liess die zweite Instanz
        # dieselbe KB bearbeiten. Der Loop-Name selbst kommt in beiden Formen vor
        # ("energie-training" bzw. "Energie-Trainings"), deshalb case-insensitiv auf den
        # blossen Namen pruefen. Task-Namen sind distinkt genug fuer diesen Match.
        if pgrep -if "${name}" >/dev/null 2>&1; then
            log "SKIP  $name (gleichnamiger Lauf aktiv, auch ohne Frontmatter — Doppellauf vermieden)"
            sleep "$PAUSE_BETWEEN"
            continue
        fi
        # Leerlauf-Guard (25.07.2026, VOLLGAS-Chef-Radar): Gelegentlich kam der
        # Prompt LEER beim Modell an — die Antwort lautete dann sinngemaess «es ist
        # nur der System-Kontext angekommen, was moechtest Du?» und der Lauf endete
        # nach 6-13s mit rc=0, also als stiller Blindgaenger, der einen vollen Slot
        # verbrannte (belegt 14.07. und 25.07. in beiden Stations-Logs, u.a.
        # normen-training-mini 6s, wettbewerbs-dna-training 10s, spec-training 7s).
        # Vermutete Ursache: die SKILL.md wird waehrend des `cat` gerade neu
        # geschrieben (Scheduled-Task-Update truncatet die Datei), sodass `cat` nichts
        # bzw. nur Bruchstuecke liefert. Statt einen leeren Auftrag abzufeuern, wird
        # der Lauf uebersprungen und im Log als LEER-SKIP sichtbar gemacht.
        SKILL_TXT="$(cat "$TASKS_DIR/$name/SKILL.md" 2>/dev/null)"
        if [ "${#SKILL_TXT}" -lt 200 ]; then
            log "SKIP  $name (SKILL.md leer/zu kurz: ${#SKILL_TXT} Zeichen — Leerlauf vermieden)"
            sleep "$PAUSE_BETWEEN"
            continue
        fi
        PROMPT="$SKILL_TXT
Hinweis: Dieser Lauf ist Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026).
Fahre den naechsten Batch gemaess dem jeweiligen training/PROGRAMM.md bzw. Lauf-Zustand.
Sende KEINE Mails ausser der Prompt verlangt es ausdruecklich. Git-Disziplin (VOLLGAS,
26.07.2026): Fuehre KEINE git-Befehle im NAS-Repo aus — git ueber den SMB-Mount haengt
uninterruptibel und kollidiert auf .git/index.lock. Zum Sichern am Ende EINMAL den nativen
Committer ausloesen (commit+push auf der Synology, ext4, kein SMB), mit sprechender Message:
  bash \"\$HOME/Developer/jans-ai-hub/scripts/nas-commit-now.sh\" \"<Loop>: <was geaendert>\"
Kein git add/commit/push/pull selbst — nas-commit-now uebernimmt alles und zieht den
SSD-Klon nach. So endet jeder Lauf sauber mit rc=0 (Rule sync-kanonische-quelle 26.07.2026)."
        # --- Lauf-Gate: stationsweiter Prozess-Deckel -----------------------
        # Der Runner kennt seine eigenen Laeufe, aber nicht die der Scheduled
        # Tasks, der Nachtschicht oder des aihub-Runners. Genau diese Blindheit
        # hat am 28.07.2026 den Speicher-Notstand ausgeloest. Das Gate zaehlt
        # stationsweit (Rule speicher-deckel, 28.07.2026).
        GATE="$HOME/Developer/jans-ai-hub/scripts/lauf-gate.sh"
        [ -f "$GATE" ] || GATE="/Volumes/daten/jans-ai-hub/scripts/lauf-gate.sh"
        if [ -f "$GATE" ] && ! bash "$GATE" "vollgas-$name"; then
            log "GATE $name — Station ausgelastet, Lauf uebersprungen."
            continue
        fi

        START_TS=$(date +%s)
        log "START $name"
        # WICHTIG: Prompt via "--"-Separator als Positional uebergeben, NICHT inline
        # nach -p. Die SKILL.md-Prompts beginnen mit YAML-Frontmatter ("---"); das
        # optionale Argument von -p wird sonst nicht konsumiert und der Parser liest
        # den Prompt als (unbekannte) Option -> sofort rc=1 (Blocker 12.07.2026).
        # SDK-JSON seit 29.07.2026 (Anthropic-Lecture): der Wrapper ruft claude mit
        # --output-format json, schreibt die Kennzahlen ins Lauf-Journal und gibt hier
        # weiterhin REINEN TEXT zurueck — die Blindgaenger-Erkennung unten arbeitet
        # deshalb unveraendert auf $OUT.
        OUT="$(CLAUDE_BIN="$CLAUDE_BIN" bash "$RUNNER_WRAPPER" \
            --name "vollgas-$name" \
            --perm "$PERM_MODE" \
            --budget "$BUDGET" \
            -- "$PROMPT" 2>/dev/null)"
        RC=$?
        DAUER=$(( $(date +%s) - START_TS ))

        # Blindgaenger-Retry (25.07.2026, VOLLGAS-Chef-Radar): Der Prompt kommt
        # gelegentlich LEER beim Modell an — die Antwort lautet dann sinngemaess
        # «ich sehe keine konkrete Anfrage, nur Systemkontext» und der Lauf endet
        # nach 5-13s mit rc=0. Der Leerlauf-Guard oben kann das NICHT abfangen:
        # die SKILL.md ist vollstaendig, der Prompt wird korrekt gebaut (am
        # 25.07. mit identischem Prompt manuell gegengeprueft — kam an). Es ist
        # also ein transienter Drop auf CLI-Seite, kein Datei-Problem. Ohne Retry
        # verliert der betroffene Loop seinen ganzen Zyklus-Slot (belegt 25.07.:
        # wettbewerbs-dna-training 3 von 4 Laeufen blind). Darum: einmal sofort
        # nachfeuern.
        #
        # ERKENNUNG NACHGESCHAERFT (25.07.2026 18:50, gleicher Radar): Die erste
        # Fassung zaehlte nur Tell-Tale-SAETZE auf und liess damit 4 von 18 real
        # aufgetretenen Blindgaengern durch, weil das Modell die Leer-Antwort
        # frei formuliert («Bereit. Woran soll ich arbeiten?», «Ich bin bereit —
        # was moechtest Du als Naechstes...», «Nachricht ist ohne Inhalt bei mir
        # angekommen»). Statt der Phrasen-Jagd zaehlt jetzt primaer die FORM der
        # Antwort: ein Blindgaenger ist kurz UND liefert fast keinen Text. Ein
        # echter Trainingslauf schreibt immer einen Report (kuerzester produktiver
        # Lauf heute: 125s; jede produktive Antwort deutlich ueber 400 Zeichen).
        # Der Phrasen-Zweig bleibt als OR fuer den seltenen langen Blindgaenger.
        # Bewusst NICHT betroffen: der Kollisionsschutz-Abbruch (Rule 260724)
        # endet zwar auch in 20-35s, liefert aber einen langen Begruendungstext
        # und wird darum nicht wiederholt — ein Retry wuerde dort nur erneut
        # kollidieren. Gegen alle 18 heutigen Blind-Antworten UND die 3 heutigen
        # Kollisions-Abbrueche gegengeprueft.
        if [ "$RC" -eq 0 ] && [ "$DAUER" -lt 60 ] \
           && { [ "${#OUT}" -lt 400 ] \
                || printf '%s' "$OUT" | grep -qiE "keine (eigentliche |konkrete )?(Anfrage|Nachricht)|nur (System|Systemkontext)|ohne (Inhalt|konkrete[nrs]? )|Woran (soll ich|m(ö|oe)chtest Du)|don't see an actual request|no actual request"; }; then
            log "BLIND $name (rc=0, ${DAUER}s — Prompt kam leer an) — einmaliger Retry."
            sleep 5
            START_TS=$(date +%s)
            OUT="$(CLAUDE_BIN="$CLAUDE_BIN" bash "$RUNNER_WRAPPER" \
                --name "vollgas-$name-retry" \
                --perm "$PERM_MODE" \
                --budget "$BUDGET" \
                -- "$PROMPT" 2>/dev/null)"
            RC=$?
            DAUER=$(( $(date +%s) - START_TS ))
        fi

        TAIL="$(printf '%s' "$OUT" | tail -c 400 | tr '\n' ' ')"
        log "ENDE  $name (rc=$RC, ${DAUER}s): $TAIL"

        # Limit-/Ueberlast-Erkennung → Backoff statt sinnlos weiterhaemmern
        if printf '%s' "$OUT" | grep -qiE "usage limit|rate.?limit|limit reached|overloaded|529"; then
            log "Limit/Ueberlast erkannt — Backoff ${LIMIT_BACKOFF}s."
            sleep "$LIMIT_BACKOFF"
        fi
        sleep "$PAUSE_BETWEEN"
    done
done
