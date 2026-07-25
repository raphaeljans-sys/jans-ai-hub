# Website Content Agent — Plugin

WordPress Content-Management fuer raphaeljans.ch

## Zweck

Automatisierter Upload von Architektur-Projektseiten auf WordPress via REST API.
Workflow: Quellordner waehlen → Bilder scannen → Metadaten abfragen → Upload → Draft → Review → Publish.

## Voraussetzungen

- WordPress Application Password in `.env` (siehe Setup)
- NAS gemountet (`/Volumes/daten`)
- Zugriff auf Content-Quellen (Dropbox und/oder OneDrive)

## Setup

1. WordPress Application Password erstellen:
   - `raphaeljans.ch/wp-admin` → Benutzer → Profil → Application Passwords
   - Name: `JANS AI Hub`
   - Passwort kopieren

2. In `~/Developer/jans-ai-hub/.env` eintragen:
   ```
   WP_BASE_URL=https://raphaeljans.ch
   WP_USER=<benutzername>
   WP_APP_PASSWORD=<application-password>
   ```

3. Auth testen:
   ```bash
   bash /Volumes/daten/jans-ai-hub/plugins/website-content/scripts/wp-test-auth.sh
   ```

## Struktur

```
plugins/website-content/
├── README.md              ← Diese Datei
├── config/
│   ├── wordpress-api.md   ← API-Endpoints und Auth
│   ├── taxonomy-map.md    ← Taxonomie-IDs (eingefroren)
│   ├── design-system.md   ← Fonts, Farben, CSS
│   └── content-sources.md ← Pfade zu Content-Quellen
├── templates/
│   └── project-page.md    ← Gutenberg-Block-Template
└── scripts/
    ├── wp-test-auth.sh    ← Auth-Test
    ├── wp-upload-image.sh ← Bild-Upload
    └── wp-create-project.sh ← Projekt erstellen
```

## Verwendung

- Skill: Wird automatisch getriggert bei "neues Projekt hochladen", "Website Content" etc.
- Command: `/website` fuer Schnellzugang
- Agent: `website-content` fuer komplexe Workflows
