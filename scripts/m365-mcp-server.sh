#!/bin/bash
# ============================================================================
# JANS AI Hub — M365 MCP Server Wrapper (Certificate Auth)
# ============================================================================
# Laedt Credentials aus .env, prueft Certificate-Login und startet den
# MCP-Server. Wird von .mcp.json als Command aufgerufen.
#
# Auth: Certificate-based (noetig fuer SharePoint SPO-Befehle)
# ============================================================================

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

# .env laden (Credentials)
if [ -f "$PROJECT_DIR/.env" ]; then
    set -a
    source "$PROJECT_DIR/.env"
    set +a
else
    echo "FEHLER: $PROJECT_DIR/.env nicht gefunden" >&2
    exit 1
fi

# node_modules/.bin in PATH (fuer m365 CLI)
export PATH="$PROJECT_DIR/node_modules/.bin:$PATH"

# CLI M365 Umgebungsvariablen setzen
export CLIMICROSOFT365_ENTRAAPPID="${MICROSOFT_CLIENT_ID}"
export CLIMICROSOFT365_TENANT="${MICROSOFT_TENANT_ID}"

# Certificate-Pfad expandieren (~ ersetzen)
CERT_FILE="${MICROSOFT_CERTIFICATE_FILE/#\~/$HOME}"

# Pruefen ob Zertifikat existiert
if [ ! -f "$CERT_FILE" ]; then
    echo "FEHLER: Zertifikat nicht gefunden: $CERT_FILE" >&2
    echo "Erstelle es mit: openssl req -x509 -newkey rsa:2048 -keyout ~/.cli-m365-cert-key.pem -out ~/.cli-m365-cert.pem -days 730 -nodes -subj '/CN=JANS-AI-Hub-M365'" >&2
    exit 1
fi

# Pruefen ob bereits mit Certificate eingeloggt
CURRENT_AUTH=$(grep -o '"authType":"[^"]*"' ~/.cli-m365-connection.json 2>/dev/null | head -1)

if [ "$CURRENT_AUTH" != '"authType":"certificate"' ]; then
    echo "M365: Login mit Certificate..." >&2
    m365 login \
        --authType certificate \
        --certificateFile "$CERT_FILE" \
        --appId "$MICROSOFT_CLIENT_ID" \
        --tenant "$MICROSOFT_TENANT_ID" 2>&1 >&2

    if [ $? -ne 0 ]; then
        echo "FEHLER: M365 Certificate-Login fehlgeschlagen" >&2
        exit 1
    fi
    echo "M365: Certificate-Login erfolgreich" >&2
fi

# MCP-Server starten
exec node "$PROJECT_DIR/node_modules/@pnp/cli-microsoft365-mcp-server/dist/index.js"
