#!/bin/bash
# ============================================================================
# JANS AI Hub — Wege-Doctor (Werkzeug-Grundversorgung pruefen und reparieren)
# ============================================================================
# Auftrag Raphael 09.08.2026 nach dem KISPI-Vorfall.
#
# DAS PROBLEM, das dieses Script loest:
# In der Nacht auf den 09.08.2026 konnte der Gastzugriff auf die Projektsite
# «JANS - 2619-KISPI» nicht verlaengert werden. Die Ursache war NICHT eine
# fehlende Berechtigung: die CLI for Microsoft 365 war die ganze Zeit per
# Zertifikat angemeldet, mit Sites.FullControl.All und Mail.Send, gueltig bis
# Maerz 2028. Sie wurde nur nicht gefunden, weil sie nicht im PATH liegt,
# sondern ausschliesslich unter
#     ~/Developer/jans-ai-hub/node_modules/.bin/m365
# Zusaetzlich fehlte node_modules auf dem NAS-Pfad komplett. Beide Defekte
# lagen seit Wochen vor, ohne dass sie jemandem auffielen.
#
# DIESES SCRIPT ist die Gegenmassnahme: es misst den Zustand jedes Weges und
# repariert, was mechanisch reparierbar ist. Was es nicht selbst richten kann,
# meldet es namentlich, statt es stillschweigend zu uebergehen.
#
# VERWENDUNG:
#     bash scripts/wege-doctor.sh              # pruefen und reparieren
#     bash scripts/wege-doctor.sh --nur-pruefen # nur messen, nichts aendern
#     bash scripts/wege-doctor.sh --leise       # nur Defekte ausgeben
#
# Exit 0 = alle Wege tragen (ggf. nach Reparatur).
# Exit 1 = mindestens ein Weg ist tot und nicht selbst behebbar.
# ============================================================================

set -uo pipefail
export LANG="${LANG:-de_CH.UTF-8}"
export LC_ALL="${LC_ALL:-de_CH.UTF-8}"

REPARIEREN=1
LEISE=0
for arg in "$@"; do
    case "$arg" in
        --nur-pruefen) REPARIEREN=0 ;;
        --leise)       LEISE=1 ;;
        --hilfe|-h)    sed -n '2,30p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    esac
done

SSD="$HOME/Developer/jans-ai-hub"
NAS="/Volumes/daten/jans-ai-hub"
STATION="$(hostname -s)"
LOGDIR="$NAS/logbuch/wege"
LOGFILE="$LOGDIR/doctor-${STATION}.log"

DEFEKT=0
REPARIERT=0

log() {
    mkdir -p "$LOGDIR" 2>/dev/null
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$STATION] $*" >> "$LOGFILE" 2>/dev/null
}

ok()      { [ "$LEISE" -eq 1 ] || echo "  ok       $*"; log "ok: $*"; }
fix()     { echo "  repariert $*"; log "repariert: $*"; REPARIERT=$((REPARIERT+1)); }
fehlt()   { echo "  DEFEKT   $*"; log "DEFEKT: $*"; DEFEKT=$((DEFEKT+1)); }
hinweis() { [ "$LEISE" -eq 1 ] || echo "  hinweis  $*"; log "hinweis: $*"; }

titel() { [ "$LEISE" -eq 1 ] || { echo; echo "$*"; }; }

# --- 1. Grundpfade -----------------------------------------------------------
titel "Grundpfade"

if [ -d "$SSD" ]; then ok "SSD-Klon $SSD"; else fehlt "SSD-Klon fehlt: $SSD"; fi

if [ -d "$NAS" ]; then
    ok "NAS gemountet"
else
    fehlt "NAS nicht gemountet (/Volumes/daten) — Buero: open smb://192.168.1.10/daten"
fi

# --- 2. node und npm ---------------------------------------------------------
titel "Node-Umgebung"

NODE_BIN="$(command -v node 2>/dev/null)"
if [ -n "$NODE_BIN" ]; then
    ok "node $($NODE_BIN --version 2>/dev/null) ($NODE_BIN)"
else
    fehlt "node nicht gefunden — ohne node laufen die Connectoren nicht"
fi

# --- 3. node_modules im SSD-Klon --------------------------------------------
titel "Abhaengigkeiten"

if [ -d "$SSD/node_modules" ]; then
    ok "node_modules im SSD-Klon vorhanden"
elif [ "$REPARIEREN" -eq 1 ] && [ -f "$SSD/package.json" ] && [ -n "$NODE_BIN" ]; then
    echo "  ... npm install im SSD-Klon laeuft"
    if (cd "$SSD" && npm install --silent >/dev/null 2>&1); then
        fix "node_modules per npm install erzeugt"
    else
        fehlt "npm install im SSD-Klon fehlgeschlagen"
    fi
else
    fehlt "node_modules fehlt im SSD-Klon (npm install noetig)"
fi

# Das NAS-Repo braucht bewusst KEIN node_modules: die Connectoren laufen aus
# dem SSD-Klon. Fehlt es dort, ist das kein Defekt, sondern der Normalfall.

# --- 4. M365-CLI auffindbar machen ------------------------------------------
titel "CLI for Microsoft 365"

M365_REAL=""
for kandidat in \
    "$SSD/node_modules/.bin/m365" \
    "$HOME/.npm-global/bin/m365" \
    "$(command -v m365 2>/dev/null)"
do
    [ -n "$kandidat" ] && [ -e "$kandidat" ] && { M365_REAL="$kandidat"; break; }
done

if [ -z "$M365_REAL" ]; then
    fehlt "m365 nirgends gefunden — Weg 1 zu M365 ist tot"
else
    ok "m365 gefunden: $M365_REAL"

    # Shim, damit der Weg auch ohne Kenntnis des Pfades greifbar ist
    SHIM="$HOME/.local/bin/m365"
    if [ -x "$SHIM" ]; then
        ok "PATH-Shim vorhanden: $SHIM"
    elif [ "$REPARIEREN" -eq 1 ]; then
        mkdir -p "$HOME/.local/bin" 2>/dev/null
        cat > "$SHIM" <<SHIMEOF
#!/bin/bash
# Auto-erzeugt von scripts/wege-doctor.sh — zeigt auf die lokale CLI-Installation.
exec "$M365_REAL" "\$@"
SHIMEOF
        chmod +x "$SHIM" 2>/dev/null && fix "PATH-Shim angelegt: $SHIM" \
            || fehlt "PATH-Shim konnte nicht angelegt werden"
    else
        hinweis "PATH-Shim fehlt: $SHIM"
    fi

    # PATH-Ergaenzung in der zsh-Konfiguration, idempotent
    ZSHRC="$HOME/.zshrc"
    if [ -f "$ZSHRC" ] && grep -q '\.local/bin' "$ZSHRC" 2>/dev/null; then
        ok "~/.local/bin liegt im PATH (zshrc)"
    elif [ "$REPARIEREN" -eq 1 ]; then
        printf '\n# JANS AI Hub — Werkzeugpfade (wege-doctor.sh)\nexport PATH="$HOME/.local/bin:$PATH"\n' >> "$ZSHRC" \
            && fix "PATH-Ergaenzung in ~/.zshrc eingetragen" \
            || hinweis "PATH-Ergaenzung in ~/.zshrc nicht moeglich"
    else
        hinweis "~/.local/bin fehlt im PATH"
    fi
fi

# --- 5. M365-Anmeldung -------------------------------------------------------
titel "M365-Anmeldung (Zertifikat)"

CERT_COMBINED="$HOME/.cli-m365-cert-combined.pem"
CERT_PUB="$HOME/.cli-m365-cert.pem"
APP_ID="80c24101-4597-48db-8388-c6e8bdc75f5f"
TENANT_ID="d3ea8e1a-8ecc-479d-b831-6c0784ee0b51"

if [ -f "$CERT_COMBINED" ]; then
    ok "Zertifikat vorhanden: $CERT_COMBINED"
else
    fehlt "Zertifikat fehlt: $CERT_COMBINED (Anleitung docs/referenz/m365-zertifikat-erneuern.md)"
fi

# Ablaufdatum aus dem oeffentlichen Zertifikat lesen (kein privater Schluessel)
if [ -f "$CERT_PUB" ] && command -v openssl >/dev/null 2>&1; then
    ENDE="$(openssl x509 -in "$CERT_PUB" -noout -enddate 2>/dev/null | cut -d= -f2)"
    if [ -n "$ENDE" ]; then
        ENDE_TS="$(date -j -f "%b %d %T %Y %Z" "$ENDE" "+%s" 2>/dev/null)"
        JETZT_TS="$(date "+%s")"
        if [ -n "$ENDE_TS" ]; then
            TAGE=$(( (ENDE_TS - JETZT_TS) / 86400 ))
            if   [ "$TAGE" -lt 0 ];  then fehlt "Zertifikat ABGELAUFEN seit $((-TAGE)) Tagen"
            elif [ "$TAGE" -lt 60 ]; then fehlt "Zertifikat laeuft in $TAGE Tagen ab — erneuern"
            else ok "Zertifikat gueltig noch $TAGE Tage"
            fi
        fi
    fi
fi

if [ -n "$M365_REAL" ]; then
    STATUS_JSON="$("$M365_REAL" status --output json 2>/dev/null)"
    if echo "$STATUS_JSON" | grep -q '"authType": *"certificate"'; then
        ok "angemeldet als $(echo "$STATUS_JSON" | sed -n 's/.*"connectedAs": *"\([^"]*\)".*/\1/p')"
    elif [ "$REPARIEREN" -eq 1 ] && [ -f "$CERT_COMBINED" ]; then
        echo "  ... m365 login mit Zertifikat"
        if "$M365_REAL" login --authType certificate \
             --certificateFile "$CERT_COMBINED" \
             --appId "$APP_ID" --tenant "$TENANT_ID" >/dev/null 2>&1; then
            fix "M365-Anmeldung erneuert"
        else
            fehlt "M365-Anmeldung fehlgeschlagen"
        fi
    else
        fehlt "M365 nicht angemeldet"
    fi
fi

# --- 6. Zweiter Weg: eigener Graph-Connector --------------------------------
titel "Zweiter Graph-Weg"

GRAPH_CONN="$NAS/connectors/m365-graph.mjs"
if [ -f "$GRAPH_CONN" ]; then
    if [ -n "$NODE_BIN" ] && "$NODE_BIN" "$GRAPH_CONN" --selbsttest >/dev/null 2>&1; then
        ok "m365-graph.mjs traegt"
    else
        fehlt "m365-graph.mjs vorhanden, Selbsttest schlaegt fehl"
    fi
else
    hinweis "m365-graph.mjs noch nicht gebaut"
fi

# --- 7. PowerShell und PnP ---------------------------------------------------
titel "PowerShell (dritter Weg)"

if command -v pwsh >/dev/null 2>&1; then
    PNP="$(pwsh -NoProfile -Command "(Get-Module -ListAvailable PnP.PowerShell | Select-Object -First 1).Version.ToString()" 2>/dev/null | tr -d '\r' | tr -d '\n')"
    if [ -n "$PNP" ]; then ok "PnP.PowerShell $PNP"; else hinweis "pwsh ohne PnP.PowerShell"; fi
else
    hinweis "pwsh nicht installiert (dritter Weg entfaellt)"
fi

# --- 8. Secret-Dateien: Rechte haerten --------------------------------------
titel "Secret-Dateien"

# Der CLI-Verbindungs-Cache enthaelt privaten Schluessel UND gueltige Tokens
# im Klartext. Er lag bis 09.08.2026 mit 644 und damit lockerer als jede
# andere Secret-Datei im Hub.
for f in "$HOME/.cli-m365-connection.json" \
         "$HOME/.cli-m365-all-connections.json" \
         "$HOME/.cli-m365-msal.json" \
         "$HOME/.cli-m365-cert-combined.pem" \
         "$HOME/.cli-m365-cert-key.pem" \
         "$HOME/.bexio.env" "$HOME/.truninger-ds3.env" \
         "$HOME/.zefix.env" "$HOME/.versand.env" \
         "$HOME/.ebaugesuche-zh.env" "$HOME/.ebaugesuche-zh.session.json"
do
    [ -f "$f" ] || continue
    RECHTE="$(stat -f "%OLp" "$f" 2>/dev/null)"
    if [ "$RECHTE" = "600" ]; then
        ok "$(basename "$f") 600"
    elif [ "$REPARIEREN" -eq 1 ]; then
        chmod 600 "$f" 2>/dev/null && fix "$(basename "$f") von $RECHTE auf 600 gesetzt" \
            || fehlt "$(basename "$f") liegt mit $RECHTE, chmod fehlgeschlagen"
    else
        fehlt "$(basename "$f") liegt mit $RECHTE statt 600"
    fi
done

# --- 9. Credential-Dateien, die fehlen --------------------------------------
titel "Credential-Bestand"

pruefe_cred() {
    if [ -f "$2" ]; then ok "$1 einsatzbereit"; else hinweis "$1 nicht eingerichtet ($2 fehlt)"; fi
}
pruefe_cred "bexio"          "$HOME/.bexio.env"
pruefe_cred "Truninger DS3"  "$HOME/.truninger-ds3.env"
pruefe_cred "Zefix"          "$HOME/.zefix.env"
pruefe_cred "Versand"        "$HOME/.versand.env"
pruefe_cred "eBaugesucheZH"  "$HOME/.ebaugesuche-zh.env"

# --- 10. Mailweg -------------------------------------------------------------
titel "Mailweg"

if osascript -e 'tell application id "com.apple.mail" to get name' >/dev/null 2>&1; then
    ok "Apple Mail erreichbar (osascript)"
else
    hinweis "Apple Mail nicht erreichbar — Graph Mail.Send bleibt als Zweitweg"
fi

# --- Fazit -------------------------------------------------------------------
echo
if [ "$DEFEKT" -eq 0 ]; then
    echo "Alle Wege tragen. Reparaturen: $REPARIERT"
    log "FAZIT ok, repariert=$REPARIERT"
    exit 0
else
    echo "Offene Defekte: $DEFEKT (Reparaturen: $REPARIERT)"
    log "FAZIT defekt=$DEFEKT repariert=$REPARIERT"
    exit 1
fi
