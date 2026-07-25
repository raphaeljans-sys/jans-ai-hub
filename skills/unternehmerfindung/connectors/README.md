# Geo-Connector — Unternehmerfindung (v2)

Setzt einen **Anker** am Bauplatz (Geocoding) und rankt Unternehmer je Gewerk nach
**Vertrauens-Tier (Bewaehrung) UND Naehe**. Ranking-Motor des Skills `unternehmerfindung`.

## Zwei Modi

| Modus | Wann | Was |
|---|---|---|
| **DB** (Default) | Standard | Rankt die **bewaehrten JANS-Firmen** (Stammdaten + verifizierte R2-Kontakte) fuer das Gewerk nach Tier × Naehe. Der Treffsicherheits-Hebel. |
| **POI** (`--poi`) | DB zu duenn | Discovery fremder Firmen via Karte (OSM/Google). |
| **`--fill`** | DB + Auffuellen | DB-Modus, dann POI-Discovery anhaengen bis `--limit`. |

Ranking im DB-Modus: Tier 1 verifiziert/empfohlen → Tier 2 stammliste/beworben → Tier 3
vorschlag, innerhalb jedes Tiers nach Luftlinie. Status `warnung` = ausgeschlossen (separat gelistet).

## Verwendung

```bash
node geo-maps.mjs --gewerk sanitaer --adresse "Ankerstrasse 7, Zuerich" --plz 8004
node geo-maps.mjs --bkp 230 --adresse "Bahnhofstrasse 1, Zuerich" --plz 8001 --fill --limit 12 --json
node geo-maps.mjs --gewerk gipser --poi --lat 47.3747 --lon 8.5255   # POI-Discovery, Anker als Koordinate
```

### Flags
| Flag | Bedeutung |
|---|---|
| `--gewerk <slug>` / `--bkp <nr>` | Gewerk (Slug-Liste unten) bzw. direkt per BKP |
| `--query <text>` | freier Suchbegriff — **nur Google + POI-Modus** |
| `--adresse <text>` | Bauplatz-Adresse, wird geocodiert (= Anker setzen) |
| `--lat` / `--lon` | Anker direkt als Koordinate |
| `--plz <nnnn>` | erwartete PLZ — **wichtig**, fixiert den Anker (gleichnamige Strassen!) |
| `--poi` / `--fill` | POI-Discovery / DB + Auffuellen |
| `--radius <km>` | POI-Startradius (Default 5; expandiert bis ≥3, max 25) |
| `--limit <n>` | max. Resultate (Default 10) |
| `--json` | Ausgabe als JSON (fuer Agent/Harness) |
| `--no-cache` | Geocoding-Cache umgehen |

### Gewerk-Slugs
`sanitaer · heizung · lueftung · elektro · gipser · maler · schreiner · zimmermann ·
bodenleger · plattenleger · maurer · dachdecker · spengler · metallbau · fenster · kueche · gartenbau`

## Backends (auto-detect)

1. **OpenStreetMap** (Default, kein Key) — Nominatim (mit PLZ-Bounding-Box-Validierung) +
   Overpass. Gratis. Im DB-Modus werden Firmen oft nur **Ort-genau** verortet (Stadtzentrum),
   weil Nominatim Firmennamen schlecht aufloest → Distanzen grob.
2. **Google Places** — **automatisch** sobald ein Key auffindbar ist. Verortet Firmen
   **praezise** (echte Distanz-Treffsicherheit) + Rating.

### Key-Aufloesung (Reihenfolge)
1. `GOOGLE_MAPS_API_KEY` aus der Umgebung
2. `~/Developer/jans-ai-hub/.env`
3. `/Volumes/daten/jans-ai-hub/secrets/google-maps.env`  ← **stationsuebergreifend** (NAS)

### Key setzen (einmal, gilt ueberall)
```bash
bash set-google-key.sh "AIza...DEIN_KEY"   # schreibt in NAS-secret -> alle Stationen sofort
bash set-google-key.sh --status            # zeigt, wo ein Key gesetzt ist
```
Key anlegen: console.cloud.google.com → Projekt → APIs *Geocoding API* + *Places API*
aktivieren → Anmeldedaten → API-Schluessel. Key im Console einschraenken (API + IP + Tageslimit).

## Cache
Geocoding-Resultate werden in `.geocache.json` (hier, also auf NAS) gespeichert — alle
Stationen profitieren. Erster Lauf je Gewerk dauert (OSM-Rate-Limit ~1 req/s), danach instant.

## Grenzen / Rules
- Distanz = **Luftlinie** (Haversine), keine Fahrstrecke.
- Bewaehrung/Beziehung schlaegt Naehe (Tier-Sortierung) — entspricht `wissensbasis/ranking-kriterien.md`.
- Kontaktdaten ohne R2-Beleg bleiben **"vor Versand verifizieren"** (Rule `identifikatoren-verifizieren`,
  nichts erfinden). Verifiziere via macOS-Kontakte/Web bevor etwas rausgeht.
