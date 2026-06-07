---
name: oereb-schwyz
description: >-
  OEREB-Auszug Kanton Schwyz — der schnellste, validierte Weg zum amtlichen Auszug aus dem
  Kataster der oeffentlich-rechtlichen Eigentumsbeschraenkungen (OEREB) fuer eine Parzelle im
  Kt. Schwyz. Loest das Problem der vielen verschiedenen SZ-GIS-Plattformen: es gibt EINEN
  amtlichen, login-freien PDF-Endpunkt hinter dem WebGIS map.geo.sz.ch. Connector
  connectors/geo-sz.mjs zieht den Auszug per Parzellennummer (empfohlen, eindeutig) oder EGRID.
  Diesen Skill verwenden wenn der Benutzer fragt: "OEREB Schwyz", "OEREB-Auszug SZ", "OEREB
  Kanton Schwyz", "Eigentumsbeschraenkungen Schwyz", "Kataster Auszug Schwyz", "ÖREB Wangen/
  Einsiedeln/Schwyz/March/...", "GIS Schwyz Auszug", "map.geo.sz.ch Auszug", "Parzelle SZ
  abfragen", "EGRID Schwyz", oder eine Parzelle/Adresse im Kanton Schwyz nennt und den OEREB-/
  Grundstueck-Auszug braucht. Schwester-/SZ-Spezialisierung des Skills planungsgrundlagen
  (dort der allgemeine Geodaten-Harness + ZH-Connector geo-zh.mjs).
---

# OEREB-Auszug Kanton Schwyz

Der **schnellste Weg** zum amtlichen OEREB-Auszug fuer eine Parzelle im Kanton Schwyz —
ohne sich durch die vielen SZ-GIS-Plattformen zu klicken.

## Kernfakt (validiert 07.06.2026, Fall 2304 Reckholdern)

Der Kanton Schwyz betreibt **einen** amtlichen OEREB-Service hinter dem WebGIS
`map.geo.sz.ch`. Der direkte, **login-freie** PDF-Endpunkt lautet:

```
https://map.geo.sz.ch/oereb/extract/pdf?EGRID=<EGRID>
```

Verantwortliche Stelle: **Amt fuer Geoinformation, Postfach 1213, 6431 Schwyz**
(sz.ch/geoportal). Der Auszug ist kostenlos (Gebuehr nur bei beglaubigter Ausfertigung).

### Welche SZ-Plattform wofuer?
| Plattform | URL | Zweck |
|---|---|---|
| **WebGIS / ÖREB-Kataster SZ** | `map.geo.sz.ch` | interaktiv klicken; dahinter der PDF-Service |
| **PDF-Endpunkt (Maschine)** | `map.geo.sz.ch/oereb/extract/pdf?EGRID=` | **der schnelle Weg** — direkt PDF |
| Bundesportal | `cadastre.ch/de/oereb-online-abfrage` | Einstieg ueber alle Kantone (leitet auf SZ um) |
| ÖREB-Handbuch SZ | `ch-sz-geo.github.io/A094/oereb-handbuch.html` | technische Doku des SZ-Dienstes |

## Workflow

1. **Parzelle bestimmen.** Gemeinde + Grundstuecknummer (oder EGRID). Adresse geht auch,
   ist aber **unsicher** (siehe Fallgrube unten).
2. **EGRID + Auszug holen** mit dem Connector:
   ```bash
   node connectors/geo-sz.mjs --parzelle "Wangen 25" --oereb \
     --out "<Projekt>/01_Plaene/98_Grundlagen/KTSC_GIS" \
     --out "<...>/PL - 01 Kartenportale/OEREB-Auszug"
   ```
   Der Connector sucht die SZ-Parzelle (BFS-Filter 1301..1373), holt den EGRID eindeutig,
   zieht das PDF und benennt es auf die JANS-Konvention um.
3. **Ablage** standardmaessig in **beide** Orte: den Projektordner (SZ-Projekte: unter
   `01_Plaene/98_Grundlagen/KTSC_GIS`) **und** die buerofweite Bibliothek
   `PL - 01 Kartenportale/OEREB-Auszug`.
4. **Quittung** an den Benutzer: Parzelle, EGRID, BFS, Flaeche, Stand amtl. Vermessung,
   Ablageorte, Seitenzahl.

## ⚠️ Fallgrube: Adresse ≠ Parzelle

Die Adress-Geokodierung kann die **Hausnummer verfehlen** und auf die Nachbarparzelle
fallen. Im Fall Reckholdern lieferte "Bahnhofstrasse 27 Wangen" faelschlich **Parzelle 193**
statt der korrekten **Parzelle 25** (Label endete auf `#` = Hausnummer nicht aufgeloest).
- **Immer per `--parzelle "Gemeinde Nr"` arbeiten**, wenn die Grundstuecknummer bekannt ist.
- Bei `--adresse` warnt der Connector, wenn die Hausnummer unscharf ist — dann zwingend
  per Parzellennummer gegenpruefen, bevor ein Auszug verwendet wird.
- EGRID/Parzelle werden **nie erfunden** (Rule `identifikatoren-verifizieren`).

## Connector

`connectors/geo-sz.mjs` — Standalone Node (18+, globales `fetch`, keine Keys). Validierte Kette:

```
Gemeinde+Nr  --(api3.geo.admin.ch SearchServer, origins=parcel)-->  EGRID (+ BFS, SZ-Filter)
EGRID        --(map.geo.sz.ch/oereb/extract/pdf?EGRID=)-->          OEREB-Auszug (PDF)
```

| Flag | Bedeutung |
|---|---|
| `--parzelle "<Gemeinde> <Nr>"` | **empfohlen** — eindeutige Parzellensuche, SZ-BFS-Filter |
| `--gemeinde <name> --nr <n>` | gleiche Suche, getrennte Argumente |
| `--egrid <CH…>` | EGRID direkt (ueberspringt Suche) |
| `--adresse "<Str Nr Ort>"` `--plz <nnnn>` | Fallback ueber Geokodierung (Hausnummer-Warnung!) |
| `--oereb` | OEREB-PDF herunterladen |
| `--out <dir>` | Zielordner (mehrfach moeglich) |
| `--json` / `--quiet` | Ausgabesteuerung |

Dateiname (Connector benennt selbst um, da SZ-Server nur Timestamp liefert):
`Oereb-Auszug_<BFS>_<Parzelle>_<JJJJ-MM-TT>.pdf` — z.B. `Oereb-Auszug_1349_25_2026-06-07.pdf`.

## Verhaeltnis zu anderen Skills
- **`planungsgrundlagen`** — allgemeiner Geodaten-/Grundlagen-Harness (ZH-Connector
  `geo-zh.mjs`, vier PL-Domaenen). Dieser Skill ist die **SZ-Spezialisierung** fuer OEREB;
  der SZ-Connector liegt bewusst im selben `connectors/`-Ordner.
- **`baurecht`** — sobald aus dem Auszug rechtliche Wuerdigung wird (Zone, Abstaende,
  Bestandesschutz Kt. SZ): diese liefert die Grundlage, `baurecht` die Auslegung.
- **`machbarkeit` / `ankaufspruefung` / `behoerden-vorabklaerung`** — rufen diesen Skill als
  Vorstufe, um EGRID/OEREB/Zone fuer eine SZ-Parzelle zu beschaffen.

## Verbindliche Regeln
- EGRID/Parzelle nie erfinden, bei 0/mehrdeutigen Treffern Mensch fragen
  (`identifikatoren-verifizieren`).
- Echte Umlaute, Schweizer Hochdeutsch (`umlaute-konvention`).
- Sechsstellige/normierte Daten und Dateinamen (`dateinamen-konvention`).
- NAS ist kanonisch; nach Aenderungen committen/pushen (`sync-kanonische-quelle`).
