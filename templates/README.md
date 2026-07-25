# JANS Templates

Vorlagen für Dokumente, Reports und Outputs. Werden von Skills und Agents referenziert.

## Vorhandene Templates

| Datei | Skill / Zweck | Output |
|---|---|---|
| `dokument-layout/build-document.template.js` | Generische Layout-Vorlage (siehe Rule `dokument-layout-standard.md`) | DOCX im JANS-Layout-Standard |
| `pendenzenliste-build.template.js` | Skill `pendenzenliste` — Pendenzenliste mit Übersicht je Fachplanung, Personen-Legende, Detailteil blockartig | DOCX |
| `protokoll-build.template.js` | Skill `protokoll` — Sitzungsprotokoll mit Stamm, Personen-Legende, themenbasierten Sektionen, Termine sechsstellig | DOCX |

## Verwendung

```bash
# 1. Vorlage nach /tmp kopieren
cp /Volumes/daten/jans-ai-hub/templates/protokoll-build.template.js /tmp/build_<projekt>_protokoll.js

# 2. INHALT-Sektion befüllen (Stamm-Daten, Sektionen, Termine)

# 3. Generieren
NODE_PATH=$(npm root -g) node /tmp/build_<projekt>_protokoll.js

# 4. PDF konvertieren
soffice --headless --convert-to pdf /tmp/<output>.docx

# 5. In OneDrive-Output ablegen
cp /tmp/<output>.* "~/Library/CloudStorage/.../30 JANS AI HUB OUTPUT/<Projekt>/..."
```

## Konventionen

- Schrift: Cambria 11 pt
- Papierformat: A4 mit 20 mm Rändern
- `keepNext: true` + `keepLines: true` auf allen Titeln (H1, H2, H3, Gruppen-Header, Pendenz-Titel)
- `keepLines: true` auf Bullet-Items
- Footer: Verfasser links, Seitenzahl rechts
- Umlaute durchgehend (ä/ö/ü), nie ae/oe/ue
- DOCX immer mit PDF zusammen erzeugen
- Dateiname YYMMDD_Thema (siehe Rule `dateinamen-konvention.md`)

Neue Templates hier ablegen und in der jeweiligen Skill-Definition referenzieren.
