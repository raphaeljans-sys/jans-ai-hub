#!/bin/bash
# wp-upload-image.sh — Bild auf WordPress Media Library hochladen
#
# Usage: wp-upload-image.sh <dateipfad> [alt_text] [caption]
# Output: JSON mit id und source_url

set -euo pipefail

# Parameter
FILE_PATH="${1:-}"
ALT_TEXT="${2:-}"
CAPTION="${3:-}"

if [ -z "$FILE_PATH" ]; then
    echo "Usage: wp-upload-image.sh <dateipfad> [alt_text] [caption]"
    exit 1
fi

if [ ! -f "$FILE_PATH" ]; then
    echo "FEHLER: Datei nicht gefunden: $FILE_PATH"
    exit 1
fi

# .env laden
source "$HOME/Developer/jans-ai-hub/.env"
AUTH=$(echo -n "${WP_USER}:${WP_APP_PASSWORD}" | base64)

# Dateiname und MIME-Type bestimmen
FILENAME=$(basename "$FILE_PATH")
EXTENSION="${FILENAME##*.}"
case "${EXTENSION,,}" in
    jpg|jpeg) MIME_TYPE="image/jpeg" ;;
    png) MIME_TYPE="image/png" ;;
    gif) MIME_TYPE="image/gif" ;;
    webp) MIME_TYPE="image/webp" ;;
    tiff|tif) MIME_TYPE="image/tiff" ;;
    *) echo "FEHLER: Unbekannter Dateityp: $EXTENSION"; exit 1 ;;
esac

# Dateigroesse pruefen
FILE_SIZE=$(stat -f%z "$FILE_PATH" 2>/dev/null || stat --printf="%s" "$FILE_PATH" 2>/dev/null)
FILE_SIZE_MB=$((FILE_SIZE / 1024 / 1024))
if [ "$FILE_SIZE_MB" -gt 2 ]; then
    echo "WARNUNG: Datei ist ${FILE_SIZE_MB}MB gross (empfohlen: <2MB)" >&2
fi

# Upload
RESPONSE=$(curl -s -w "\n%{http_code}" \
    -X POST "${WP_BASE_URL}/wp-json/wp/v2/media" \
    -H "Authorization: Basic ${AUTH}" \
    -H "Content-Disposition: attachment; filename=\"${FILENAME}\"" \
    -H "Content-Type: ${MIME_TYPE}" \
    --data-binary @"${FILE_PATH}")

HTTP_CODE=$(echo "$RESPONSE" | tail -1)
BODY=$(echo "$RESPONSE" | sed '$d')

if [ "$HTTP_CODE" != "201" ]; then
    echo "FEHLER: Upload fehlgeschlagen (HTTP $HTTP_CODE)"
    echo "$BODY" >&2
    exit 1
fi

# Media-ID und URL extrahieren
MEDIA_ID=$(echo "$BODY" | grep -o '"id":[0-9]*' | head -1 | cut -d: -f2)
SOURCE_URL=$(echo "$BODY" | grep -o '"source_url":"[^"]*"' | head -1 | cut -d'"' -f4)

# Alt-Text und Caption setzen (falls angegeben)
if [ -n "$ALT_TEXT" ] || [ -n "$CAPTION" ]; then
    UPDATE_DATA="{}"
    if [ -n "$ALT_TEXT" ] && [ -n "$CAPTION" ]; then
        UPDATE_DATA="{\"alt_text\": \"${ALT_TEXT}\", \"caption\": \"${CAPTION}\"}"
    elif [ -n "$ALT_TEXT" ]; then
        UPDATE_DATA="{\"alt_text\": \"${ALT_TEXT}\"}"
    elif [ -n "$CAPTION" ]; then
        UPDATE_DATA="{\"caption\": \"${CAPTION}\"}"
    fi

    curl -s -o /dev/null \
        -X PUT "${WP_BASE_URL}/wp-json/wp/v2/media/${MEDIA_ID}" \
        -H "Authorization: Basic ${AUTH}" \
        -H "Content-Type: application/json" \
        -d "$UPDATE_DATA"
fi

# Ergebnis ausgeben (maschinenlesbar)
echo "{\"id\": ${MEDIA_ID}, \"source_url\": \"${SOURCE_URL}\", \"filename\": \"${FILENAME}\"}"
