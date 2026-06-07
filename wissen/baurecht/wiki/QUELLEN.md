---
titel: Amtliche Quellen — Register
status: established
aktualisiert: 2026-06-07
---

# QUELLEN — Amtliche Gesetzes-Volltexte

Register der amtlichen, konsolidierten Gesetzes-Volltexte, die als **erste
Konsultationsstufe** des Baurecht-Harness in `raw/` liegen. Es sind amtliche Erlasse
und damit **gemeinfrei nach Art. 5 URG** — frei speicher- und zitierbar. Bezogen und
aktuell gehalten mit dem Connector `skills/baurecht/connectors/recht-ch.mjs`.

## Warum amtliche Volltexte zuerst

Baurechtliche Berichte müssen auf dem **geltenden Wortlaut** fundieren — nicht auf
Kommentarliteratur (die ist urheberrechtlich geschützt und wird höchstens als *Fundstelle*
zitiert, nie reproduziert). Der konsolidierte Gesetzestext ist die verlässlichste Quelle
(Stufe 1 der Quellen-Hierarchie in der KB-`CLAUDE.md`).

## Bestand (Stand 2026-06-07)

| Kürzel | Erlass | Ordnung | Datei in `raw/` | Ebene |
|---|---|---|---|---|
| PBG | Planungs- und Baugesetz | LS 700.1 | `260607_amtlich_zh_pbg.md` | Kanton ZH |
| ABV | Allgemeine Bauverordnung | LS 700.2 | `260607_amtlich_zh_abv.md` | Kanton ZH |
| BVV | Bauverfahrensverordnung | LS 700.6 | `260607_amtlich_zh_bvv.md` | Kanton ZH |
| BBV I | Besondere Bauverordnung I | LS 700.21 | `260607_amtlich_zh_bbv1.md` | Kanton ZH |
| BBV II | Besondere Bauverordnung II | LS 700.22 | `260607_amtlich_zh_bbv2.md` | Kanton ZH |

Im Connector-Register zusätzlich verfügbar (nicht im Seed): VErV (LS 700.4),
SGV (LS 700.3), VKaB (LS 700.11) — bei Bedarf mit `--erlass <KEY>` ziehen.

## Lücken / offen

- **Bund (Fedlex):** RPG (SR 700), RPV (SR 700.1), USG, GSchG etc. — Fedlex liefert den
  Volltext nur JS-gerendert; Auto-Fetch ist eine v2-Aufgabe (Manifestations-Auflösung via
  SPARQL/Filestore). Bis dahin Bundesrecht über die SharePoint-Gesetzessammlung
  (`PL - 02_Recht_Norm/01_Gesetze/01_Bund/`) oder fedlex.admin.ch direkt.
- **Kanton SZ:** noch nicht im Connector-Register (Schwyzer Erlasssammlung hat eigene
  Bezugskette) — bei Bedarf ergänzen.
- **Gemeinde-BZO:** projektspezifisch, nicht zentral pflegbar — pro Fall über GIS-ZH /
  Gemeinde beziehen.

## Aktualisieren

```bash
# Kern-Set neu ziehen (stets geltende Fassung):
node skills/baurecht/connectors/recht-ch.mjs --seed

# Register anzeigen / einzelnen Erlass ziehen:
node skills/baurecht/connectors/recht-ch.mjs --list
node skills/baurecht/connectors/recht-ch.mjs --erlass VErV --erlass SGV
```

Die Dateinamen tragen das Abrufdatum (JJMMTT) und das Frontmatter die `fassung_datei`
(amtliche Versionsbezeichnung) + `abgerufen` — so ist jederzeit nachvollziehbar, welcher
Stand zitiert wurde.
