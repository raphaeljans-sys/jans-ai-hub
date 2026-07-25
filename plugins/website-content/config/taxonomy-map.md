# Taxonomie-Map — raphaeljans.ch

Stand: 2026-04-12
Quelle: WordPress REST API `/wp-json/wp/v2/{taxonomy}`

## Format

| Term | Slug | ID |
|---|---|---|
| Interior | interior | 61 |
| Object | object | 60 |
| Project | project | 64 |
| Sketch | sketch | 63 |
| Writing | writing | 62 |

## Intervention

| Term | Slug | ID |
|---|---|---|
| Conversion | conversion | 58 |
| Extension | extension | 57 |
| New Build | new-build | 59 |

## Phase

| Term | Slug | ID |
|---|---|---|
| Competition | competition | 45 |
| Completed | completed | 41 |
| Planning | planning | 43 |
| Study | study | 44 |
| Under Construction | under-construction | 42 |

## Scale

| Term | Slug | ID |
|---|---|---|
| <1000m² | 1000m2 | 19 |
| 1000-5000m² | 1000-5000m2 | 18 |
| 5000-20000m² | 5000-20000m2 | 17 |
| >=20000m² | 20000m2 | 65 |

## Typology

| Term | Slug | ID |
|---|---|---|
| Block | block | 50 |
| Campus | campus | 48 |
| Infrastructure | infrastructure | 47 |
| Pavilion | pavilion | 49 |
| Point Building | point-building | 46 |
| Tower | tower | 51 |

## Use

| Term | Slug | ID |
|---|---|---|
| Cultural | cultural | 34 |
| Education | education | 36 |
| Healthcare | healthcare | 38 |
| Hospitality | hospitality | 39 |
| Mixed Use | mixed-use | 35 |
| Office | office | 37 |
| Residential | residential | 40 |

## Hinweise

- IDs sind stabil solange keine Taxonomie-Terme geloescht/neu erstellt werden
- Bei neuen Termen: `curl -s "https://raphaeljans.ch/wp-json/wp/v2/{taxonomy}" | jq`
- Taxonomien werden als Arrays im POST-Body uebergeben: `"format": [64]`
