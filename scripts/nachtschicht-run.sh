#!/bin/bash
# ============================================================================
# JANS AI Hub — Mac-Mini-Nachtschicht (Fenster 18:00–09:00)
# ============================================================================
# Auftrag Raphael 20.07.2026: Der Mac Mini arbeitet neu in den Abend- und
# Nachtstunden (18:00–09:00) als Dauerschicht. launchd (ch.jans.nachtschicht,
# NUR auf dem Mac Mini installiert) startet dieses Skript stuendlich um :30;
# ausserhalb des Fensters beendet es sich sofort und kostenlos.
#
# Ein Lauf = EIN Arbeitszyklus (eine Aufgabe, messbares Ergebnis) durch den
# vollen JANS-Harness via dispatch-run.sh (Budget-Deckel, Logging auf NAS).
# Frueher Schwester des Dauerschicht-Loops auf dem MacBook Pro. Seit dem Ausbau des
# VOLLGAS-Endlos-Runners (29.07.2026) ist dieser Job der EINZIGE Lern-Taktgeber des Hub;
# der Doppelarbeit-Guard im Prompt ist entsprechend eng gefasst (siehe dort).
#
# Installation (Mac Mini): Plist ~/Library/LaunchAgents/ch.jans.nachtschicht.plist
# Log: ~/Library/Logs/ch.jans.nachtschicht.log + dispatch/log auf dem NAS
# ============================================================================

set -uo pipefail

LOGFILE="$HOME/Library/Logs/ch.jans.nachtschicht.log"
log() { echo "$(date -Iseconds) $*" >> "$LOGFILE" 2>/dev/null; }

# --- Nur auf dem Mac Mini ----------------------------------------------------
HOST="$(hostname -s)"
if [ "$HOST" != "Macmini" ] && [ "${NACHTSCHICHT_ALLOW_ANY_HOST:-0}" != "1" ]; then
    echo "Nachtschicht laeuft nur auf dem Mac Mini (aktuell: $HOST)."
    exit 0
fi

# --- Zeitfenster 18:00–08:59 plus Versuchs-Slot 13:xx ---------------------------
# ENTSCHEID Raphael 29.07.2026: befristeter Versuch mit EINEM Mittags-Slot (13:30),
# weil zwischen ~07:30 und 23:30 auf keiner Station ein Lern-Loop lief, waehrend das
# Kontingent frei war. Der Slot braucht ZWEI Orte: den launchd-Eintrag in
# ch.jans.nachtschicht.plist UND diese Ausnahme — ohne sie haette der Job um 13:30
# gefeuert und sich hier still beendet (Null-Wirkung, im Log nicht von einem gesunden
# Lauf zu unterscheiden).
# Der Mac Mini traegt tagsueber reale Last (ArchiCAD, Cineware); der Schutz ist das
# Lauf-Gate weiter unten, das bei Speichernot von sich aus abweist.
# RUECKBAU nach dem Versuch (Entscheid Raphael, Grundlage: Liefer-Delta der Woche):
# MITTAG_SLOT auf -1 setzen ODER diese Ausnahme entfernen UND den 13:30-Eintrag aus
# der plist nehmen — wieder beide Orte.
MITTAG_SLOT="${MITTAG_SLOT:-13}"
H=$(date +%H); H=$((10#$H))
if [ "$H" -ge 9 ] && [ "$H" -lt 18 ] && [ "$H" -ne "$MITTAG_SLOT" ]; then
    exit 0
fi

# --- NAS-Pflicht ---------------------------------------------------------------
if [ ! -d /Volumes/daten/jans-ai-hub/wissen ]; then
    log "NAS nicht gemountet — Zyklus uebersprungen."
    exit 0
fi

# --- Ueberlappungsschutz (ein Zyklus aufs Mal) ----------------------------------
LOCK="/tmp/ch.jans.nachtschicht.lock"
if ! mkdir "$LOCK" 2>/dev/null; then
    log "Vorheriger Zyklus laeuft noch — uebersprungen."
    exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

# --- Arbeits-Weiche als Pflicht-Einstieg (31.07.2026) ----------------------------
# Bis 30.07. fragte hier nur das lokale Lauf-Gate: eine Abweisung liess den Zyklus
# ersatzlos ausfallen, obwohl das MacBook Pro nachts oft frei ist. Neu entscheidet
# die Arbeits-Weiche (Politik 30.07.: Default Mini; MacBook nur als Aushilfe bei
# LAN + Netzteil + frei + idle/ausserhalb Arbeitszeit). Im Takt-Modus legt sie bei
# beidseitiger Nichtbereitschaft bewusst KEINEN Queue-Task an — der naechste
# Stundentakt kommt von allein, Queue-Eintraege wuerden sich duplizieren.
# Die Weiche fragt intern das Lauf-Gate der Zielstation (gate_ok) — der
# stationsweite Prozess-Deckel (Rule speicher-deckel, 28.07.2026) bleibt scharf.
# NAS-Kopie ZUERST (anders als beim Gate): der Takt-Modus startet kein claude,
# das SSD-Trust-Argument greift hier nicht — dafuer lag die SSD-Kopie am 31.07.
# eine Version zurueck und interpretierte '--takt' als Auftragsnamen (Ausfuehrungs-
# modus statt Entscheid). Die NAS-Kopie ist kanonisch und immer aktuell.
ZIEL="mini"
WEICHE="/Volumes/daten/jans-ai-hub/scripts/arbeits-weiche.sh"
[ -f "$WEICHE" ] || WEICHE="$HOME/Developer/jans-ai-hub/scripts/arbeits-weiche.sh"
if [ -n "${NACHTSCHICHT_TEST_ZIEL:-}" ]; then
    # Nur Pfad-Nachmessung: Weiche-Entscheid uebersteuern (nie im Betrieb setzen).
    ZIEL="$NACHTSCHICHT_TEST_ZIEL"
elif [ -f "$WEICHE" ]; then
    W_ZIEL="$(bash "$WEICHE" --takt "nachtschicht" 2>/dev/null | tail -1)"
    case "$W_ZIEL" in
        mini|macbook|keine) ZIEL="$W_ZIEL" ;;
        *) log "Weiche unlesbar ('$W_ZIEL') — Rueckfall auf lokales Lauf-Gate." ;;
    esac
else
    log "Weiche nicht gefunden — Rueckfall auf lokales Lauf-Gate."
fi

if [ "$ZIEL" = "keine" ]; then
    log "Weiche: keine Station bereit — Zyklus uebersprungen."
    exit 0
fi

# Test-Hook (nur Pfad-Nachmessung): Entscheid ausgeben, nichts ausfuehren.
if [ "${NACHTSCHICHT_NUR_ENTSCHEID:-0}" = "1" ]; then
    echo "Entscheid: $ZIEL"
    exit 0
fi

# Lokaler Mini-Pfad: das Gate zusaetzlich direkt fragen. Deckt den Rueckfall ab
# (Weiche fehlt/unlesbar) und kostet im Normalfall nur eine Doppelpruefung.
if [ "$ZIEL" = "mini" ]; then
    GATE="$HOME/Developer/jans-ai-hub/scripts/lauf-gate.sh"
    [ -f "$GATE" ] || GATE="/Volumes/daten/jans-ai-hub/scripts/lauf-gate.sh"
    if [ -f "$GATE" ] && ! bash "$GATE" "nachtschicht"; then
        log "Lauf-Gate hat abgewiesen (Station ausgelastet) — Zyklus uebersprungen."
        exit 0
    fi
fi

# --- Repo aktualisieren (leise) --------------------------------------------------
cd "$HOME/Developer/jans-ai-hub" 2>/dev/null && git pull --ff-only --quiet 2>/dev/null

log "Zyklus gestartet (Stunde $H)."

PROMPT='Nachtschicht-Zyklus Mac Mini (Fenster 18:00-09:00, dazu der Versuchs-Slot 13:30). Arbeite an genau EINER Aufgabe mit messbarem Ergebnis, nicht an mehreren gleichzeitig.

Prioritaeten (nimm die erste, die faellig ist):
1. remote-tasks/pending/ und sync-tasks/mac-mini/ abarbeiten
2. Mini-exklusive Baustelle: Synobsis Stufe 2 Embeddings (py3.12-venv) fortsetzen, falls offen
3. Fristen-/Pendenzen-Radar aus logbuch/: Ueberfaelliges nur als Entwurf/Zusammenstellung aufbereiten — NIE selbststaendig versenden
4. Naechste faellige Trainingslektion unter wissen/*/training/PROGRAMM.md. Massgeblich fuer «am laengsten nicht trainiert» ist der letzte INHALTLICHE Stand in wiki/ (juengste mtime einer Artikeldatei), NICHT das CHANGELOG-Datum: Struktur-, Register- und Statuspflege setzt den CHANGELOG auf heute, ohne dass ein einziger Artikel gewachsen waere (belegt 29.07.2026 an bauprodukte). Bei aehnlichem Stand zuerst die KB mit den meisten offenen Positionen. Traegt eine PROGRAMM.md einen Stillgelegt-/Ereignis-Trigger-Statuskopf, ist sie kein gueltiges Ziel. EBENSO KEIN gueltiges Ziel ist eine KB mit EIGENEM AKTIVEM TAKTGEBER (Scheduled Task oder launchd-Job — im Frontmatter als `scheduled_task:` oder im Takt-Abschnitt der PROGRAMM.md benannt): ihr Takt ist dort geregelt, und ein Zusatzlauf von hier hebelt eine bewusste Drossel-Entscheidung Raphaels aus. Belegt 30.07.2026 (vollgas-chef-radar): `baurecht-buch-training` ist seit 17.07. mit Freigabe Raphaels auf WOECHENTLICH (Mo) gedrosselt und war erst am 03.08. wieder faellig, wurde aber im 02:30-Slot als Run 70 zusaetzlich gefeuert. Aktuell ausgeschlossen: baurecht (`baurecht-buch-training`, woechentlich Mo), normen (`normen-training-nacht`, taeglich 01:20), planungsgrundlagen (`planungsgrundlagen-wartung`, monatlich am 1. — umgewidmet von grower zu maintainer am 30.07.2026 nach 28 Erschoepfungsbestaetigungen, Entscheid Raphael), wettbewerbs-dna (`wettbewerbs-dna-training`, woechentlich Mo — am 30.07.2026 reaktiviert als Etappe-4-Vertiefung, Entscheid Raphael). Freie Ziele: bauprodukte, energie, grobkosten. RUECKNAHME 05.08.2026 (vollgas-chef-radar, Leerlauf-Waechter Schwelle «3 Laeufe ohne Liefer-Delta»): `projekt-lessons` ist als freies Ziel AUSGESETZT. Drei Nachtschicht-Laeufe in Folge endeten ohne neuen Fall und ohne neuen Artikel — 03.08. (Logbuch), 04.08. (KISPI-Projektordner + Mail), 05.08. (Truninger-DS3). Das ist Delta-Null durch erschoepftes Material auf den durchsuchten Pfaden, KEIN Abbruch: alle drei Laeufe endeten mit rc=0 und dokumentierten ihren Nullbefund sauber in QUESTIONS.md. Die KB benennt selbst den einzigen verbleibenden ergiebigen Fundort — `01.01.24 Baujournale Bauleitung` (Nord/Sued, Jahresordner 2018-2024) auf DS3 — und ebenso, warum er hier nicht hingehoert: zu gross fuer das geteilte 5-USD-Zyklusbudget. Ein vierter Breitensuch-Lauf wuerde denselben Nullbefund ein viertes Mal erzeugen und einen Nachtslot verbrennen, der an `energie` (27 offene ecoBKP-Merkblaetter, S. 20-138) oder `bauprodukte` (ERCO ab S. 73) messbaren Ertrag bringt. WIEDER AUFNEHMEN, sobald der dedizierte, vollbudgetierte Baujournal-Lauf stattgefunden hat (jahrweise, gezielt nach Nachtarbeit/Laerm/Etappenwechsel) oder neues Rohmaterial in `raw/` liegt — nicht vorher, und nicht stillschweigend. KORREKTUR 04.08.2026 (vollgas-chef-radar): `energie` stand hier bis heute mit der Begruendung «launchd `ch.jans.training-energie`, taeglich 22:30» auf der Ausschlussliste — diesen Job gibt es seit dem 03.08.2026 12:22 nicht mehr (plist auf `.disabled-260803` umbenannt, nicht geladen), einen Scheduled Task `energie-training` gibt es in der Registry nicht, und `ch.jans.wissens-trigger` weist die KB am 03. und 04.08. auf beiden Stationen als «unveraendert — kein Lauf» aus. Die KB hatte damit KEINEN Taktgeber mehr und waere still ausgefallen (letzter inhaltlicher Stand 03.08. 23:37, und der kam vom wissens-chef, nicht vom eigenen Loop). Die Nachtschicht ist ab jetzt ihr Taktgeber; ein zweiter Mechanismus wird bewusst NICHT angelegt, sonst feuern zwei auf denselben Loop. Im Zweifel die Registry/launchd nicht selbst abfragen, sondern die naechste KB ohne benannten Taktgeber nehmen
5. Offene QUESTIONS.md einer KB recherchieren und als Wiki-Artikel kompilieren
6. Sonst: wissenscheck Phase 1 (unbeaufsichtigt) auf der KB mit dem aeltesten Audit-Datum

Doppelarbeit-Guard (KORRIGIERT 29.07.2026, vollgas-chef-radar): Der VOLLGAS-Endlos-Runner auf dem MacBook Pro ist seit dem 29.07.2026 AUSGEBAUT — die frueher hier behauptete zweite Schicht «rund um die Uhr» gibt es nicht mehr. Du bist der einzige Mechanismus, der diese Liste abarbeitet. Der Guard bleibt bestehen, aber er ist eng zu fassen: Lies das juengste Protokoll unter dispatch/log/ (INHALTLICH, nicht nur den Namen) sowie CHANGELOG.md und Logbuch-Journal der betroffenen KB. Ueberspringe eine Prioritaet NUR, wenn dort heute ein INHALTLICHES Delta belegt ist (neue/gewachsene Datei in wiki/ bzw. outputs/). Ein reiner Struktur-, Status- oder Registereintrag im CHANGELOG ist KEIN erledigtes Training und rechtfertigt kein Ueberspringen. Im Zweifel arbeiten statt ueberspringen — ein doppelt gepruefter Artikel kostet weniger als ein leer verstrichener Slot (belegt 29.07. 13:30: die Prioritaeten 3 und 4 wurden als «abgedeckt» uebersprungen, obwohl bauprodukte mit 55 offenen Positionen seit 28.07. 23:42 unberuehrt lag).

Budget-Disziplin (Lehre aus den Laeufen 00:30/01:30 am 21.07.): Dein Lauf hat ein hartes Budget von 5 USD. Waehle NUR Aufgaben, die inklusive Verifikation und Registerpflege in ~4 USD machbar sind — keine grossen Agent-Fan-outs, keine Recherchen ueber viele Quellen. Ist die naechste faellige Aufgabe erkennbar groesser: NICHT anfangen, sondern in der QUESTIONS.md der KB als «zu gross fuer Nachtschicht-Budget, braucht dedizierten Lauf» vermerken und eine kleinere Aufgabe nehmen. Scheiterte der letzte Lauf an Budget oder Timeout an einer Aufgabe, nimm NIE dieselbe Aufgabe direkt erneut.

Jeder Zyklus endet mit: Ergebnis in wiki/ bzw. outputs/ auf dem NAS, CHANGELOG-Eintrag, eine Journalzeile im Logbuch (der NAS committet sich selbst, kein Git ueber SMB).

Harte Grenzen: nur Aktionen gemaess logbuch/AKTIONS-WHITELIST.md. Nie E-Mails versenden, nichts publizieren, nichts buchen, nichts loeschen, keine Einkaeufe. Wenn keine sinnvolle Aufgabe ansteht: in einem Satz begruenden und sauber beenden statt Beschaeftigung zu erfinden.'

# --- Aushilfe-Pfad MacBook Pro (Arbeits-Weiche, 31.07.2026) ----------------------
# Der Mini ist ausgelastet, das MacBook bereit (LAN, Netzteil, frei, idle/Nacht).
# Der Zyklus laeuft dort ueber DENSELBEN dispatch-run.sh (dispatch/log auf dem NAS
# bleibt die eine Quelle fuer den Doppelarbeit-Guard). Die Aushilfe-Klausel nimmt
# die Mini-exklusiven Prioritaeten 1+2 aus dem Spiel. Fire-and-forget wie in der
# Weiche; gegen Ueberlappung schuetzt das Lauf-Gate der Zielstation (die Weiche
# hat es soeben befragt, und der naechste Weiche-Entscheid zaehlt den Lauf mit).
if [ "$ZIEL" = "macbook" ]; then
    log "Weiche: Mini ausgelastet — Aushilfe-Zyklus auf dem MacBook Pro."
    KLAUSEL='AUSHILFE-MODUS (Arbeits-Weiche): Du laeufst auf dem MacBook Pro, weil der Mac Mini ausgelastet ist. Die Prioritaeten 1 und 2 sind Mini-exklusiv (Task-Queues des Mini, Mini-gebundene Baustellen) — sie laesst Du vollstaendig aus und arbeitest nur an den Prioritaeten 3 bis 6. Alle uebrigen Regeln des Prompts gelten unveraendert.'
    PFAD_LOKAL="/tmp/nachtschicht-aushilfe-$(date +%H%M%S).txt"
    printf '%s\n\n%s' "$KLAUSEL" "$PROMPT" > "$PFAD_LOKAL"
    DISPATCH_SCRIPT="${NACHTSCHICHT_DISPATCH_SCRIPT:-\$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh}"
    RLOG="/tmp/nachtschicht-aushilfe-$(date +%H%M%S).log"
    if ssh -o BatchMode=yes -o ConnectTimeout=6 -o LogLevel=ERROR macbook \
        "cat > /tmp/nachtschicht-aushilfe-prompt.txt; set -a; . ~/.jans-dispatch.env 2>/dev/null; set +a; cd ~/Developer/jans-ai-hub && DISPATCH_ALLOW_ANY_HOST=1 DISPATCH_MAX_BUDGET_USD='${NACHTSCHICHT_BUDGET_USD:-5}' CLAUDE_CODE_PRINT_BG_WAIT_CEILING_MS='${NACHTSCHICHT_BG_WAIT_MS:-1800000}' nohup bash $DISPATCH_SCRIPT \"\$(cat /tmp/nachtschicht-aushilfe-prompt.txt)\" > '$RLOG' 2>&1 & echo gestartet" < "$PFAD_LOKAL"
    then
        log "Aushilfe-Zyklus auf dem MacBook gestartet (Log dort: $RLOG)."
        rm -f "$PFAD_LOKAL"
        exit 0
    else
        log "Aushilfe-Start auf dem MacBook FEHLGESCHLAGEN — Zyklus faellt aus (naechster Takt versucht es neu)."
        rm -f "$PFAD_LOKAL"
        exit 0
    fi
fi

# Background-Agenten brauchen Zeit zum Fertigschreiben: Der Lauf 21.07. 00:30 wurde
# nach dem 600-s-Default terminiert, BEVOR der Orchestrator Verifikation/Register/Commit
# ausfuehren konnte — alle Agent-Ergebnisse verloren. 30 Min Ceiling; der Lock oben
# verhindert Ueberlappung mit dem naechsten Stundenzyklus (der dann sauber uebersprungen wird).
DISPATCH_MAX_BUDGET_USD="${NACHTSCHICHT_BUDGET_USD:-5}" \
CLAUDE_CODE_PRINT_BG_WAIT_CEILING_MS="${NACHTSCHICHT_BG_WAIT_MS:-1800000}" \
    bash "$HOME/Developer/jans-ai-hub/scripts/dispatch-run.sh" "$PROMPT"
RC=$?

log "Zyklus beendet (Exit $RC)."
exit "$RC"
