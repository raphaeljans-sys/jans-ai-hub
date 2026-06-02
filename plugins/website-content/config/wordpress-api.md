# WordPress REST API — raphaeljans.ch

## Basis

| Einstellung | Wert |
|---|---|
| Base URL | `https://raphaeljans.ch` |
| API Root | `/wp-json/wp/v2/` |
| Auth | HTTP Basic (Application Password) |
| Custom Post Type | `project` |

## Authentifizierung

```bash
# Credentials aus .env laden
source ~/Developer/jans-ai-hub/.env
AUTH=$(echo -n "${WP_USER}:${WP_APP_PASSWORD}" | base64)

# Auth-Header
-H "Authorization: Basic ${AUTH}"
```

## Endpoints

### Projekte

| Methode | Endpoint | Beschreibung |
|---|---|---|
| GET | `/wp-json/wp/v2/project?per_page=100` | Alle Projekte auflisten |
| GET | `/wp-json/wp/v2/project/{id}` | Einzelnes Projekt lesen |
| POST | `/wp-json/wp/v2/project` | Neues Projekt erstellen |
| PUT | `/wp-json/wp/v2/project/{id}` | Projekt aktualisieren |
| DELETE | `/wp-json/wp/v2/project/{id}` | Projekt loeschen |

### POST /project Body

```json
{
  "title": "Project Title",
  "content": "<!-- wp:gallery ... --> ... <!-- /wp:gallery -->",
  "status": "draft",
  "featured_media": 123,
  "format": [64],
  "intervention": [59],
  "phase": [45],
  "scale": [18],
  "typology": [49],
  "use": [34]
}
```

### Medien

| Methode | Endpoint | Beschreibung |
|---|---|---|
| POST | `/wp-json/wp/v2/media` | Bild hochladen |
| PUT | `/wp-json/wp/v2/media/{id}` | Alt-Text/Caption setzen |
| DELETE | `/wp-json/wp/v2/media/{id}?force=true` | Bild loeschen |

### POST /media (Bild-Upload)

```bash
curl -X POST "${WP_BASE_URL}/wp-json/wp/v2/media" \
  -H "Authorization: Basic ${AUTH}" \
  -H "Content-Disposition: attachment; filename=\"bild.jpg\"" \
  -H "Content-Type: image/jpeg" \
  --data-binary @"/pfad/zum/bild.jpg"
```

Rueckgabe: `{ "id": 123, "source_url": "https://..." }`

### PUT /media/{id} (Metadaten setzen)

```bash
curl -X PUT "${WP_BASE_URL}/wp-json/wp/v2/media/123" \
  -H "Authorization: Basic ${AUTH}" \
  -H "Content-Type: application/json" \
  -d '{"alt_text": "Beschreibung", "caption": "Bildunterschrift"}'
```

### Taxonomien abfragen

```bash
curl -s "${WP_BASE_URL}/wp-json/wp/v2/format" | jq '.[] | {name, slug, id}'
curl -s "${WP_BASE_URL}/wp-json/wp/v2/intervention"
curl -s "${WP_BASE_URL}/wp-json/wp/v2/phase"
curl -s "${WP_BASE_URL}/wp-json/wp/v2/scale"
curl -s "${WP_BASE_URL}/wp-json/wp/v2/typology"
curl -s "${WP_BASE_URL}/wp-json/wp/v2/use"
```

## Status-Werte

| Status | Beschreibung |
|---|---|
| `draft` | Entwurf (nicht oeffentlich) |
| `publish` | Veroeffentlicht |
| `pending` | Zur Pruefung |
| `private` | Privat (nur Admin) |

## Wichtig

- Immer zuerst als `draft` erstellen, nie direkt `publish`
- Bilder IMMER vor dem Projekt hochladen (Media-IDs benoetigt)
- Featured Image ueber `featured_media` setzen (Media-ID)
- Content muss valides Gutenberg-Block-HTML sein
