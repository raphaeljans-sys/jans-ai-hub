# BKP 2017 — Verbindliche Referenz für JANS

Dieser Ordner enthält die **vollständige Baukostenplan-2017-Liste (CRB)** als zentrale, geteilte Referenz für alle JANS-Workstations.

## Inhalt

| Datei | Zweck |
|---|---|
| `BKP-2017-CRB.pdf` | Original-PDF von CRB (Quelle für Verifikation) |
| `BKP-2017-Liste.md` | Durchsuchbare Markdown-Version aller Codes (für Claude-Lookups) |
| `README.md` | Diese Datei |

## Verbindlich für

- **Offerten** (eingehend wie ausgehend)
- **Submissionen / Devis** (Skill `ausschreibung`)
- **Offertenprüfung** (Skill `offertenpruefung`)
- **Kostenschätzungen** (Skill `kostenschaetzung`)
- **Bauprogramme / Terminplanung** (Skill `terminplanung`)
- **Brandschutz-Factsheets** (Skill `brandschutz`)
- **Honorarofferten** (Skill `honorarberechnung-sia102`)

## Regel

Bei jeder BKP-Nummern-Angabe **IMMER** in `BKP-2017-Liste.md` nachschlagen.
NIE eine BKP-Nummer erfinden, raten oder aus dem Kontext schätzen.

Wenn ein Code nicht eindeutig zuordenbar ist:
1. Hauptgruppe (0-9) bestimmen
2. Zweistellige Gruppe (z.B. 22 = Rohbau 2)
3. Dreistellige Position (z.B. 221 = Fenster, Aussentüren, Tore)
4. Subposition mit Punkt (z.B. 221.4 = Fenster aus Aluminium)

Wenn der gesuchte Code nicht existiert → Rückfrage an User, nicht raten.

## Geltungsbereich

- **Standard für JANS**: BKP 2017
- **Nicht verwenden**: ältere Versionen (BKP 95, eBKP-H ohne Rückfrage)
- **eBKP-H** (Elementbasierter Baukostenplan Hochbau): nur auf explizite Anforderung, separate Referenz nötig

## Aktualisierung

Sollte CRB eine neue BKP-Version veröffentlichen:
1. Neue PDF hier ablegen (alte umbenennen mit Datum-Suffix)
2. `BKP-2017-Liste.md` neu generieren / ergänzen
3. Rule `bkp-2017-referenz.md` ggf. anpassen (Versionsnummer)

## Quelle

CRB Schweizerische Zentralstelle für Baurationalisierung
https://www.crb.ch

Original-PDF abgelegt am: 2026-05-21
