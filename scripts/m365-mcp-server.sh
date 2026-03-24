#!/bin/bash
# ============================================================================
# JANS AI Hub — M365 MCP Server Wrapper
# ============================================================================
# Laedt Credentials aus .env und startet den MCP-Server.
# Wird von .mcp.json als Command aufgerufen.
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

# MCP-Server starten
exec node "$PROJECT_DIR/node_modules/@pnp/cli-microsoft365-mcp-server/dist/index.js"
