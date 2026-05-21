# JANS AI Hub — References (Geteilte Fachreferenzen)

Dieser Ordner enthält verbindliche Fachreferenzen, die von mehreren Skills, Agents und Rules genutzt werden.

## Konzept

Im Unterschied zu Skill-spezifischen `referenzen/`-Ordnern (z.B. `skills/baurecht/referenzen/`) liegen hier **skill-übergreifende Standards**, die in mehreren Workflows konsistent angewendet werden müssen.

## Speicherort

`/Volumes/daten/jans-ai-hub/references/` (NAS, geteilt zwischen MacBook Pro und Mac Mini)

## Aktive Referenzen

| Ordner | Inhalt | Verbindlich für |
|---|---|---|
| `bkp-2017/` | Baukostenplan BKP 2017 (CRB) — alle Codes | Alle Skills die mit Bau-Kostenstrukturen arbeiten |

## Wann hier ablegen vs. in `skills/<skill>/referenzen/`

- **Hier (`references/`)**: Standard wird von ≥2 Skills/Agents/Rules genutzt
- **In `skills/<skill>/referenzen/`**: Nur für einen einzelnen Skill relevant (z.B. Goldstandard-Beispiel-Offerte für `offertenpruefung`)

## Integration

Referenzen werden über die zugehörige **Rule** (in `rules/`) verbindlich gemacht. Beispiel:

- `rules/bkp-2017-referenz.md` → verweist auf `references/bkp-2017/BKP-2017-Liste.md`

Die Rule wird in `CLAUDE.md` per `@`-Import eingebunden und ist damit in jeder Konversation aktiv.
