#!/bin/bash
# ============================================================================
# JANS Vermaschungs-Test — misst die Verbindung der drei Stationen als MATRIX
# ============================================================================
# Anlass: Lehre vom 24.08.2026 (Chronik 260824d) — «eine Vermaschung wird als
# Matrix gemessen, nicht als Liste von Handgriffen». Die Handmessung fand genau
# deshalb den offenen Weg Mini → station-03: die Gegenrichtung war nie geprueft.
#
# Zweite Lehre (Chronik 260824c, Rule auto-verbesserungen 260824): «laeuft» und
# «ist erreichbar» sind ZWEI Messungen. Frische Statusdateien auf dem NAS
# beweisen nur die erste — sie bleiben gruen, waehrend die Station von auswaerts
# unerreichbar ist. Dieser Test misst deshalb den Weg selbst, nicht seinen Abdruck.
#
# Neun Ebenen:
#   E1 Netzweg      Tailscale-Zustand und SSH-Port je Station (LAN und Tailnet getrennt)
#   E2 SSH-Matrix   alle 6 Richtungen zwischen den drei Stationen, passwortlos
#   E3 NAS          Mount, Lesen UND Schreiben je Station (nicht nur -d)
#   E4 Datenumlauf  eine Station schreibt ein Token, alle anderen lesen es zurueck
#   E5 Git          HEAD/Branch/Dirty je Klon — divergieren die Stationen?
#   E6 Symlinks     .claude/{skills,agents,commands} zeigen aufs NAS
#   E7 Uhrendrift   zwischen den Stationen (datierte Eintraege haengen daran)
#   E8 Claude-CLI   vorhanden je Station (Lauffaehigkeit, nicht Login)
#   E9 Rueckkanal   sync-tasks/ und remote-tasks/ je Station sichtbar
#
# Aufruf:
#   bash scripts/vermaschungs-test.sh            volle Matrix (rund 60-90 s)
#   bash scripts/vermaschungs-test.sh --kurz     nur die Ampel je Ebene
#   bash scripts/vermaschungs-test.sh --netz     nur E1+E2 (schnell, rund 20 s)
#
# Nur lesend. Einzige Schreibvorgaenge: je eine Testdatei im NAS-Ordner
# zettel/.vermaschung/, die derselbe Lauf wieder entfernt.
#
# Exit: 0 = vollstaendig vermascht · 1 = Befund · 2 = nicht pruefbar
# ============================================================================
set -uo pipefail

MODUS="${1:-}"
NAS="/Volumes/daten/jans-ai-hub"
DATEN="$NAS/connectors/hub-setup-daten.json"
TESTDIR="$NAS/zettel/.vermaschung"
SSHOPT=(-o BatchMode=yes -o ConnectTimeout=8 -o StrictHostKeyChecking=accept-new -o LogLevel=ERROR)
BEFUNDE=0
ICH=$(hostname -s)

# --- Stationen aus der kanonischen Quelle (Rule 260730) ---------------------
# Nie aus dem Gedaechtnis: IP und Benutzer stehen in hub-setup-daten.json.
if [ ! -r "$DATEN" ]; then
    echo "NICHT PRUEFBAR: $DATEN nicht lesbar (NAS gemountet?)"
    exit 2
fi
# bash 3.2 auf macOS kennt kein mapfile — while-read statt dessen.
ZEILEN=(); ZN=0
while IFS= read -r z; do
    [ -n "$z" ] || continue
    ZEILEN[$ZN]="$z"; ZN=$((ZN+1))
done < <(node -e '
  const d = require(process.argv[1]).stationen;
  for (const [k, s] of Object.entries(d)) {
    if (!s.tailscale_ip || !/^mac/.test(k)) continue;
    console.log([k, s.tailscale_ip, s.benutzer || "raphaeljans",
                 (s.lan_ip && /^\d/.test(s.lan_ip)) ? s.lan_ip : "-"].join("|"));
  }' "$DATEN" 2>/dev/null)

if [ "$ZN" -lt 2 ]; then
    echo "NICHT PRUEFBAR: keine Stationen aus $DATEN gelesen"
    exit 2
fi

NAMEN=(); IPS=(); USER=(); LANIPS=()
i=0
while [ "$i" -lt "$ZN" ]; do
    IFS='|' read -r n ip u lan <<< "${ZEILEN[$i]}"
    NAMEN[$i]="$n"; IPS[$i]="$ip"; USER[$i]="$u"; LANIPS[$i]="$lan"
    i=$((i+1))
done
N=$ZN

# --- Werkzeuge --------------------------------------------------------------
TS=""
for c in /Applications/Tailscale.app/Contents/MacOS/Tailscale /usr/local/bin/tailscale /opt/homebrew/bin/tailscale; do
    [ -x "$c" ] && { TS="$c"; break; }
done

ampel() { # $1 = ok|befund|unklar, $2 = Text
    case "$1" in
        ok)     printf '  [ ok ] %s\n' "$2" ;;
        befund) printf '  [BEFUND] %s\n' "$2"; BEFUNDE=$((BEFUNDE+1)) ;;
        unklar) printf '  [ ?? ] %s\n' "$2" ;;
    esac
}

# Bin ich diese Station selbst? Vergleich ueber die eigene Tailscale-IP,
# nicht ueber den Hostnamen (der kollidiert zwischen den beiden MacBooks).
MEINE_IP=""
[ -n "$TS" ] && MEINE_IP=$("$TS" ip -4 2>/dev/null | head -1)

ist_selbst() { [ -n "$MEINE_IP" ] && [ "$1" = "$MEINE_IP" ]; }

# Fuehrt ein Kommando lokal oder per SSH aus; Ausgabe auf stdout, rc erhalten.
auf_station() { # $1 = index, rest = Kommando
    local i="$1"; shift
    if ist_selbst "${IPS[$i]}"; then
        bash -c "$*" 2>/dev/null
    else
        ssh "${SSHOPT[@]}" "${USER[$i]}@${IPS[$i]}" "$*" 2>/dev/null
    fi
}

# Die Sonde: ein Durchgang je Station, alles in einem Aufruf (Latenz sparen).
sonde_code() {
cat <<'SONDE'
set -u
R="$HOME/Developer/jans-ai-hub"; N="/Volumes/daten/jans-ai-hub"
echo "host=$(hostname -s)"; echo "user=$(whoami)"; echo "zeit=$(date +%s)"
if [ -d "$N" ]; then
  echo "nas=ja"
  [ -r "$N/CLAUDE.md" ] && echo "nas_lesen=ja" || echo "nas_lesen=nein"
  t="$N/zettel/.vermaschung/schreibtest-$(hostname -s).$$"
  mkdir -p "$N/zettel/.vermaschung" 2>/dev/null
  if : > "$t" 2>/dev/null; then echo "nas_schreiben=ja"; rm -f "$t"; else echo "nas_schreiben=nein"; fi
else
  echo "nas=nein"; echo "nas_lesen=nein"; echo "nas_schreiben=nein"
fi
if [ -d "$R/.git" ]; then
  echo "repo=$R"
  echo "head=$(git -C "$R" rev-parse HEAD 2>/dev/null)"
  echo "branch=$(git -C "$R" rev-parse --abbrev-ref HEAD 2>/dev/null)"
  echo "dirty=$(git -C "$R" status --porcelain 2>/dev/null | wc -l | tr -d ' ')"
else
  echo "repo=fehlt"
fi
for s in skills agents commands; do
  l="$R/.claude/$s"
  if [ -L "$l" ]; then
    z=$(readlink "$l")
    case "$z" in /Volumes/daten/jans-ai-hub/*) echo "sym_$s=ok" ;; *) echo "sym_$s=zeigt-auf:$z" ;; esac
  elif [ -d "$l" ]; then echo "sym_$s=echtes-verzeichnis"
  else echo "sym_$s=fehlt"; fi
done
T=""
for c in /Applications/Tailscale.app/Contents/MacOS/Tailscale /usr/local/bin/tailscale /opt/homebrew/bin/tailscale; do
  [ -x "$c" ] && { T="$c"; break; }
done
if [ -n "$T" ]; then
  ip=$("$T" ip -4 2>/dev/null | head -1)
  echo "ts_ip=${ip:-KEINE}"
  echo "ts_meldung=$("$T" status 2>&1 | head -1 | cut -c1-60)"
else
  echo "ts_ip=KEIN-CLIENT"; echo "ts_meldung=Tailscale-CLI nicht gefunden"
fi
c=$(command -v claude 2>/dev/null)
if [ -n "$c" ]; then echo "claude=$c"
else
  a=$(ls -d "$HOME/Library/Application Support/Claude/claude-code/"*/claude.app/Contents/MacOS/claude 2>/dev/null | tail -1)
  [ -n "$a" ] && echo "claude=app-gebuendelt" || echo "claude=fehlt"
fi
[ -d "$N/sync-tasks" ] && echo "sync_tasks=ja" || echo "sync_tasks=nein"
[ -d "$N/remote-tasks" ] && echo "remote_tasks=ja" || echo "remote_tasks=nein"
SONDE
}

echo "============================================================"
echo " JANS Vermaschungs-Test — $(date '+%d.%m.%Y %H:%M:%S')"
echo " gestartet von: $ICH (${MEINE_IP:-Tailscale-IP unbekannt})"
echo " Stationen aus hub-setup-daten.json: $N"
echo "============================================================"

# ============================================================================
# E1 — Netzweg: erreichbar, nicht nur laufend
# ============================================================================
echo ""
echo "E1  NETZWEG (Tailnet und LAN getrennt gemessen)"
if [ -z "$TS" ]; then
    ampel unklar "Tailscale-CLI auf dieser Station nicht gefunden"
else
    erste=$("$TS" status 2>&1 | head -1)
    case "$erste" in
        *stopped*|*Logged\ out*|*logged\ out*)
            ampel befund "Tailscale hier: $erste  (Behebung: '$TS' up)" ;;
        *) ampel ok "Tailscale hier verbunden ($MEINE_IP)" ;;
    esac
fi
for i in $(seq 0 $((N-1))); do
    name="${NAMEN[$i]}"; ip="${IPS[$i]}"; lan="${LANIPS[$i]}"
    if ist_selbst "$ip"; then
        printf '  %-16s (diese Station)\n' "$name"
        continue
    fi
    tnet="zu"; lanz="-"
    nc -z -G 4 "$ip" 22 >/dev/null 2>&1 && tnet="offen"
    if [ "$lan" != "-" ]; then
        lanz="zu"
        nc -z -G 2 "$lan" 22 >/dev/null 2>&1 && lanz="offen"
    fi
    if [ "$tnet" = "offen" ] || [ "$lanz" = "offen" ]; then
        ampel ok "$(printf '%-16s Tailnet-SSH %-5s  LAN-SSH %s' "$name" "$tnet" "$lanz")"
    else
        ampel befund "$(printf '%-16s Tailnet-SSH %-5s  LAN-SSH %s  — Station nicht erreichbar' "$name" "$tnet" "$lanz")"
    fi
done

# ============================================================================
# E2 — SSH-Matrix: alle Richtungen, auch die selten benutzten
# ============================================================================
echo ""
echo "E2  SSH-MATRIX (Zeile = von, Spalte = nach; passwortlos, BatchMode)"
printf '  %-18s' "von \\ nach"
for j in $(seq 0 $((N-1))); do printf '%-18s' "${NAMEN[$j]}"; done; echo ""
MF_ANZ=0; MF_LISTE=""
for i in $(seq 0 $((N-1))); do
    printf '  %-18s' "${NAMEN[$i]}"
    for j in $(seq 0 $((N-1))); do
        if [ "$i" = "$j" ]; then printf '%-18s' "—"; continue; fi
        inner="ssh -o BatchMode=yes -o ConnectTimeout=8 -o StrictHostKeyChecking=accept-new -o LogLevel=ERROR ${USER[$j]}@${IPS[$j]} hostname"
        if ist_selbst "${IPS[$i]}"; then
            r=$(eval "$inner" 2>/dev/null)
        else
            r=$(ssh "${SSHOPT[@]}" "${USER[$i]}@${IPS[$i]}" "$inner" 2>/dev/null)
        fi
        if [ -n "$r" ]; then
            printf '%-18s' "ok"
        else
            printf '%-18s' "FEHLT"
            MF_ANZ=$((MF_ANZ+1)); MF_LISTE="$MF_LISTE${NAMEN[$i]} -> ${NAMEN[$j]}\n"
        fi
    done
    echo ""
done
if [ "$MF_ANZ" -eq 0 ]; then
    ampel ok "alle $((N*N-N)) Richtungen passwortlos offen — vollvermascht"
else
    printf '%b' "$MF_LISTE" | while IFS= read -r f; do
        [ -n "$f" ] && printf '  [BEFUND] Richtung fehlt: %s  (Schluessel der Quellstation in authorized_keys der Zielstation nachtragen)\n' "$f"
    done
    BEFUNDE=$((BEFUNDE+MF_ANZ))
fi

[ "$MODUS" = "--netz" ] && { echo ""; echo "Befunde: $BEFUNDE"; exit $([ "$BEFUNDE" -eq 0 ] && echo 0 || echo 1); }

# ============================================================================
# Sonden fahren (einmal je Station)
# ============================================================================
SONDE_AUS=()
for i in $(seq 0 $((N-1))); do SONDE_AUS[$i]=""; done
for i in $(seq 0 $((N-1))); do
    if ist_selbst "${IPS[$i]}"; then
        SONDE_AUS[$i]=$(sonde_code | bash 2>/dev/null)
    else
        SONDE_AUS[$i]=$(sonde_code | ssh "${SSHOPT[@]}" "${USER[$i]}@${IPS[$i]}" 'bash -s' 2>/dev/null)
    fi
done
feld() { printf '%s\n' "${SONDE_AUS[$1]}" | sed -n "s/^$2=//p" | head -1; }

# ============================================================================
# E3 — NAS: Mount, Lesen UND Schreiben
# ============================================================================
echo ""
echo "E3  NAS-BIBLIOTHEK (Mount, Lesen, Schreiben)"
for i in $(seq 0 $((N-1))); do
    m=$(feld $i nas); l=$(feld $i nas_lesen); w=$(feld $i nas_schreiben)
    if [ -z "$m" ]; then
        ampel unklar "$(printf '%-16s Sonde lieferte nichts (Station nicht erreichbar?)' "${NAMEN[$i]}")"
    elif [ "$m$l$w" = "jajaja" ]; then
        ampel ok "$(printf '%-16s gemountet, lesbar, beschreibbar' "${NAMEN[$i]}")"
    elif [ "$m" = "nein" ]; then
        ampel befund "$(printf '%-16s NAS NICHT gemountet — Skills/Rules/Wissen fehlen dieser Station' "${NAMEN[$i]}")"
    else
        ampel befund "$(printf '%-16s Mount=%s Lesen=%s Schreiben=%s' "${NAMEN[$i]}" "$m" "$l" "$w")"
    fi
done

# ============================================================================
# E4 — Datenumlauf: der eigentliche Beweis der geteilten Bibliothek
# ============================================================================
echo ""
echo "E4  DATENUMLAUF (eine Station schreibt, alle lesen zurueck)"
TOKEN="vermaschung-$(date +%s)-$RANDOM"
TFILE="$TESTDIR/umlauf.txt"
mkdir -p "$TESTDIR" 2>/dev/null
if printf '%s\n' "$TOKEN" > "$TFILE" 2>/dev/null; then
    ampel ok "Token von $ICH geschrieben nach zettel/.vermaschung/umlauf.txt"
    for i in $(seq 0 $((N-1))); do
        ist_selbst "${IPS[$i]}" && continue
        g=$(auf_station $i "cat '$TFILE' 2>/dev/null")
        if [ "$g" = "$TOKEN" ]; then
            ampel ok "$(printf '%-16s liest dasselbe Token zurueck' "${NAMEN[$i]}")"
        elif [ -z "$g" ]; then
            ampel befund "$(printf '%-16s sieht die Datei NICHT — kein gemeinsamer Wissensstand' "${NAMEN[$i]}")"
        else
            ampel befund "$(printf '%-16s liest einen ANDEREN Inhalt — Mount zeigt woanders hin' "${NAMEN[$i]}")"
        fi
    done
    rm -f "$TFILE"
else
    ampel befund "Token konnte hier nicht aufs NAS geschrieben werden"
fi

# ============================================================================
# E5 — Git: divergieren die Klone?
# ============================================================================
echo ""
echo "E5  GIT-STAND JE KLON"
HEADLISTE=""
for i in $(seq 0 $((N-1))); do
    h=$(feld $i head); b=$(feld $i branch); d=$(feld $i dirty); r=$(feld $i repo)
    if [ "$r" = "fehlt" ] || [ -z "$r" ]; then
        ampel unklar "$(printf '%-16s kein Repo unter ~/Developer/jans-ai-hub' "${NAMEN[$i]}")"
        continue
    fi
    HEADLISTE="$HEADLISTE$h\n"
    txt=$(printf '%-16s HEAD %s auf %s' "${NAMEN[$i]}" "$(printf '%s' "$h" | cut -c1-9)" "$b")
    if [ "${d:-0}" -gt 0 ] 2>/dev/null; then
        ampel unklar "$txt, $d ungesicherte Aenderungen"
    else
        ampel ok "$txt, sauber"
    fi
done
ANZ_HEADS=$(printf '%b' "$HEADLISTE" | sed '/^$/d' | sort -u | wc -l | tr -d ' ')
if [ "${ANZ_HEADS:-0}" -le 1 ]; then
    ampel ok "alle Klone auf demselben Commit"
else
    ampel unklar "$ANZ_HEADS verschiedene HEADs — eine Station hinkt nach (git pull; NAS-Committer laeuft alle 15 Min)"
fi

# ============================================================================
# E6 — Symlinks in die Bibliothek
# ============================================================================
echo ""
echo "E6  SKILL-SYMLINKS (.claude/skills|agents|commands -> NAS)"
for i in $(seq 0 $((N-1))); do
    s1=$(feld $i sym_skills); s2=$(feld $i sym_agents); s3=$(feld $i sym_commands)
    if [ -z "$s1$s2$s3" ]; then
        ampel unklar "$(printf '%-16s nicht messbar' "${NAMEN[$i]}")"
    elif [ "$s1" = "ok" ] && [ "$s2" = "ok" ] && [ "$s3" = "ok" ]; then
        ampel ok "$(printf '%-16s alle drei zeigen aufs NAS' "${NAMEN[$i]}")"
    else
        ampel befund "$(printf '%-16s skills=%s agents=%s commands=%s  (Fix: bash scripts/setup-nas-skills.sh)' "${NAMEN[$i]}" "$s1" "$s2" "$s3")"
    fi
done

# ============================================================================
# E7 — Uhrendrift (datierte Eintraege haengen daran)
# ============================================================================
echo ""
echo "E7  UHRENDRIFT (Schwelle 10 s; SSH-Latenz ist mitgemessen)"
JETZT=$(date +%s)
for i in $(seq 0 $((N-1))); do
    z=$(feld $i zeit)
    if [ -z "$z" ]; then ampel unklar "$(printf '%-16s nicht messbar' "${NAMEN[$i]}")"; continue; fi
    d=$(( z > JETZT ? z - JETZT : JETZT - z ))
    if [ "$d" -le 10 ]; then
        ampel ok "$(printf '%-16s Abweichung %s s' "${NAMEN[$i]}" "$d")"
    else
        ampel befund "$(printf '%-16s Abweichung %s s — datierte Eintraege dieser Station sind unzuverlaessig' "${NAMEN[$i]}" "$d")"
    fi
done

# ============================================================================
# E8/E9 — Lauffaehigkeit und Rueckkanal
# ============================================================================
echo ""
echo "E8  CLAUDE-CLI UND RUECKKANAELE"
for i in $(seq 0 $((N-1))); do
    c=$(feld $i claude); st=$(feld $i sync_tasks); rt=$(feld $i remote_tasks)
    if [ -z "$c" ]; then ampel unklar "$(printf '%-16s nicht messbar' "${NAMEN[$i]}")"; continue; fi
    if [ "$c" = "fehlt" ]; then
        ampel befund "$(printf '%-16s keine Claude-CLI — Station kann keine Laeufe tragen' "${NAMEN[$i]}")"
    else
        ampel ok "$(printf '%-16s CLI %s · sync-tasks %s · remote-tasks %s' "${NAMEN[$i]}" "$c" "$st" "$rt")"
    fi
done

# ============================================================================
# Fazit
# ============================================================================
echo ""
echo "============================================================"
if [ "$BEFUNDE" -eq 0 ]; then
    echo " ERGEBNIS: vollstaendig vermascht — keine Befunde"
    echo "============================================================"
    exit 0
else
    echo " ERGEBNIS: $BEFUNDE Befund(e) — siehe [BEFUND]-Zeilen oben"
    echo " Erreichbarkeit von aussen ist P1 (Rule auto-verbesserungen 260824)."
    echo "============================================================"
    exit 1
fi
