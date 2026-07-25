---
description: "Website-Content Schnellzugang. Zeigt verfuegbare Projekte, startet Upload-Workflow, oder prueft Website-Status. Verwenden mit: /website"
---

# /website — Website Content Command

## Aktionen

Wenn der User `/website` eingibt, biete folgende Optionen an:

### 1. Neues Projekt hochladen
Starte den vollstaendigen Upload-Workflow aus dem `website-content` Skill.

### 2. Projekte auflisten
Zeige alle publizierten Projekte auf raphaeljans.ch:
```bash
source ~/Developer/jans-ai-hub/.env
curl -s "https://raphaeljans.ch/wp-json/wp/v2/project?per_page=100&_fields=id,title,slug,status" | python3 -m json.tool
```

### 3. Website-Status pruefen
Teste die WordPress-Verbindung:
```bash
bash /Volumes/daten/jans-ai-hub/plugins/website-content/scripts/wp-test-auth.sh
```

### 4. Content-Quellen anzeigen
Liste verfuegbare Projektordner in Dropbox und OneDrive:
```bash
echo "=== Dropbox ==="
ls ~/Library/CloudStorage/Dropbox/WEBSEITE\ JANS/01\ CONTENT\ Agent/02_prozess\ PROJEKTE/

echo ""
echo "=== OneDrive ==="
ls ~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/WE\ -\ 01\ Content/_build\ by\ Wordpress/ | head -20
```

## Kontext

Lies bei Bedarf die Plugin-Konfiguration:
- `/Volumes/daten/jans-ai-hub/plugins/website-content/config/`
- `/Volumes/daten/jans-ai-hub/plugins/website-content/templates/`
