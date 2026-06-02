#!/bin/bash
# wp-create-project.sh — Projekt-Draft auf WordPress erstellen
#
# Usage: wp-create-project.sh <titel> <content_file> <featured_media_id> [taxonomie_json]
#
# taxonomie_json Format: '{"format":[64],"intervention":[59],"phase":[45],"scale":[18],"typology":[49],"use":[34]}'
# content_file: Pfad zu einer Datei mit dem Gutenberg-Block-HTML

set -euo pipefail

# Parameter
TITLE="${1:-}"
CONTENT_FILE="${2:-}"
FEATURED_MEDIA="${3:-}"
TAXONOMY_JSON="${4:-{\}}"

if [ -z "$TITLE" ] || [ -z "$CONTENT_FILE" ] || [ -z "$FEATURED_MEDIA" ]; then
    echo "Usage: wp-create-project.sh <titel> <content_file> <featured_media_id> [taxonomie_json]"
    echo ""
    echo "Beispiel:"
    echo "  wp-create-project.sh \"My Project\" /tmp/content.html 123 '{\"format\":[64],\"phase\":[45]}'"
    exit 1
fi

if [ ! -f "$CONTENT_FILE" ]; then
    echo "FEHLER: Content-Datei nicht gefunden: $CONTENT_FILE"
    exit 1
fi

# .env laden
source "$HOME/Developer/jans-ai-hub/.env"
AUTH=$(echo -n "${WP_USER}:${WP_APP_PASSWORD}" | base64)

# Content aus Datei lesen und JSON-escapen
CONTENT=$(cat "$CONTENT_FILE" | python3 -c "import sys,json; print(json.dumps(sys.stdin.read()))")

# JSON-Body zusammenbauen
# Basis-Felder
JSON_BODY=$(cat <<ENDJSON
{
  "title": $(echo "$TITLE" | python3 -c "import sys,json; print(json.dumps(sys.stdin.read().strip()))"),
  "content": ${CONTENT},
  "status": "draft",
  "featured_media": ${FEATURED_MEDIA}
}
ENDJSON
)

# Taxonomien hinzufuegen falls vorhanden
if [ "$TAXONOMY_JSON" != "{}" ] && [ -n "$TAXONOMY_JSON" ]; then
    # Taxonomie-Felder in den Body mergen
    JSON_BODY=$(echo "$JSON_BODY" "$TAXONOMY_JSON" | python3 -c "
import sys, json
parts = sys.stdin.read().split('}')
base = json.loads(parts[0] + '}')
if len(parts) > 2:
    tax = json.loads('{' + parts[1].lstrip() + '}')
    base.update(tax)
print(json.dumps(base))
")
fi

# Projekt erstellen
RESPONSE=$(curl -s -w "\n%{http_code}" \
    -X POST "${WP_BASE_URL}/wp-json/wp/v2/project" \
    -H "Authorization: Basic ${AUTH}" \
    -H "Content-Type: application/json" \
    -d "$JSON_BODY")

HTTP_CODE=$(echo "$RESPONSE" | tail -1)
BODY=$(echo "$RESPONSE" | sed '$d')

if [ "$HTTP_CODE" != "201" ]; then
    echo "FEHLER: Projekt-Erstellung fehlgeschlagen (HTTP $HTTP_CODE)"
    echo "$BODY" >&2
    exit 1
fi

# Ergebnis extrahieren
POST_ID=$(echo "$BODY" | grep -o '"id":[0-9]*' | head -1 | cut -d: -f2)
SLUG=$(echo "$BODY" | grep -o '"slug":"[^"]*"' | head -1 | cut -d'"' -f4)
LINK=$(echo "$BODY" | grep -o '"link":"[^"]*"' | head -1 | cut -d'"' -f4)

echo "=== Projekt-Draft erstellt ==="
echo "ID:      ${POST_ID}"
echo "Slug:    ${SLUG}"
echo "Status:  draft"
echo "Link:    ${LINK}"
echo "Preview: ${WP_BASE_URL}/?p=${POST_ID}&preview=true"
echo "Admin:   ${WP_BASE_URL}/wp-admin/post.php?post=${POST_ID}&action=edit"
