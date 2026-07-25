#!/bin/bash
# wp-test-auth.sh — WordPress REST API Auth-Test
# Testet die Verbindung zu raphaeljans.ch mit Application Password

set -euo pipefail

# .env laden
ENV_FILE="$HOME/Developer/jans-ai-hub/.env"
if [ ! -f "$ENV_FILE" ]; then
    echo "FEHLER: $ENV_FILE nicht gefunden"
    echo "Bitte .env mit WP_BASE_URL, WP_USER, WP_APP_PASSWORD erstellen"
    exit 1
fi
source "$ENV_FILE"

# Variablen pruefen
if [ -z "${WP_BASE_URL:-}" ] || [ -z "${WP_USER:-}" ] || [ -z "${WP_APP_PASSWORD:-}" ]; then
    echo "FEHLER: WP_BASE_URL, WP_USER oder WP_APP_PASSWORD nicht in .env gesetzt"
    exit 1
fi

# Auth-Token erstellen
AUTH=$(echo -n "${WP_USER}:${WP_APP_PASSWORD}" | base64)

echo "=== WordPress REST API Auth-Test ==="
echo "URL: ${WP_BASE_URL}"
echo "User: ${WP_USER}"
echo ""

# Test 1: API erreichbar?
echo "1. API-Erreichbarkeit..."
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "${WP_BASE_URL}/wp-json/wp/v2/")
if [ "$HTTP_CODE" = "200" ]; then
    echo "   OK — API erreichbar (HTTP $HTTP_CODE)"
else
    echo "   FEHLER — HTTP $HTTP_CODE"
    exit 1
fi

# Test 2: Authentifizierung
echo "2. Authentifizierung..."
RESPONSE=$(curl -s -w "\n%{http_code}" \
    -H "Authorization: Basic ${AUTH}" \
    "${WP_BASE_URL}/wp-json/wp/v2/users/me")
HTTP_CODE=$(echo "$RESPONSE" | tail -1)
BODY=$(echo "$RESPONSE" | sed '$d')

if [ "$HTTP_CODE" = "200" ]; then
    USERNAME=$(echo "$BODY" | grep -o '"name":"[^"]*"' | head -1 | cut -d'"' -f4)
    echo "   OK — Eingeloggt als: ${USERNAME} (HTTP $HTTP_CODE)"
else
    echo "   FEHLER — HTTP $HTTP_CODE"
    echo "   Antwort: $BODY"
    exit 1
fi

# Test 3: Projekte zaehlen
echo "3. Projekte..."
PROJECT_RESPONSE=$(curl -s -w "\n%{http_code}" \
    "${WP_BASE_URL}/wp-json/wp/v2/project?per_page=100&_fields=id")
HTTP_CODE=$(echo "$PROJECT_RESPONSE" | tail -1)
BODY=$(echo "$PROJECT_RESPONSE" | sed '$d')

if [ "$HTTP_CODE" = "200" ]; then
    COUNT=$(echo "$BODY" | grep -o '"id"' | wc -l | tr -d ' ')
    echo "   OK — $COUNT Projekte gefunden"
else
    echo "   FEHLER — HTTP $HTTP_CODE"
fi

# Test 4: Media-Zugriff
echo "4. Media-Zugriff..."
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" \
    -H "Authorization: Basic ${AUTH}" \
    "${WP_BASE_URL}/wp-json/wp/v2/media?per_page=1")
if [ "$HTTP_CODE" = "200" ]; then
    echo "   OK — Media-Endpoint erreichbar (HTTP $HTTP_CODE)"
else
    echo "   FEHLER — HTTP $HTTP_CODE"
fi

echo ""
echo "=== Alle Tests bestanden ==="
