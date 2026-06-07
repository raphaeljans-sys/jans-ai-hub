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

## Kommunale BZO (Kanton ZH)

Der Kanton hält die amtlichen kommunalen Bau- und Zonenordnungen zentral im
ÖREB-Dokumentdienst `oerebdocs.zh.ch/getDoc?docid=<n>` (gemeinfrei). Die `docid` je
Gemeinde steht im ÖREB-Auszug und wird automatisch aufgelöst.

**Bestand (Stand 2026-06-07): 44 ZH-Gemeinden** als BZO-Volltext in `raw/`
(`*_amtlich_zh_bzo-<gemeinde>.md`). Massgebliches Register: `BZO_ZH` im Connector bzw.
`recht-ch.mjs --list`.

- **Stadt/Kern:** Zürich (BZO 2016, docid 6), Langnau am Albis (5501)
- **Zürichsee-Ufer:** Zollikon, Küsnacht, Erlenbach, Herrliberg, Meilen, Uetikon am See,
  Männedorf, Stäfa, Hombrechtikon, Kilchberg, Rüschlikon, Thalwil, Oberrieden, Horgen,
  Wädenswil, Richterswil
- **Agglo-Ring:** Adliswil, Zumikon, Maur, Egg, Fällanden, Greifensee, Schwerzenbach,
  Volketswil, Dübendorf, Wallisellen, Opfikon, Kloten, Wangen-Brüttisellen, Bassersdorf,
  Dietikon, Schlieren, Urdorf, Uitikon, Birmensdorf, Bonstetten, Stallikon, Regensdorf,
  Rümlang, Oberengstringen, Unterengstringen, Weiningen

Jede docid wurde über den ÖREB-Auszug verifiziert; bei Fusionsgemeinden (z.B. Wädenswil)
per Adress-Anker auf die richtige Gemeinde-Bauordnung geprüft (nicht die fusionierte
Alt-Gemeinde). Aktualisieren: `recht-ch.mjs --all-bzo`.

**Neue ZH-Gemeinde hinzufügen** (nur eine Adresse nötig):

```bash
# 1) EGRID aus einer Adresse der Gemeinde holen:
node skills/planungsgrundlagen/connectors/geo-zh.mjs --adresse "<Strasse Nr Ort>" --quiet
# 2) BZO-docid aus dem ÖREB-Auszug ermitteln:
node skills/baurecht/connectors/recht-ch.mjs --resolve-bzo --egrid <EGRID>
# 3) docid ins Register BZO_ZH im Connector eintragen, dann:
node skills/baurecht/connectors/recht-ch.mjs --bzo <gemeinde-key>
```

## Kommunale Baureglemente (Kanton SZ)

Kt. Schwyz hält die kommunalen Baureglemente in **OEREBlex**
(`oereblex.sz.ch/api/attachments/<id>`); die attachmentId je Gemeinde stammt aus dem
SZ-ÖREB-Auszug (`map.geo.sz.ch/oereb/extract/json?EGRID=`). Register `BAUREGL_SZ` im
Connector. Bestand (Stand 2026-06-07):

| Gemeinde | OEREBlex att | Datei in `raw/` | Status |
|---|---|---|---|
| Wangen (SZ) | 2544 | `260607_amtlich_sz_baur-wangen-sz.md` | Volltext |
| Freienbach | 3036 | `260607_amtlich_sz_baur-freienbach.md` | Volltext (Basis 1994; Änderungen att 3037/3449/3896 separat) |
| Feusisberg | 3915 | `260607_amtlich_sz_baur-feusisberg.md` | Volltext (Stand 2022) |
| Wollerau | 4086 | `260607_amtlich_sz_baur-wollerau.md` | **OCR-Pendenz** — Bild-PDF ohne Textebene; OCR (ocrmypdf/tesseract) nötig |

## Offen / Pendenzen

- **Wollerau (SZ):** OEREBlex-PDF ist ein Scan ohne Textebene → OCR nachziehen
  (ocrmypdf installieren, dann erneut extrahieren).
- **Freienbach (SZ):** SZ-OEREBlex führt Baureglement als Basis + separate
  Änderungsdokumente (keine konsolidierte Einzel-PDF). Bei Detailfragen Änderungen
  att 3037/3449/3896 mitlesen.
- **Kanton SG (Rapperswil-Jona, Schmerikon):** OEREBlex-Host `oereblex.sg.ch` existiert,
  aber der SG-ÖREB-M2M-Extrakt-Endpunkt liegt hinter der Viewer-SPA (`oereb.geo.sg.ch`)
  und ist noch nicht gefunden → attachmentId je Gemeinde noch offen. Sobald der
  SG-Extrakt-Endpunkt steht, analog SZ ins Register `BAUREGL_SG` aufnehmen.

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
